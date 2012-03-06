class Relationship < ActiveRecord::Base
  belongs_to :assembly
  belongs_to :child, :class_name => "Assembly"
  belongs_to :parent, :class_name => "Assembly" , :foreign_key => :assembly_id
end
