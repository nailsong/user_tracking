# frozen_string_literal: true

class ReportsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  REPORTS_LIMIT = 50

  def index
    @reports = Report.order(timestamp: :desc).limit(REPORTS_LIMIT)
  end

  def show; end

  def new
    @report = Report.new
  end

  # rubocop: disable Metrics/MethodLength
  def create
    @report = Report.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Registro criado!' }
        format.json { render :show, status: :created, location: @report }
      else
        format.json do
          render json: @report.errors, status: :unprocessable_entity
        end
      end
    end
  end
  # rubocop: enable Metrics/MethodLength

  private

  def set_report
    @report = Report.find(params[:id])
  end

  def report_params
    params.require(:report).permit(:url, :guid, :timestamp)
  end
end
