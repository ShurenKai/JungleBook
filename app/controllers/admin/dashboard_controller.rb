class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['JUNGLE_NAME'],
                               password: ENV['JUNGLE_PASSWORD']
  def show
  end

end
