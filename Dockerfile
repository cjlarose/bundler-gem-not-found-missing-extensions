FROM ruby:2.7.0

WORKDIR /usr/src/app

RUN bundle config --global frozen 1

COPY Gemfile Gemfile.lock ./
COPY vendor ./vendor

RUN bundle config set path '.bundle'
RUN bundle install --local

COPY entrypoint.rb ./

ENV GEM_HOME "/usr/src/app/.bundle/ruby/2.7.0"
CMD ["ruby", "entrypoint.rb"]
