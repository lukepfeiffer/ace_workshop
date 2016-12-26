class Workshop < ActiveRecord::Base
  scope :pending, -> {where("publish_date > ?", Date.today)}
  scope :published, -> {where("publish_date < ?", Date.today)}
  scope :archived, -> {where(publish_date: nil)}
end
