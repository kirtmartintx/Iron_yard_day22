class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :patron

  scope :out, -> { where("checkin_at is NULL ")}

  def checked_out?
    checked_in.nil?
  end
end
