library(RODBC)
impala <- odbcConnect("Impala")
sqlQuery(impala,"
insert into opd.t181228_schedule_task_test_ljx
select 
    1 as x1
    -- ,'测试中文' as chi
    -- ,'测试正则化' as repex
    ,current_timestamp() as inserttime

         ")
