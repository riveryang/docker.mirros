
FROM redis:alpine

RUN touch /redis.conf

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

CMD [ "/entrypoint.sh" ]
