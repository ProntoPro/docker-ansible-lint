FROM python:3.6-slim-stretch

RUN pip install --upgrade pip && \
    pip install ansible && \
    pip install ansible-lint==3.4.23

ADD docker-entrypoint.sh /opt

WORKDIR /ansible

ENTRYPOINT ["/opt/docker-entrypoint.sh"]
