class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end 
  
  def new
    @product = Product.new
  end 
  
  def create
    @product = Product.new(allowed_params)
    
    if @product.save 
      redirect_to products_path 
    else 
      render 'new'
    end
  end
  
  def edit
    @product = Product.find(params[:id])
  end 
  
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(allowed_params)
      redirect_to products_path 
    else
      render 'new' 
    end
  end 
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end
  
  private
    def allowed_params
      params.require(:product).permit(:name, :category, :price, :description, :ingredient)
    end 
end
