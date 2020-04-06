class Product
  attr_accessor :id, :name

  def initialize(id, name)
    @id = id
    @name = name
  end

  def to_s
    return "Product id=#{id}, name=#{name}"
  end
end