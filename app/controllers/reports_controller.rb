# frozen_string_literal: true

class ReportsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: %i[create index]

  def index
    @reports = Report.all
  end

  def show; end

  def new
    @report = Report.new
  end

  def create
    report = Report.new(report_params)

    if report.save
      render 'Registro criado!'
    else
      render json: report.errors, status: :unprocessable_entity
    end
  end

  def set_report
    @report = Report.find(params[:id])
  end

  def report_params
    params.require(:report).permit(:url, :guid, :timestamp, :contact_id)
  end
end
