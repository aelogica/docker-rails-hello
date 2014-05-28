FROM quay.io/ae_nestor/ruby

MAINTAINER Nestor G. Pestelos, Jr. "nestor@aelogica.com"

RUN mkdir -p /data/hello
ADD ./ /data/hello
RUN /data/hello/bin/setup

EXPOSE 3000

CMD /data/hello/bin/start
