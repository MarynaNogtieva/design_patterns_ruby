class ChatClient
  attr_accessor :encryptor
  def initialize(encryptor)
    @encryptor = encryptor
  end
  
  def send(message)
    encryptor.encrypt

    puts "Sending encrypted message"
  end
end
