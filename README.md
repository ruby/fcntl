# Fcntl

Fcntl loads the constants defined in the system's `<fcntl.h>` C header file, and used with both the fcntl(2) and open(2) POSIX system calls.

 * To perform a fcntl(2) operation, use IO::fcntl.
 * To perform an open(2) operation, use IO::sysopen.

The set of operations and constants available depends upon specific operating system.  Some values listed below may not be supported on your system.

See your fcntl(2) man page for complete details.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fcntl'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fcntl

## Usage

Open `/tmp/tempfile` as a write-only file that is created if it doesn't
exist:

```ruby
require 'fcntl'

fd = IO.sysopen('/tmp/tempfile',
                Fcntl::O_WRONLY | Fcntl::O_EXCL | Fcntl::O_CREAT)
f = IO.open(fd)
f.syswrite("TEMP DATA")
f.close
```

Get the flags on file `s`:

```ruby
m = s.fcntl(Fcntl::F_GETFL, 0)
```

Set the non-blocking flag on `f` in addition to the existing flags in `m`.

```ruby
f.fcntl(Fcntl::F_SETFL, Fcntl::O_NONBLOCK|m)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ruby/fcntl.


## License

The gem is available as open source under the terms of the [2-Clause BSD License](https://opensource.org/licenses/BSD-2-Clause).
