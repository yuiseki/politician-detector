class Education
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  has_many :politicians, class_name: 'PoliticianToEducation', inverse_of: :education

  validates :name, presence: true
end
