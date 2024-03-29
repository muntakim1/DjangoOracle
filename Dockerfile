FROM oraclelinux:7-slim

EXPOSE 8000

WORKDIR /opt/

ADD . /opt/

ARG release=19
ARG update=5

RUN yum -y update && yum -y upgrade &&  yum -y install oracle-release-el7 && yum-config-manager --enable ol7_oracle_instantclient && \
     yum -y install oracle-instantclient${release}.${update}-basic oracle-instantclient${release}.${update}-devel oracle-instantclient${release}.${update}-sqlplus && \
     rm -rf /var/cache/yum && \
     echo /usr/lib/oracle/${release}.${update}/client64/lib > /etc/ld.so.conf.d/oracle-instantclient${release}.${update}.conf && \
     ldconfig && yum install -y python3 python3-pip && pip3 install virtualenv

ENV PATH=$PATH:/usr/lib/oracle/${release}.${update}/client64/bin

CMD ["source", "./start.sh"]


