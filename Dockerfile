FROM dockerfile/ruby

RUN gem install s3_website

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless

VOLUME ["/website", "/config"]

WORKDIR /website

CMD s3_website push --config-dir /config --site /website --verbose
