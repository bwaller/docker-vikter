require 'sinatra'
require 'fileutils'

unless File.exists? '/var/lib/vikt'
  Dir.mkdir '/var/lib/vikt'
end

get '/' do
  erb :form
end

post '/form' do
  open( '/var/lib/vikt/vikt.dat', 'a') { |f|
     f.puts params[:date]+' '+ params[:vikt]
  }
#  redirect back
end

