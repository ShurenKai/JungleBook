class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["JUNGLE_NAME"], password: ENV["JUNGLE_PASSWORD"]

  def show
    @count = Product.count(:id)
    @cate_count = Category.count
  end

  # def items_count
  #   @count = Product.count(:id)
  # end

  # def category_count
  #   @cate_count = Categories.count(:id)
  # end

end
