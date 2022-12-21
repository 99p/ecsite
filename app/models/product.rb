class Product < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :description
    validates :price
    validates :stock
    validates :image
  end
  # カラム名 あたかもproductsテーブルにimageカラムが存在するかのように扱える
  has_one_attached :image
end