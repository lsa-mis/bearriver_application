class ApplicationController < ActionController::Base
  private

  def current_application_settings
    @current_application_settings ||= ApplicationSetting.get_current_app_settings
  end

  helper_method :current_application_settings

  def current_application_open?
    if current_application_settings
      application_opens = current_application_settings.opendate
      range = application_opens..(application_opens + 2.days)
      range.include?(Time.now)
    end
  end

  helper_method :current_application_open?

  def user_has_application?(user)
    if Application.active_conference_applications.find_by(user_id: user).nil?
      false
    else
      true
    end
  end

  helper_method :user_has_application?

  def user_has_special_payment?(user)
    if Payment.current_conference_payments.where(user_id: user).where(account_type: ["scholarship", "Scholarship", "special", "Special"]).any?
      true
    else
      false
    end
  end

  helper_method :user_has_special_payment?

  def user_has_payments?(user)
    # return true unless Payment.find_by(user_id: user).nil?
    if Payment.current_conference_payments.find_by(user_id: user).nil?
      false
    else
      true
    end
  end

  helper_method :user_has_payments?

  def payments_open?
    current_application_settings.allow_payments
  end

  helper_method :payments_open?
end
