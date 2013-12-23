class EntriesController < ApplicationController
  # before_action :set_entry, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @entries = Entry.all.order('created_at DESC')
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      redirect_to @entry, notice: 'Entry was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
      redirect_to root_path, notice: 'Entry was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :description, :category_id, :url, :submitter)
  end
end
