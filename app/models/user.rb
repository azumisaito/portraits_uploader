class User < ApplicationRecord
  has_one_attached :portrait
  has_many :articles
end
