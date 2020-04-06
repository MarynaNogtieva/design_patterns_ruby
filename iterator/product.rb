class Product
  attr_accessor :id, :name

  def intialize(id, name)
    @id = id
    @name = name
  end

  def to_s
    return "Product id=#{id}, name=#{name}"
  end
end