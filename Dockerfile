FROM python:3.6-slim-stretch

RUN pip install --upgrade pip && \
    pip install ansible==2.4.3.0 && \
    pip install ansible-lint==3.4.20

ADD docker-entrypoint.sh /opt

WORKDIR /ansible

ENTRYPOINT ["/opt/docker-entrypoint.sh"]
