class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  def ingredient_split(ingredients)

  end
end
