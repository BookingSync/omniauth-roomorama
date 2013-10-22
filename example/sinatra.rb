require 'rubygems'
require 'bundler'

Bundler.setup :default, :development, :example
require 'sinatra'
require 'omniauth'
require 'omniauth-roomorama'

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :roomorama, ENV['ROOMORAMA_KEY'], ENV['ROOMORAMA_SECRET']
end

get '/' do
  <<-HTML
<ul>
<li><a href='/auth/roomorama'>Sign in with Roomorama</a></li>
</ul>
HTML
end

get '/auth/:provider/callback' do
  content_type 'text/plain'
  request.env['omniauth.auth'].to_hash.inspect
end

get '/auth/failure' do
  content_type 'text/plain'
  params[:message]
end
