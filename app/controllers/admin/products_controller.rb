class Admin::ProductsController < ApplicationController
  
  layout 'admin_layout'
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  #GET /products
  def index
    @products = Product.all
  end

  #GET /product/new
  def new
    @products = Product.new
  end

  #GET /product/:id
  def show
  end

  #GET /product/:id/edit
  def edit
  end

  #POST /product
  def create
    @product = Product.new(params_product)
    if @product.save
      redirect_to admin_products_path
    else
      render :new
    end
  end

  #PUT/PATCH /product/:id
  def update
    if @product.update(params_product)
      redirect_to admin_products_path
    else
      render :edit
    end
  end

  #DESTROY /product/:id
  def edit
    @products.destroy
    redirect_to admin_products_path
  end

  private

  def params_product
    params.require(:product).permit(:description)
  end

  def set_product
    @product = Product.find(params[:id])
  rescue
    flash[:set_product_error] = "no pudo encontrar el registro #{params[:id]}"
  end

end
