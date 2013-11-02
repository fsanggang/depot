class Product < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
  validates :image_url, presence: true, allow_blank: true, format: {
    with: /.(gif|jpg|png)/,
    message: "must be a URL for a .gif, .jpg, or .png image."
  }
end
