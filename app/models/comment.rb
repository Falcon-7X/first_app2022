class Comment < ApplicationRecord
  belongs_to :topic
  broadcasts_to :topic
end
