CREATE OR REPLACE FUNCTION hgdb_version()
RETURNS TEXT AS $$
DECLARE
BEGIN
  return '瀚高数据库安全版V4.5.7';
END;
$$
LANGUAGE PLPGSQL;