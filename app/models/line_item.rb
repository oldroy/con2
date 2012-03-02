class LineItem < ActiveRecord::Base
  belongs_to :component
  belongs_to :assembly
end
