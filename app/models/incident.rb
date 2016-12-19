class Incident < ActiveRecord::Base
  validates :incident_time, presence: true
  validates :detection_time, presence: true
  validates :resolution_time, presence: true
  validates :closed_time, presence: true
  validates :severity, presence: true
  validates :faulted_service_id, presence: true
  validates :resolution, presence: true
end
