class Event < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :date, presence: true
  validates :description, presence: true, length: { maximum: 300 }

  belongs_to :creator, foreign_key: :creator_id, class_name: 'User'
  has_many :invitations, foreign_key: :attended_event_id
  has_many :attendees, through: :invitations, source: :attendee

  scope :past, -> { where('date < ?', Date.today) }
  scope :future, -> { where('date >= ?', Date.today) }
end
