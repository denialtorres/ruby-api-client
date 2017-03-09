module Mifiel
  class Signer < Mifiel::Base
  puts 'estas en la nueva vida'
  get :all, "/signers"  
  get :find, "/signers/:id"
  put :save, "/signers/:id"
  post :create, "/documents/291a9989-992f-44b1-9a37-8eff350d644c/signers"

  puts 'judios raros'
  end
end
