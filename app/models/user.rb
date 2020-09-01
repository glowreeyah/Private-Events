class User < ApplicationRecord
  has_many :created_events, foreign_key: 'creator', class_name: 'Event'
  has_many :invitations, foreign_key: :attendee_id
  has_many :attended_events, through: :invitations

  validates :name, presence: true, uniqueness: true, length: {minimum:3}
  validates :email, presence: true, uniqueness: true, length: {minimum:3}

  scope :past, -> { where('date < ?', Date.today) }
  scope :future, -> { where('date >= ?', Date.today) }
end
