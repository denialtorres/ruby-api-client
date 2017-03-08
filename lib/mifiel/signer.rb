module Mifiel
  class Signer < Mifiel::Base
  put :add, '/documents/:id/signers'

    def self.create
      puts "estas en signer"
      rest_request = RestClient::Request.new(
        url: "#{Mifiel.config.base_url}/documents/291a9989-992f-44b1-9a37-8eff350d644c/signers",
        method: :post,
        params: { email: 'correo@prueba.com' },
        ssl_version: 'SSLv23'
      )
      req = ApiAuth.sign!(rest_request, Mifiel.config.app_id, Mifiel.config.app_secret)
      req.execute
    end
  end
end
