class PoliticalParty
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  has_many :politicians, class_name: 'PoliticianToPoliticalParty', inverse_of: :political_party

  validates :name, presence: true
end
