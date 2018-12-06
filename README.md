# qrystal

This is a query (SQL) builder for [Crystal Language](https://crystal-lang.org)

## Installation

1. Add the dependency to your `shard.yml`:
```yaml
dependencies:
  qrystal:
    github: hadihammurabi/qrystal
```
2. Run `shards install`

## Usage

```crystal
require "qrystal"

# create object of Qrystal class
query = Qrystal.new

# call select() method
# with table name as parameter
# e. g. users
alluser = query.select("users")

# get as string
alluser = alluser.string
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/hadihammurabi/qrystal/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Hadi Hidayat Hammurabi](https://github.com/hadihammurabi) - creator and maintainer
