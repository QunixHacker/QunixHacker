from typing import Optional
import os
import codecs
import sys
import pathlib
import io
import datetime

import sh
import traceback


class HiveJob:
    def __init__(
            self,
            sql_file,
            hive_conf_dict: Optional[dict] = None,
            _out=None,
            _err=None,
            debug=False,
    ):
        self.init_sql_file = str(sql_file)
        self.init_hive_conf_dict = hive_conf_dict
        self.init_out = _out
        self.init_err = _err

        self.debug = debug

        self.hive = sh.Command("hive")

    def _parse_dict_to_list(self) -> list:
        """
        参数字典
        :return:
        """
        if not self.init_hive_conf_dict:
            return []
        _list = []
        for k, v in self.init_hive_conf_dict.items():
            _list.extend(["--hiveconf", f"{k}={v}"])

        return _list

    def _prepare_args(self):
        _args = self._parse_dict_to_list()
        _args.extend(["-f", self.init_sql_file])
        return _args

    def _bake(self):
        _env_os = os.environ.copy()
        _env = {
            "HADOOP_USER_NAME": "model_user",
            "LC_ALL": "zh_CN.UTF-8",
            "LANG": "zh_CN.UTF-8",
        }
        _env.update(_env_os)
        self.hive_shortcut = self.hive.bake(self._prepare_args(), _env=_env)

    def run(self):
        if self.debug:
            print(datetime.datetime.now(), "HIVE_JOB", self.init_sql_file)

        self._bake()
        _out = (
            codecs.open(self.init_out, mode="w+", encoding="utf-8")
            if self.init_out and self.is_path(self.init_out)
            else (
                self.init_out
                if self.init_out and self.is_io(self.init_out)
                else sys.stdout
            )
        )
        _err = (
            codecs.open(self.init_err, mode="w+", encoding="utf-8")
            if self.init_err and self.is_path(self.init_err)
            else (
                self.init_err
                if self.init_err and self.is_io(self.init_err)
                else sys.stderr
            )
        )
        try:
            self.hive_shortcut(_out=_out, _err=_err)
            # rc: sh.RunningCommand = self.hive_shortcut(_out=_out, _err=_err)
            # _proc: sh.OProc = rc.process
        except Exception as ex:
            traceback.print_exc()
        finally:
            if _out is not sys.stdout and not self.is_io(_out):
                _out.close()
            if _err is not sys.stderr and not self.is_io(_err):
                _err.close()

    @classmethod
    def is_path(cls, o):
        return isinstance(o, str) or isinstance(o, pathlib.Path)

    @classmethod
    def is_io(cls, o):
        return isinstance(o, io.StringIO) or isinstance(o, io.BytesIO)


if __name__ == '__main__':
    HiveJob(sql_file="0xF0.gist.hql", _out=str("0xF0.gist.log")).run()
