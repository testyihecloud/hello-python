FROM index.alauda.cn/library/python:2.7-alpine

WORKDIR /opt

RUN apk --no-cache add bash && pip install Flask --trusted-host pypi.douban.com -i http://pypi.douban.com/simple
ADD app.py /opt/

EXPOSE 8080
CMD python /opt/app.py
