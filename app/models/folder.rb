class Folder < ApplicationRecord
  belongs_to :user
  belongs_to :repo
  belongs_to :subfolder, class_name: 'Folder', optional: true
  has_many :folders, foreign_key: 'subfolder_id', dependent: :destroy
end
