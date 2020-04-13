class ChatClient
  # This clas has more than a one responsibility - encrypting and sending message
  # It's going to be hard to add new types of encryption and maintain the code.
  attr_accessor :encryption_algorythm

  def initialize(encryption_algorythm)
    @encryption_algorythm = encryption_algorythm
  end
  
  def send(message)
    if(encryption_algorythm=="DES")
      puts "Encrypting message using DES"
    elsif(encryption_algorythm=="AES")
      puts "Encrypting message using AES"
    else
      raise RuntimeError, "Unsupported encryption algorithm"
    end

    puts "Sending encrypted message"
  end
end