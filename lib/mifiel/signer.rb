module Mifiel
  class Signer < Mifiel::Base
  puts 'Intento 5'
  get :all, "/signers"  
  get :find, "/signers/:id"
  put :save, "/signers/:id"
  post :create, "/documents/:id/signers"

  def self.add_signers(args)
    puts 'estas en la nueva funcion'
  end
end
