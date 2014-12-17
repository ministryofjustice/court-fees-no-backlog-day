class FeeType < ActiveRecord::Base
  belongs_to :fee
  has_many :form_type
end
