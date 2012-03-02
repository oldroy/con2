class Component < ActiveRecord::Base
  belongs_to :plan
  has_many :line_items
end
