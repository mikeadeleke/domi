class Place < ActiveRecord::Base
  validates :address, presence: true
  validates :address, length: { minimum: 10 } 
  validates :description, presence: true
  validates :description, length: { minimum: 10 } 
  validates :eta, presence: true
  validates :eta, numericality: { only_integer: true }
  validates :rent_per_month, presence: true
  validates :rent_per_month, numericality: { only_integer: true }
  validates :bedrooms, presence: true
  validates :bedrooms, numericality: { only_integer: true }
  validates :available, presence: true
  validates :additional, presence: true
  validates :student, presence: true
  
  belongs_to :user
  mount_uploader :photo, PhotoUploader
end
