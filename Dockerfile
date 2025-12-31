FROM shanemcc/docker-omsa:latest

ADD --chmod=755 https://github.com/krallin/tini/releases/download/v0.19.0/tini /sbin/tini

ADD --chmod=755 https://github.com/nickadam/exec-api/releases/download/v1.0.0/exec-api /sbin/exec-api

ADD docker-entrypoint.sh /

ADD racadm-secret /sbin/

RUN ln -s /usr/lib64/libssl.so.3 /usr/lib64/libssl.so

ENTRYPOINT ["tini", "/docker-entrypoint.sh"]

CMD ["exec-api"]
