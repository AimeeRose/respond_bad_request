require 'respond_bad_request'
require 'multi_json'
require 'rspec'

describe Rack::RespondBadRequest do

  before do
    @app = lambda { |env| [200, { "Content-Type"=> "application/json" }, "}"] } 
    @middleware = Rack::RespondBadRequest.new(@app)
    @app.stub(:call) { raise MultiJson::DecodeError.new("Bad JSON") }
  end

  it "should respond 400" do
    @middleware.call(@app).should eq([400, {}, ["Bad JSON"]])
  end

end
