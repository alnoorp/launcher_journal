class CategoriesController < ApplicationController

  respond_to :html

  def index
    @categories = Category.all
    @category = Category.new
  end

  def new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to :back, notice: 'Category was successfully created.'
    else
      render action: 'new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :url, :submitter)
  end

end
