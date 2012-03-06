class Assembly < ActiveRecord::Base
  belongs_to :plan
  belongs_to :package
  has_many :line_items
  has_many :relationships
  has_many :children, :through => :relationships
  has_many :parents, :through => :relationships

  scope :available, :conditions => { :used => false, :atype => "sub" }


  def total
    line_items.to_a.sum { |item| item.total }
  end

  def child_total
    children.to_a.sum { |child| child.total }
  end

  def assembly_total
    total + child_total
  end




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
