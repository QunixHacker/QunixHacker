import datetime
import pathlib
import codecs

"""
bash
pip install luigi==3.0.2
https://luigi.readthedocs.io/
"""
import luigi
from luigi.contrib.hive import HivePartitionTarget

HIVE_DB = "model"
DATE_FMT = "%Y-%m-%d"
__current_file__ = pathlib.Path(__file__)
__current_dir__ = __current_file__.parent
__current_dir_sql__ = __current_dir__ / "sql"

ETL_DATE_SINCE = "2020-11-04"


class DailyMixin:

    etl_date = luigi.Parameter()
    # region properties
    @property
    def etl_dt(self):
        return datetime.datetime.strptime(self.etl_date, DATE_FMT)

    @property
    def day_before_etl_date(self) -> datetime.datetime:
        return self.get_some_days_before(days=1)

    @property
    def day_before_etl_date_str(self):
        return self.day_before_etl_date.strftime(DATE_FMT)

    def get_some_days_before(self, days=1):
        assert days >= 0
        return self.etl_dt - datetime.timedelta(days=days)

    # endregion


class HiveFileQueryTask(luigi.contrib.hive.HiveQueryTask):

    sql_file = luigi.Parameter()

    def query(self):
        with open(str(self.sql_file), mode="r", encoding="utf-8") as fr:
            value = fr.read()
            return value


class HiveFileQueryDailyTask(HiveFileQueryTask, DailyMixin):
    def hiveconfs(self):
        _dict = super().hiveconfs()
        _dict.update({"etl_date": self.etl_date})
        return _dict


##### usage
class EtlUserHomeWorkTaskPart(HiveFileQueryDailyTask):
    sql_file = luigi.Parameter(
        default=str(__current_dir_sql__ / "etl_user_homework_part.sql")
    )
    school_level = luigi.Parameter()

    etl_subject = luigi.Parameter()

    @property
    def table_name_mapped(self):
        return "adm.adm_student_done_homework_record"


        raise ValueError("not suporrted")

    def hiveconfs(self):
        _dict = super(EtlUserHomeWorkTaskPart, self).hiveconfs()
        _dict.update(
            {
                "etl_date": self.etl_date,
                "etl_date_since": self.get_some_days_before(180).strftime("%Y-%m-%d"),
                "school_level": self.school_level,
                "etl_subject": self.etl_subject
            }
        )
        return _dict


class EtlUserHomeworkTask(luigi.Task):
    etl_date = luigi.Parameter()
    school_level = luigi.Parameter()

    def requires(self):
        return [
            EtlUserHomeWorkTaskPart(etl_date=self.etl_date, school_level=self.school_level, etl_subject=subject)
            for subject in ["ENGLISH", "CHINESE", "MATH"]
        ]

    def output(self):
        return HivePartitionTarget(
            database=HIVE_DB,
            table="sl_sq_user_homework",
            partition={"dt": self.etl_date, "school_level": self.school_level},
        )


if __name__ == "__main__":
    luigi.build([EtlUserHomeworkTask(etl_date="2021-05-24", school_level="1")])
    # luigi.run()