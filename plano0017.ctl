load data 
CHARACTERSET WE8ISO8859P1
infile 'D:\TRANSACCIONES\PLANO0017.TXT' "str '\r\n'"
append
into table TRANSACCIONES
fields terminated by ';'
OPTIONALLY ENCLOSED BY '"' AND '"'
trailing nullcols
           ( TIPOMOV CHAR(10) "TRIM(:TIPOMOV)",
             OPERACI,
             NUMDOC CHAR(12) "TRIM(:NUMDOC)",
             FECHAMOV DATE  "mm/dd/yyyy",
             CENORI CHAR(12) "TRIM(:CENORI)",
             CENDES CHAR(3) "TRIM(:CENDES)",
             CODPRO,
             UNICON CHAR(2) "TRIM(:UNICON)",
             PRECIO,
             NOMPRO CHAR(4000) "TRIM(:NOMPRO)",
             CANUNI,
             CANKIL "TO_NUMBER(:CANKIL,'99999.999')",
             AU_USUARIO CHAR(10) "TRIM(:AU_USUARIO)",
             AU_FECHA DATE  "mm/dd/yyyy",
             AU_HORA CHAR(10) "TRIM(:AU_HORA)",
             OBS01 CHAR(120) "TRIM(:OBS01)",
             OBS02 CHAR(120) "TRIM(:OBS02)",
             TRANSP CHAR(10) "TRIM(:TRANSP)",
             DOMICILIO CHAR(10) "TRIM(:DOMICILIO)",
             ZONA CHAR(7) "TRIM(:ZONA)"
           )
