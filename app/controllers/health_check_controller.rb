class HealthCheckController  < ApplicationController
  respond_to :json

  def index
    Rails.logger.silence do
      report = HealthCheckService.default.report

      if report.status == '200'
        render(json: report.messages)
      else
        render(json: report.messages, status: '500')
      end
    end
  end
end
