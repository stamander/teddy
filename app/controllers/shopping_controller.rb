class ShoppingController < ApplicationController
  def index
  end

  def create

  def new
    @shopping = Shopping.new
    @images = Images.new
  end


end
