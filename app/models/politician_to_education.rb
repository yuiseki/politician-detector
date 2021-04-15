class PoliticianToEducation
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :education, inverse_of: :politicians
  belongs_to :politician, inverse_of: :educations

  validates :education, presence: true
  validates :politician, presence: true
end
