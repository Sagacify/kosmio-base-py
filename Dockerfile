FROM debian:stretch

RUN apt-get update && apt-get install -y \
        curl \
        python3 \
        python3-numpy && \
    curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | python3

RUN pip3 install -U pip \
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

WORKDIR /www/app
