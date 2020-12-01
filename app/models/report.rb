class Report < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :EventDay
    belongs_to_active_hash :Hope
    belongs_to_active_hash :MemberName

  with_options presence: true do
    validates :hope_id, numericality: { less_than: 2 }
    validates :event_day_id, inclusion: { in: 2..27 }
    validates :member_name_id, inclusion: { in: 2..25 }
    validates :sheets, numericality: {only_integer: true}
    validates :text
  end
end
