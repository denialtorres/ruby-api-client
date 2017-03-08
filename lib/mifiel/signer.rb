module Mifiel
  class Signer < Mifiel::Base
    put :add, '/documents/:id/signers'
    def self.create
      puts "estas en signer"
      rest_request = RestClient::Request.new(
        url: "#{Mifiel.config.base_url}/documents/#{id}/signers/",
        method: :post,
      )
      req = ApiAuth.sign!(rest_request, Mifiel.config.app_id, Mifiel.config.app_secret)
      req.execute
    end
    
    
  end
end
