class Workshop < ActiveRecord::Base
  scope :pending, -> {where("publish_date > ?", Date.today)}
  scope :published, -> {where.not(publish_date: nil)}
  scope :archived, -> {where(publish_date: nil)}
end
