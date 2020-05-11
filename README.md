# Bookstore Server
> Backend for Bookstore application - Jobsity Application Test

## Development

### Docker environment

This application has been developed using `docker` to build the development environemtn. If you use this fuctionality, you will run:

```
docker build -t bookstore .
```

then, run `docker run --rm bookstore bin/setup` to initialize the database and bundler. After this, run the following command to expose the port and start the application:

```
docker run -itP bookstore
```

You can find the exposed port with `docker ps`. After that, you are good to go!

### Local environment

If you don't use Docker or you want to use another environment, you can run the application by following these steps:

You will need Ruby 2.6.1 and SQLite 3 installed. (You can find SQLite installation instructions here: https://www.sqlite.org/index.html)

1. Install bundler: `gem install bundler`

2. Install remaining dependencies: `bundle install`

3. Run `bundle exec rails db:setup` to create the database and seed it on development

4. Run `bundle exec rails server` to start the server

### Tests

You can run test suit by using `bundle exec rake test` command

### Endpoints

You can test the API endpoints by using Postman (https://www.postman.com/) or a web browser. To see a list with every endpoint, you can run `bundle exec rake routes`. Below is an example of the `/books/search` :POST endpoint to search for specific books by title, isbn or both:

1. Open Postman

2. On the input bar below `Untitled Request`, select `Post` and type in `localhost:[port exposed on Docker or 3000]/books/search` and add the `Params` on the option below

PS: this will only work with permitted parameters (title or isbn). Any other param will return an empty array

### Notes

There is a rate-limit on Requests by IP. The limit is 30 requests in 60 seconds. If you need to change it, the configuration can be found on `/config/initializers/rack_attack.rb` . You can change limit or period.