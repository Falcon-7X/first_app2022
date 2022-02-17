class Topic < ApplicationRecord
  validates_presence_of :title
  has_rich_text :description
  has_many :comments, dependent: :destroy
end
