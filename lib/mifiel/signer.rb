module Mifiel
  class Signer < Mifiel::Base
    require 'uri'
    require 'net/http'

    put :add, '/documents/:id/signers'
    def self.create
      puts "estas en signer"
      # rest_request = RestClient::Request.new(
      #   url: "#{Mifiel.config.base_url}/documents/#{id}/signers/",
      #   method: :post,
      # )
      # req = ApiAuth.sign!(rest_request, Mifiel.config.app_id, Mifiel.config.app_secret)
      # req.execute
      params = { 'email' => 'test@mifiel.com', 'tax_id' => 'AAA000AAA0' }
      x = Net::HTTP.post_form(URI.parse('https://app-stageex.mifiel.com/api/v1/documents/7e4f0ec4-9668-4cc2-a585-351cd0bf6313/signers'), params)

      puts x.body
    end
    
    
  end
end
