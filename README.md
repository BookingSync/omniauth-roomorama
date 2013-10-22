# OmniAuth Roomorama

## IMPORTANT
This project is now [managed by Roomorama directly](https://github.com/roomorama/omniauth-roomorama)


---
This is an OmniAuth 1.0 strategy for authenticating to Roomorama. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Roomorama Application's Registration Page](https://roomorama.com/oauth_clients/new).

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-roomorama'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Roomorama` is simply a Rack middleware. Read the OmniAuth 1.0 docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :roomorama, ENV['ROOMORAMA_KEY'], ENV['ROOMORAMA_SECRET']
end
```

## Supported Rubies

OmniAuth Roomorama is tested under 1.8.7, 1.9.2, 1.9.3, Ruby-head, Ruby Enterprise Edition, JRuby (1.8 and 1.9 mode) and Rubinius (1.8 and 1.9 mode).

[![CI Build
Status](https://secure.travis-ci.org/BookingSync/omniauth-roomorama.png)](http://travis-ci.org/BookingSync/omniauth-roomorama)

## License

Copyright (c) 2012 Sébastien Grosjean and [BookingSync.com](http://www.bookingsync.com)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
