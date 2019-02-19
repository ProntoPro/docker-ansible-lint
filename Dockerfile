FROM python:3.7-slim-stretch

RUN pip install --upgrade pip && \
    pip install ansible && \
    pip install ansible-lint==4.1.0

ADD docker-entrypoint.sh /opt

WORKDIR /ansible

ENTRYPOINT ["/opt/docker-entrypoint.sh"]
