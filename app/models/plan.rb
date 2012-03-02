class Plan < ActiveRecord::Base
  has_many :components
  has_many :packages
  has_many :assemblies
end
