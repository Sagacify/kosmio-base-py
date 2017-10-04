FROM python:3.6.2-alpine

RUN apk add --update curl gcc g++
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip3 install -U pip \
        numpy==1.13.3 \
        boto3==1.4.4 \
        flake8-quotes==0.9.0 \
        flake8==3.3.0 \
        Flask==0.12 \
        pylint==1.6.5 \
        pytest==3.0.7 \
        pytest-cov==2.4.0 \
        pytest-watch==4.1.0 \
        sagaconfig==0.0.4 \
        sagalogger==0.3.4
