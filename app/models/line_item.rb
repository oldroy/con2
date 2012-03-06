class LineItem < ActiveRecord::Base
  belongs_to :component
  belongs_to :assembly

  def total
    component.unit_cost * quantity
  end
end
