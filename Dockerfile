FROM telegrammessenger/proxy

COPY entrypoint.sh /x-run.sh
RUN chmod u+x /x-run.sh

CMD ["/x-run.sh"]
