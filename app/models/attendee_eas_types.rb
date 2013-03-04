class AttendeeEasTypes < ActiveRecord::Base
  attr_accessible :attendee_id, :eas_types_id
  
  belongs_to :attendee
  belongs_to :payment
  belongs_to :eas_type

end
