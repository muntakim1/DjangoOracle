FROM oraclelinux:7-slim

WORKDIR /opt/

ARG release=18
ARG update=5

ADD . /opt/

RUN yum -y update && yum -y upgrade &&  yum -y install oracle-release-el7 && yum-config-manager --enable ol7_oracle_instantclient && \
     yum -y install oracle-instantclient${release}.${update}-basic oracle-instantclient${release}.${update}-devel oracle-instantclient${release}.${update}-sqlplus && \
     rm -rf /var/cache/yum && \
     echo /usr/lib/oracle/${release}.${update}/client64/lib > /etc/ld.so.conf.d/oracle-instantclient${release}.${update}.conf && \
     ldconfig && yum install -y python3 python3-pip && pip3 install -r requirements.txt

ENV PATH=$PATH:/usr/lib/oracle/${release}.${update}/client64/bin

CMD ["sqlplus", "-v"]

EXPOSE 81
