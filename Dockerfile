FROM debian:stretch

RUN apt-get update && apt-get install -y \
        curl \
        python3 \
        python3-numpy && \
    curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | python3

RUN pip3 install -U pip \
        boto3==1.4.2 \
        flake8-quotes==0.8.1 \
        flake8==3.2.1 \
        Flask==0.11.1 \
        pylint==1.6.4 \
        pytest-cov==2.4.0 \
        pytest-watch==4.1.0 \
        sagaconfig==0.0.4 \
        sagalogger==0.3.3

WORKDIR /www/app
