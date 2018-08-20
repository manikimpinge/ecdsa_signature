require "ecdsa_signature/version"
require 'digest/sha2'
require 'ecdsa'
require 'securerandom'

module EcdsaSignature
  
  class Auth

  	def initialize(key)
		@key = key
	end

	def sign(data, key = '')
		@key ||= key 
		signature data
	end

	private

		def signature(data)
			digest = Digest::SHA2.digest(data)
			group = ECDSA::Group::Secp256k1
			sign = nil
			
			while sign.nil?
			  temp_key = 1 + SecureRandom.random_number(group.order - 1)
			  sign = ECDSA.sign(group, @key, digest, temp_key)
			end
			
			sign
		end

  end

end
