require 'ecdsa_signature'
require 'ecdsa'

describe EcdsaSignature::Auth do
   
   it "signature" do
   	key = 9966
   	address = "Mohali, Punjab"
   	ecdsa = EcdsaSignature::Auth.new key
    expect( ecdsa.sign(address) ).to be_a ECDSA::Signature
   end

end
