class Election
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  has_many :politicians, class_name: 'PoliticianToElection', inverse_of: :election

  validates :name, presence: true
end
