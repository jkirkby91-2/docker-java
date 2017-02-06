FROM jkirkby91/ubuntusrvbase:latest

MAINTAINER James Kirkby <jkirkby91@gmail.com>

RUN apt-get update && \
    apt-get install --no-install-recommends -y openjdk-8-jre-headless && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY confs/apparmor/java.conf /etc/apparmor/java.conf

CMD ["/usr/bin/java"]