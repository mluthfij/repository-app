class Repo < ApplicationRecord
    belongs_to :user
    has_many :folders, dependent: :destroy
    has_many :items, dependent: :destroy
end
