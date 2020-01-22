FROM python:3.8-slim-buster

RUN apt-get update && \
    apt-get install -y --no-install-recommends mime-support && \
    rm -rf /var/lib/apt/lists/*

COPY ./mime.types /usr/local/etc/

COPY ./requirements.txt ./

RUN pip install -r requirements.txt

ENTRYPOINT ["/usr/local/bin/aws"]
WORKDIR /app
ARG USER_ID=1000
ARG GROUP_ID=1000
RUN groupadd -g ${GROUP_ID} webdev
RUN useradd -rmu ${USER_ID} -g webdev webdev
USER webdev
