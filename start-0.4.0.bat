SET PET_BUILD=0.4.0
SET DISTR=agent
SET ADMIN_ADDRESS=localhost:8090
SET AGENT_ID=Petclinic
SET START_PORT=8092
java -agentpath:%DISTR%/drill_agent.dll=drillInstallationDir=%DISTR%/,adminAddress=%ADMIN_ADDRESS%,agentId=%AGENT_ID%,buildVersion=%PET_BUILD%,logLevel=DEBUG -jar spring-petclinic-%PET_BUILD%.BUILD-SNAPSHOT.jar --server.port=%START_PORT%
