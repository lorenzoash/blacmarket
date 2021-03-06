class Order < ApplicationRecord
  after_initialize :set_defaults
  has_many :line_items, dependent: :destroy
  before_save :set_subtotal
  belongs_to :user


  def subtotal
    line_items.collect {|line_item| line_item.valid? ? (line_item.unit_price*line_item.quantity) : 0 }.sum
  end

  def total_quantity
    line_items.collect {|line_item| line_item.valid? ? line_item.quantity : 0 }.sum
  end

  private

  def set_subtotal
    self[:subtotal] = subtotal
  end


  def set_defaults
      self.paid = false if self.paid.nil?
  end
end