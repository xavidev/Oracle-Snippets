SELECT sess.process, sess.status, sess.username, sess.schemaname, sql.sql_text
  FROM v$session sess,
       v$sql     sql
 WHERE sql.sql_id(+) = sess.sql_id and sess.username = 'ALM_BO'
   AND sess.type     = 'USER';