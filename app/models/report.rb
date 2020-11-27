class Report < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :EventDay
    belongs_to_active_hash :MemberName
end
