## README

### Things you may want to cover:

The `user_tracking` is user tracking application.

### Dependeces:
```
* Ruby (2.5.5)
* Rails (5.2.4)
* Bundler (2)
* MongoDB (6.1.0)
```

### Type tests in project:
 - RSpec: Rspec to all tests.
 - Rubocop: Checking the quality the code.

### Configuration

- Run docker Mongo
```
sudo docker run -d -p 27017:27017 -e AUTH=no mongo
```
- Run bundle and configuration database

```
bin/setup
```

### Run tests
```
bundle exec rspec
```

### Run server application
```
bundle exec rails s
```