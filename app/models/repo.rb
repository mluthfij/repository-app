class Repo < ApplicationRecord
    belongs_to :user
    has_many :folders, dependent: :destroy
    has_many :items, dependent: :destroy
    validates :name, presence: true, length: { maximum: 150 }
    validates :body, length: { maximum: 350 }
end
