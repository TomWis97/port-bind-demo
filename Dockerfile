FROM rhel
RUN yum install python -y
COPY example-application.py /example-application.py
RUN setcap CAP_NET_BIND_SERVICE=+eip /usr/bin/python
CMD python /example-application.py

