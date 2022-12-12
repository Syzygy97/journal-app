class Category < ApplicationRecord
  belongs_to :user
  has_many :tasks
  validates :name, :details, :user_id, presence: true
  validates :name, uniqueness: true
end
