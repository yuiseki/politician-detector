class PoliticianToElection
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :election, inverse_of: :politicians
  belongs_to :politician, inverse_of: :elections
  has_many :manifests, inverse_of: :election

  validates :election, presence: true
  validates :politician, presence: true
end
