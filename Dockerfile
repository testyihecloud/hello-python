FROM index.alauda.cn/library/python:2.7-alpine

WORKDIR /opt

RUN pip install Flask --trusted-host pypi.douban.com -i http://pypi.douban.com/simple
ADD app.py /opt/

EXPOSE 8080
CMD python /opt/app.py
