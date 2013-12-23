class CategoriesController < ApplicationController
  before_action :set_category, only: [:destroy]

  respond_to :html

  def index
    @categories = Category.all
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to :back, notice: 'Category was successfully created.'
    else
      render action: 'index'
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to root_path, notice: 'Entry was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category.destroy
    redirect_to categories_path, notice: 'Category was successfully deleted.'
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :url, :submitter)
  end

end
