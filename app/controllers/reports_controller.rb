class ReportsController < ApplicationController

  def index
    @reports = Report.all.order("id  DESC") 
  end
  
  def show
    @report = Report.find(params[:id])
  end

  def new
    report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if @report.valid?
      @report.save
      redirect_to root_path
    else 
      render 'new'
    end
  end

  def edit
    @report = Report.find(params[:id])
    redirect_to root_path if current_user.id != @report.id
  end

  def update
    @report = Report.find(params[:id])
    if @report.update(report_update_params)
      redirect_to report_path(@report)
    else
      render "edit"
    end
  end


  private
  
  def report_params
    params.permit(:hope_id, :event_day_id, :member_name_id, :sheets, :text).merge(user_id: current_user.id)
  end

  def report_update_params
    params.require(:report).permit(:hope_id, :event_day_id, :member_name_id, :sheets, :text).merge(user_id: current_user.id)
  end
end
