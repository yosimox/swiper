require 'webrick'
srv = WEBrick::HTTPServer.new({ 
	:DocumentRoot => './',
    :BindAddress => '127.0.0.1',
    :Port => 8000})
trap("INT"){ srv.shutdown }
srv.start