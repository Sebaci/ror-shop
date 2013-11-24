class ProductService
  class ProductCreateError < StandardError ; end

  attrib_reader :product
  def add_product(product)
    raise ProductCreateError.new unless product.save
  end
end