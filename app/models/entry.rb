class Entry < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :description
  validates_presence_of :title

  def category_name
    if category_id == nil
      nil
    else
      category.name
    end
  end
end
