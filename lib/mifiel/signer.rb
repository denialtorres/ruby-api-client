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
      # x = Net::HTTP.post_form(URI.parse('https://app-stageex.mifiel.com/api/v1/documents/7e4f0ec4-9668-4cc2-a585-351cd0bf6313/signers'), params)

      # puts x.body
      Mifiel::Signer.makesigner("/documents/291a9989-992f-44b1-9a37-8eff350d644c/signers", :post )
    end
    
    def self.makesigner(path, method, payload=nil)
      puts 'estas en makesigner'
      params = { email: 'correo@prueba.com' }
      rest_request = RestClient::Request.new(
        url: "#{Mifiel.config.base_url}/#{path}",
        method: method,
        ssl_version: 'SSLv23'
      )
      req = ApiAuth.sign!(rest_request, Mifiel.config.app_id, Mifiel.config.app_secret)
      req.execute
    end
  end
end
