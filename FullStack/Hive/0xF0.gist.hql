SET hive.exec.parallel=true;
SET hive.exec.parallel.thread.number=4;

/*
SET SLZ_ETL_DATE=123321;
SELECT ${hiveconf:SLZ_ETL_DATE};
*/
-- 0. Create
USE model;
CREATE TABLE IF NOT EXISTS `model.some_table_name`
(
    `column_1` string COMMENT 'id,column_1',
    `column_2` int  COMMENT '1->ENABLE;2->DISABLE;'
    --...
)
COMMENT 'Table Example'
PARTITIONED BY (`dt` string)
ROW FORMAT DELIMITED
    FIELDS TERMINATED BY '\t'
    LINES TERMINATED BY '\n'
STORED AS ORCFILE;
-- STORED AS TEXTFILE;

-- 1. VIEW
USE model;
DESC model.some_table_name;
SHOW PARTITIONS model.some_table_name;

-- 2.DELETE
-- 清空表，不删除
TRUNCATE TABLE model.some_table_name;
-- 删除表
DROP TABLE IF EXISTS model.some_table_name;
-- 删除分区
ALTER TABLE model.`model.some_table_name` DROP PARTITION (dt='${hiveconf:SLZ_DROP_DATE}');

-- 3.INSERT OVERT PARTITION
USE model;
INSERT OVERWRITE table model.some_table_name PARTITION (dt = '${hiveconf:etl_date}')
SELECT C1, C2, C3
FROM tmp.some_tmp_table_name
WHERE C1 = '${hiveconf:some_var}';

/*bash
  # usage
    hive --hiveconf etl_date=2021-01-01 --hiveconf some_var=123 -f some.hql
*/


-- 4. 一般表达式
WITH TMP_1 AS (
    SELECT C1, C2
    FROM model.T1
    WHERE 1 = 1
),
     TMP_2 AS (
         SELECT C3, C4
         FROM model.T2
         WHERE 2 = 2
     )
SELECT TMP_1.C1, TMP_2.C3
WHERE TMP_1.C2 = 1
  AND TMP_2.C4 = 3;

-- 5.list

SET etl_date=2020-10-01;
SET etl_list=('1','2');

SELECT '${hiveconf:etl_date}' ,'1' IN ${hiveconf:etl_list}, '3' IN ${hiveconf:etl_list}, 1 IN ${hiveconf:etl_list};