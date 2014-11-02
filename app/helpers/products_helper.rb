module ProductsHelper
  def author? product, user
    product.user.eql? user
  end
end
