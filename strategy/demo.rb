require_relative 'encryptor'
require_relative 'des_encryptor'
require_relative 'aes_encryptor'
require_relative 'chat_client'

class Demo
  def self.run
    aes = AesEncryptor.new
    des = DesEncryptor.new

    aes_chat_client = ChatClient.new(aes)
    aes_chat_client.send("Secret message aes") 

    des_chat_client = ChatClient.new(aes)
    des_chat_client.send("Secret message des") 
  end
end