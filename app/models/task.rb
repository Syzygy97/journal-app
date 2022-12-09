class Task < ApplicationRecord
  belongs_to :category
  validates :details, presence: true
  def toggle_completion
    update(completion: !completion)
  end

end
