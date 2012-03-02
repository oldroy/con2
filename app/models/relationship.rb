class Relationship < ActiveRecord::Base
  belongs_to :assembly
  belongs_to :child, :class_name => "Assembly"
end
