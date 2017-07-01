class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      flash[:notice] = "review added!"
      redirect_to products_path(@product)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:author, :body, :rating)
  end

end
