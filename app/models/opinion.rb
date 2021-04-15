class Opinion
  include Mongoid::Document
  include Mongoid::Timestamps
  field :text, type: String
  field :source, type: String

  belongs_to :politician, inverse_of: :opinions
end
