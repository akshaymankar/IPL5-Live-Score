require 'zlib'
require 'net/http'

#Edited and made into function after copying from http://pushandpop.blogspot.in/2011/05/handling-gzip-responses-in-ruby-nethttp.html
def openUriHandleGzip(site,path='/',port=80,debugFlag=false)
    if(debugFlag)
        debug = Proc.new{|msg| STDERR.puts "[#{Time.now.strftime('%Y-%m-%d %H:%M:%S')}] #{msg}" }
    else
        debug = Proc.new{|msg| {}}
    end
    page = nil
    http = Net::HTTP.new( site, port )
    req = Net::HTTP::Get.new( path, { "Accept-Encoding" => "gzip", "User-Agent" => "Mozilla/5.0 (Windows NT 6.2; rv:9.0.1) Gecko/20100101 Firefox/9.0.1" } )
    debug.call( "Performing HTTP GET request for (#{req.path})." )
    res = http.request( req )      
    debug.call( "Received HTTP Response Code (#{res.code})" )
    case res
    when Net::HTTPSuccess then  
      begin
        if res.header[ 'Content-Encoding' ].eql?( 'gzip' ) then
            debug.call( "Performing gzip decompression for response body." ) 
            sio = StringIO.new( res.body )
            gz = Zlib::GzipReader.new( sio )
            page = gz.read()      
            debug.call( "Finished decompressing gzipped response body." ) 
        else
            debug.call( "Page is not compressed. Using text response body. " )         
            page = res.body
        end
        rescue Exception
        debug.call( "Error occurred (#{$!.message})" )
        # handle errors
        raise $!.message
      end
    end

    page
end

