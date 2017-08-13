# Mojix

Mojix client for Ruby.

## Installation

Install yourself.

```ruby
gem install mojix
```

Or write your gemfile.

```ruby
gem 'mojix'
```

And then execute.

```sh
bundle install
```

## Usage

### Premise

Mojix-server is running.
See [mojix-server](https://github.com/mojix-server) repo.

```sh
docker run -it --rm -p 9661:9661 xmisao/mojix
```

### Tokenize by mojix-server example

```
require 'mojix'

mojix = Mojix::Client.new(host: 'localhost', port: 9661, mode: :normal)

mojix.tokenize_simply('もう何も恐くない') #=> ["もう", "何", "も", "恐く", "ない"]
```

`Mojix::Client.new` arguments are optional.
You can omit `host`, `mode`, `mode` arguments.

```
require 'mojix'

# Client initialize by default settings.
#   host: 'localhost'
#   port: 9661
#   mode: :normal
mojix = Mojix::Client.new 

mojix.tokenize_simply('もう何も恐くない') #=> ["もう", "何", "も", "恐く", "ない"]
```

Valid `mode` arugments.

* `:normal`
* `:search`
* `:extended`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/xmisao/mojix.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
