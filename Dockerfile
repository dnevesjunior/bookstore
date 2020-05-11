FROM ruby:2.6.1-alpine

RUN apk update && apk add build-base nodejs tzdata curl sqlite sqlite-dev sqlite-libs
RUN gem install bundler sqlite3

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 20 --retry 5

COPY . .

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]