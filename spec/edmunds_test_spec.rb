require 'edmunds_test'

describe EdmundsTest do 
   context "When looking up vehicle by make, model and year for honda accord 2001" do 
      it "should return all the styles for that model make year" do 
      	 et = EdmundsTest.new 
      	 response = et.connection.get do |req|
   			req.url '/api/vehicle/v2/honda/accord/2001'
   			req.params['fmt'] = 'json'
   			req.params['api_key'] = 'kt2qqdxnzx5us4b4tgsfjtvm'
		 end
		 puts response.body
		 resbody = response.body
		 expect(resbody['year']).to eq(2001)
		 resbody['styles'].each do |styles|
		 	expect(styles['submodel']['modelName']).to include('Accord')
		 end
      end
      
   end
end