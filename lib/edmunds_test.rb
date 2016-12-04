require 'faraday'
require 'faraday_middleware'
class EdmundsTest
	attr_accessor :connection
    def initialize 
      @connection = Faraday.new(:url => 'https://api.edmunds.com') do |conn|
 		   conn.response :json, :content_type => /\bjson$/
 		   conn.response :logger
 		   conn.adapter Faraday.default_adapter
		 end
    end   
end