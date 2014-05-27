FROM quay.io/ae_nestor/ruby

MAINTAINER Nestor G. Pestelos, Jr. "nestor@aelogica.com"

RUN mkdir -p /data/hello
ADD ./ /data/hello
RUN cd /data/hello && bundle install
RUN cd /data/hello && rake db:migrate

EXPOSE 3000
CMD cd /data/hello && bundle exec rails server
