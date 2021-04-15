class PoliticianToPoliticalParty
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :political_party, inverse_of: :politicians
  belongs_to :politician, inverse_of: :political_parties

  validates :political_party, presence: true
  validates :politician, presence: true
end
