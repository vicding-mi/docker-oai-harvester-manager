FROM openjdk:8
LABEL maintainer="Vic  Ding <qiqing.ding@dans.knaw.nl>"

RUN apt-get update && apt-get install maven git vim net-tools -y

RUN git clone -b 0.5.x https://github.com/vicding-mi/oai-harvest-manager.git /tmp/harvester_src

ADD log4j2.xml /tmp/harvester_src/src/main/resources/log4j2.xml
RUN cd /tmp/harvester_src && mvn clean install -Dmaven.test.skip=true

ADD do-harvester.sh /tmp/harvester_src/src/main/scripts/do-harvester.sh
ADD run-harvester2.sh /tmp/harvester_src/src/main/scripts/run-harvester2.sh

RUN chmod +x /tmp/harvester_src/src/main/scripts/*.sh
