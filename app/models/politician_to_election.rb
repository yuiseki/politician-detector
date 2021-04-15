class PoliticianToElection
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :election, inverse_of: :politicians
  belongs_to :politician, inverse_of: :elections

  validates :election, presence: true
  validates :politician, presence: true
end
