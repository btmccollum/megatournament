FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /teamsnap-mega-tournament/backend
COPY Gemfile* ./
ENV BUNDLE_PATH /gems
RUN bundle install
COPY . /teamsnap-mega-tournament/backend

ENV ENTRYKIT_VERSION 0.4.0
RUN wget https://github.com/progrium/entrykit/releases/download/v${ENTRYKIT_VERSION}/entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && tar -xvzf entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && rm entrykit_${ENTRYKIT_VERSION}_Linux_x86_64.tgz \
  && mv entrykit /bin/entrykit \
  && chmod +x /bin/entrykit \
  && entrykit --symlink

ENTRYPOINT [ \
  "prehook", "ruby -v", "--", \
  "prehook", "/teamsnap-mega-tournament/backend/prehook", "--"]
