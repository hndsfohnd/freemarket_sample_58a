class TopController < ApplicationController
  def index
    @products = Product.limit(10)
  end
end