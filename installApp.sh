

# DB connection String
export CONNECTION_STRING="sys/hamza123@10.89.0.2:1521/XEPDB1"
export CONNECTION_STRING_SYS="sys/hamza123@10.89.0.2:1521/XEPDB1 as sysdba"

# Grants for non ADB install
sql $CONNECTION_STRING_SYS <<EOF
    GRANT EXECUTE ON SYS.DBMS_AQ TO SYSTEM WITH GRANT OPTION;
    GRANT EXECUTE ON SYS.DBMS_AQADM TO SYSTEM WITH GRANT OPTION;
    GRANT EXECUTE ON SYS.DBMS_CRYPTO TO SYSTEM WITH GRANT OPTION;
    GRANT EXECUTE ON SYS.DBMS_LOCK TO SYSTEM WITH GRANT OPTION;
    GRANT EXECUTE ON SYS.DBMS_REDEFINITION TO SYSTEM WITH GRANT OPTION;
    GRANT EXECUTE ON SYS.DBMS_RLS TO SYSTEM WITH GRANT OPTION;
    GRANT EXECUTE ON ORDS_METADATA.ORDS_ADMIN TO SYSTEM;
    GRANT SELECT ON SYS.DBA_SUBSCR_REGISTRATIONS TO SYSTEM WITH GRANT OPTION;
    exit
EOF

# Set Banner
sql $CONNECTION_STRING_SYS <<EOF
    begin
      apex_instance_admin.set_parameter(p_parameter => 'ENV_BANNER_LABEL'    , p_value => 'DOCKER | APEXSB-INSTALL | DB 23 | BUILD: 1 | COMMIT: COMMIT INFO');    
      commit;
    end;
    /
EOF

sql $CONNECTION_STRING_SYS <<EOF
    WHENEVER SQLERROR EXIT SQL.SQLCODE;
    create tablespace DATA datafile 'sb_tbs.dat' size 1G autoextend on next 1024M;
    @install.sql DATA TEMP SYSAUX
EOF

sql_return_code=$?

if [ $sql_return_code != 0 ]
then
    echo failed to install passmanager application
    exit $sql_return_code;
fi