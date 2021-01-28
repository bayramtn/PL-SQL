SELECT 
   tablespace_name, 
   file_name,                  --DATABASE'DEKI TABLESPACE'LER(4)
   online_status,             --(UNDOTBS1,SYSAUX,SYSTEM,USERS)
   status,
   bytes / 1024/ 1024  MB    
FROM                        
   dba_data_files;
   
SELECT * FROM dba_data_files;



CREATE TABLESPACE DENEME
DATAFILE 'D:\DENEME.DBF' SIZE 20M;   --TABLESPACE OLUSTURMAK

ALTER DATABASE 
DATAFILE 'DENEME.DBF' RESIZE 30M;

DROP TABLESPACE DENEME;


CREATE TABLESPACE tbs1 
   DATAFILE 'tbs1_data.dbf' 
   SIZE 1m;
   
DROP TABLESPACE tbs1;

show sga;  --SYSTEM GLOBAL AREA BILGILERI


   





