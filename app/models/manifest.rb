class Manifest
  include Mongoid::Document
  include Mongoid::Timestamps
  field :text, type: String
  field :source, type: String

  belongs_to :election, class_name: 'PoliticianToElection', inverse_of: :manifests
end
