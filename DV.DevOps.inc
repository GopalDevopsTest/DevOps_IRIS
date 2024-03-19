ROUTINE DV.DevOps [Type=INC]
 /*
 * DevOps include file
 */
 #define LCDEVOP(%system,%sub1) ^DV.DEVOPS(%system,%sub1)
 #define ENV	1
 #define GETSYSTEM(%system) $Case($$$UPPER(%system),"DEV":$$$DEV,"QA":$$$QA,:$$$PROD)
 #define DEV 1
 #define PROD 0
 #define QA 2