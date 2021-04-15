class Politician
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :wikidata_id, type: String
  field :twitter_id, type: String
  field :gender, type: String
  field :birth_day, type: Time
  field :birth_place, type: String
  has_many :opinions, inverse_of: :politician
  has_many :educations, class_name: "PoliticianToEducation", inverse_of: :politician
  has_many :elections, class_name: "PoliticianToElection", inverse_of: :politician
  has_many :political_parties, class_name: "PoliticianToPoliticalParty", inverse_of: :politician

  validates :name, presence: true

end
