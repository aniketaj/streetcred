class Critique < ActiveRecord::Base

  belongs_to :giver, :class_name => "User", :foreign_key => "user_id"

  belongs_to :receiver, :class_name => "User", :foreign_key => "receiver_id"

  validates :metricone, :presence=>true
  validates :metrictwo, :presence=>true
  validates :metricthree, :presence=>true
  validates :metricfour, :presence=>true

end
