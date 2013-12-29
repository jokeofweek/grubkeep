class Recipe < ActiveRecord::Base
  belongs_to :owner, class_name: User

  validates :owner, presence: true
  validates :name, presence: true, length: {maximum: 255}
end