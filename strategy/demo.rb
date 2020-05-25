require_relative 'encryptor'
require_relative 'des_encryptor'
require_relative 'aes_encryptor'
require_relative 'chat_client'
# https://refactoring.guru/design-patterns/strategy
# The Strategy pattern suggests that you take a class that does something specific in a lot of different ways and extract all of these algorithms into separate classes called strategies.

# The original class, called context, must have a field for storing a reference to one of the strategies. The context delegates the work to a linked strategy object instead of executing it on its own.
# In a strategy pattern we don't have a single state. Different behaviors are represented using different strategy objects.
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