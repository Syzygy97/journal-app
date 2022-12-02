class Category < ApplicationRecord
  has_many :tasks
  validates :name, :details, presence: true
end
