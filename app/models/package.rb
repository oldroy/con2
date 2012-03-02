class Package < ActiveRecord::Base
  belongs_to :plan
  has_many :assemblies
end
