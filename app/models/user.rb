class User < ApplicationRecord
  has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'
  has_many :invitations, foreign_key: :attendee_id
  has_many :attended_events, through: :invitations, source: :attended_event

  validates :name, presence: true, uniqueness: true, length: { minimum: 4 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 11 }
end
