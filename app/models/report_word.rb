class ReportWord

  include ActiveModel::Model
  attr_accessor :hope_id, :sheets, :event_day_id, :user_id, :member_name_id, :words, :order_id, :report_id, :user_id

  def save
    report = Report.create(hope_id: hope_id, sheets: sheets, event_day_id: event_day_id, user_id: user.id)
    words.create(member_name_id: member_name_id, words: words, order_id: order_id, report_id: report.id)
  end
end