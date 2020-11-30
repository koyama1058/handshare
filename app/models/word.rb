class Word < ApplicationRecord

  belongs_to :report

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :Order
  belongs_to_active_hash :MemberName
end
