spec = Gem::Specification.new do |s|
  s.name                = "respond_bad_request"
  s.version             = "0.0.1.beta"
  s.summary             = "Rack middleware to respond 400 for request data decoding errors."
  s.description         = "Rack middleware to respond 400 for request data decoding errors."
  s.author              = "Aimee Barciauskas"
  s.email               = "abarciauskas@mdsol.com"
  s.homepage            = "http://github.com/AimeeRose/respond_bad_request.git"
  s.rubyforge_project   = "respond_bad_request"
  s.has_rdoc            =  false
  s.require_path        = "lib"

  s.add_dependency 'rack'
  s.add_dependency 'multi_json'
  s.add_development_dependency 'rspec'
end
