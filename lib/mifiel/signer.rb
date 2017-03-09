module Mifiel
  class Signer < Mifiel::Base
  puts 'Intento 5'
  get :all, "/signers"  
  get :find, "/signers/:id"
  put :save, "/signers/:id"
  post :create, "/documents/:id/signers"

  puts "id es #{id}"
  end
end
