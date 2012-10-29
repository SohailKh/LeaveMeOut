use Rack::Static, :urls => ["/stylesheets", "/images", "/ 
javascripts", "/crap.html", "/google6c597b2b8599ad99.html"], :root => "site" 

use Rack::Static, :urls => [/./], :root => "site" 


run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}