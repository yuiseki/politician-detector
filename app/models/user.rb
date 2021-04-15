class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword
  include ActiveModel::SecureToken
  has_secure_password
  has_secure_token
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String
  field :token, type: String

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :token, uniqueness: true

  index({ email: 1 }, { unique: true })
  index({ token: 1 }, { unique: true })

end
