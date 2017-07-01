class ProductsController < ApplicationController

  def index
    @newest_products = Product.newest
    @usa_products = Product.from_usa
    @most_reviewed = Product.most_reviewed[0]
  end

  def showall
    @products = Product.all
    @url = request.path_info
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "( product saved )"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    prodName = @product.name
    @product.destroy
    flash[:notice] = "( Product '#{prodName}' deleted )"
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :country)
  end

end
