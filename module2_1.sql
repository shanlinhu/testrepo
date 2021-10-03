
Select DISTINCT LAUNCH_SITE from SPACEXTBL;

Select * from SPACEXTBL WHERE LAUNCH_SITE LIKE 'KSC%'LIMIT 5;

Select * from SPACEXTBL WHERE LAUNCH_SITE LIKE 'CCA%'LIMIT 5;

Select SUM(PAYLOAD_MASS__KG_) FROM SPACEXTBL WHERE CUSTOMER='NASA (CRS)';

SELECT AVG(PAYLOAD_MASS__KG_) FROM SPACEXTBL WHERE BOOSTER_VERSION ='F9 v1.1';

SELECT * FROM SPACEXTBL LIMIT 5;

SELECT MIN(DATE) FROM SPACEXTBL WHERE "Landing _Outcome"='Success (drone ship)';

SELECT MIN(DATE) FROM SPACEXTBL WHERE "Landing _Outcome"='Success (ground pad)';

SELECT MIN(DATE) FROM SPACEXTBL WHERE MISSION_OUTCOME='Success';

SELECT colname FROM syscat.columns WHERE tabname = 'SPACEXTBL';

SELECT BOOSTER_VERSION FROM SPACEXTBL
WHERE "Landing _Outcome" = 'Success (ground pad)'
AND PAYLOAD_MASS__KG_>4000 AND PAYLOAD_MASS__KG_<6000;

SELECT BOOSTER_VERSION FROM SPACEXTBL
WHERE "Landing _Outcome" = 'Success (drone ship)'
AND PAYLOAD_MASS__KG_>4000 AND PAYLOAD_MASS__KG_<6000;

SELECT COUNT(MISSION_OUTCOME) FROM SPACEXTBL
WHERE MISSION_OUTCOME='Success';

SELECT COUNT(MISSION_OUTCOME) FROM SPACEXTBL
WHERE MISSION_OUTCOME LIKE 'Failure%';

SELECT BOOSTER_VERSION FROM SPACEXTBL 
WHERE PAYLOAD_MASS__KG_=(SELECT MAX(PAYLOAD_MASS__KG_) FROM SPACEXTBL);

SELECT MONTH(DATE), BOOSTER_VERSION, LAUNCH_SITE FROM SPACEXTBL WHERE YEAR(DATE)=2017
AND "Landing _Outcome"='Success (ground pad)';

SELECT COUNT("Landing _Outcome"), LAUNCH_SITE FROM SPACEXTBL 
WHERE "Landing _Outcome" LIKE 'Success%'
AND DATE between DATE('2010-06-04') AND DATE('2017-03-20')
GROUP BY LAUNCH_SITE
ORDER BY COUNT("Landing _Outcome") desc;


SELECT max(Date) from SPACEXTBL;

select min(PAYLOAD_MASS__KG_) from SPACEXTBL;

SELECT * FROM SPACEXTBL where DAYNAME(DATE)='Friday' LIMIT 5;
