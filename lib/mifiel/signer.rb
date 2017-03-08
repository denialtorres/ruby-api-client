module Mifiel
  class Signer < Mifiel::Base
    put :add, '/documents/:id/signers'
    def self.create
      puts "estas en signer"
    end
    
    
  end
end
