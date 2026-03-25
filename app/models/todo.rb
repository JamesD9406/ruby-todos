class Todo < ApplicationRecord
  belongs_to :project

  scope :by_priority, -> { order(completed: :asc, priority: :desc)}
end
