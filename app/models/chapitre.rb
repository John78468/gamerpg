class Chapitre < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true

  validates :choice, presence: true, numericality: { only_integer: true }
  validates :consequence, presence: true, numericality: { only_integer: true }
  belong_to :user
  validates :user_id, presence: true
end
