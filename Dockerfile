FROM ubuntu:20.04

RUN apt-get update

RUN apt-get install -y --no-install-recommends curl ca-certificates unzip systemd

RUN curl -L https://www.manageengine.com/network-monitoring/29809517/ManageEngine_OpManager_Free_64bit.bin --output ManageEngine_OpManager_Free_64bit.bin

RUN chmod a+x ManageEngine_OpManager_Free_64bit.bin

RUN ./ManageEngine_OpManager_Free_64bit.bin -i silent

RUN cd /opt/ManageEngine/OpManager/bin/ && sh linkAsService.sh

#RUN rm -f /opt/ManageEngine/OpManager/conf/database_params.conf

#VOLUME /opt/ManageEngine/OpManager/conf/database_params.conf

EXPOSE 80 8060

ENTRYPOINT /etc/init.d/OpManager start && tail -f /opt/ManageEngine/OpManager/logs/wrapper.log
