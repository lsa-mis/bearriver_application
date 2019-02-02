class ApplicationController < ActionController::Base
  # before_action :block_foreign_hosts
  include AdminHelper

private
  # def require_admin
  #   unless current_user_admin?
  #     redirect_to root_url, alert: "Unauthorized access!"
  #   end
  # end
  #
  # def current_user_admin?
  #   current_user && current_user.admin?
  # end
  #
  # helper_method :current_user_admin?

  def user_has_application?(user)
    return true unless Application.find_by(user_id: user).nil?
  end

  helper_method :user_has_application?

  def contest_is_closed?
    return false unless ApplicationSetting.current_app_settings && ApplicationSetting.current_app_settings.opendate > Time.now
    redirect_to conference_closed_url
  rescue
    # code that deals with some exception
    redirect_to conference_closed_url
  end

  def contest_is_full?
    # if ApplicationSetting.current_app_settings.application_buffer <= Payment.where(transaction_status: "1").count
    if ApplicationSetting.current_app_settings.application_buffer <= Application.count
      redirect_to conference_full_url
    end
  end

  def payments_open?
    ApplicationSetting.current_app_settings.allow_payments
  end

  helper_method :payments_open?

  def block_foreign_hosts
    if Rails.env.development?
      return false
    elsif request.remote_ip.start_with?("141.213")
      return false
    else
      redirect_to "https://www.umich.edu"
    end
  end

end
