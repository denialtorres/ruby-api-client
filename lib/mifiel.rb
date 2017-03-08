require 'flexirest'

module Mifiel
  require 'mifiel/errors'
  autoload :Base, 'mifiel/base'
  autoload :Document, 'mifiel/document'
  autoload :Certificate, 'mifiel/certificate'
  autoload :Config, 'mifiel/config'
  autoload :Signer, 'mifiel/signer'

  BASE_URL = 'https://www.mifiel.com/api/v1'.freeze

  def self.config
    if block_given?
      yield(Mifiel::Config)
    else
      Mifiel::Config
    end
  end
end
