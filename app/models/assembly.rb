class Assembly < ActiveRecord::Base
  belongs_to :plan
  belongs_to :package
  has_many :line_items
  has_many :relationships
  has_many :children, :through => :relationships

  private
  def ensure_not_referenced_by_any_line_items
    if self.line_items.empty?
      return true
    else
      err.add(:base, 'Line Items Present.')
      return false
    end
  end

end
