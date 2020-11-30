class Report < ApplicationRecord
  belongs_to :user
  has_many :words

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :EventDay
    belongs_to_active_hash :Hope
end
