SELECT
opname,
target,
ROUND( ( sofar/totalwork ), 4 ) * 100 Percentage_Complete,
start_time,
CEIL( time_remaining / 60 ) Max_Time_Remaining_In_Min,
FLOOR( elapsed_seconds / 60 ) Time_Spent_In_Min
FROM v$session_longops
WHERE sofar != totalwork;