class Incident < ActiveRecord::Base
  belongs_to :faulted_service, class_name: "Service"
  after_initialize :default_values

  validates :incident_time, presence: true
  validates :detection_time, presence: true
  validates :resolution_time, presence: true
  validates :closed_time, presence: true
  validates :severity, presence: true
  #validates :faulted_service, presence: true
  validates :resolution, presence: true

  scope :reviewed, -> { where(reviewed: true) }
  scope :not_reviewed, -> { where(reviewed: false) }

  def self.search(terms = "")
    sanitized = sanitize_sql_array(["to_tsquery('english', ?)", terms.gsub(/\s/, "+")])
    Incident.where("search_vector @@ #{sanitized}")
  end

  private

  def default_values
    self.reviewed ||= false
  end

  def reviewed!
    self.reviewed = true
    self.save!
  end
end
