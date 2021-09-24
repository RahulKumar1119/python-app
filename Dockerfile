FROM tiangolo/uwsgi-nginx-flask:python3.6

RUN  pip install redis

EXPOSE 80
 
ADD     /vote /app

CMD ["/usr/bin/supervisord"]
