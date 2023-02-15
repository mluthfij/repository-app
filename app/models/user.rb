class User < ApplicationRecord
  before_save { self.username = username.downcase }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :trackable ,authentication_keys: [:login]
         
  has_one_attached :avatar
  has_many :folders
  
  validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes },
  file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
  
  validates :username, presence: true, 
            uniqueness: { case_sensitive: false },
            length: { minimum: 1, maximum: 100 }
  validates :phone, presence: true, 
            uniqueness: { case_sensitive: false },
            length: { minimum: 12, maximum: 20 }
  validate :validate_username
  validate :validate_phone

  attr_writer :login

  def login
    @login || self.username || self.email || self.phone
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if (login = conditions.delete(:login))
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value OR lower(phone) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email) || conditions.has_key?(:phone)
      where(conditions.to_h).first
    end
  end

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def validate_phone
    if User.where(email: phone).exists?
      errors.add(:phone, :invalid)
    end
  end
end
