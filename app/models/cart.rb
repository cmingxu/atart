class Cart
  attr_accessor :line_items
  def initialize
    @line_items = []
  end

  def self.from_text(str)
    cart = Cart.new
    str.split(":").each do |s|
      cart.add_line_item LineItem.from_text(s)
    end
    cart
  end

  def add_line_item(li)
    l = self.line_items.select{|li| li.product_id == li.product_id }.first

    if l
      l.quantity += li.quantity
    else
      self.line_items << li
    end
  end

  def remove_line_item(li)
    l = self.line_items.select{|li| li.product_id == li.product_id }.first
    if li.quantity >= l.quantity
      self.line_items.delete(li)
    else
      l.quantity -= li.quantity
    end
  end

  def to_s
    self.line_items.map(&:to_s).join(";")
  end

  def empty
    self.line_items = []
  end

end

class LineItem
  attr_accessor :product_id, :quantity

  def initialize(product_id, quantity = 1)
    @product_id = product_id.to_i
    @quantity   = quantity.to_i
  end

  def price
    Product.find(@product_id).price * quantity.to_i
  end

  def product
    @product ||= Product.find(@product_id)
  end

  def self.from_text(str)
    LineItem.new(str.split(",")[0], str.split(",")[1])
  end

  def to_s
    "#{@product_id},#{@quantity}"
  end

end
