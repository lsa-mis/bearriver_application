ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  
  content title: proc { I18n.t("active_admin.dashboard") } do
    div do
      span do
        link_to('Admin Documentation', 'https://docs.google.com/document/d/1_FS9pUxsBbl7o8tDFY9-15XcwpqBMzsZFhGoJQLMwVg/edit?usp=sharing', :target => "_blank")
      end
    end
    if (current_application_settings.opendate + current_application_settings.application_open_period.hours) < Time.now
      if current_application_settings.lottery_result.nil?
        div do
          span do
            button_to "Run Lottery", run_lotto_path
          end
        end
      end
    end

    columns do
      column do
        panel "Recent #{ApplicationSetting.get_current_app_year} Applications" do
          table_for Application.active_conference_applications.sort.reverse.first(10) do
            column(:id) { |app| link_to(app.name, admin_application_path(app)) }
          end
        end
      end

      column do
        panel "Recent Payments" do
          table_for Payment.current_conference_payments.sort.reverse.first(10) do
            column("User") { |u| link_to(u.user.email, admin_payment_path(u)) }
            column("Amount") { |a| number_to_currency a.total_amount.to_f / 100 }
          end
        end
      end

      column do
        panel "Recent Users" do
          table_for User.all.sort.reverse.first(10) do
            column(:email) { |user| link_to(user.email, admin_user_path(user)) }
          end
        end
      end
    end

    columns do
      column do
        panel "#{ApplicationSetting.get_current_app_year} Applicants who accepted their registration offer (#{Application.application_accepted.count})" do
          table_for Application.application_accepted.sort.reverse do
            column("User") { |u| link_to(u.user.email, admin_application_path(u.id)) }
            column("Offer Date") { |od| od.offer_status_date }
          end
        end
      end

      column do
        panel "Waiting for responses from these #{ApplicationSetting.get_current_app_year} applicants (#{Application.application_offered.count})" do
          table_for Application.application_offered.sort.reverse do
            column("User") { |u| link_to(u.user.email, admin_application_path(u.id)) }
            column("Offer Date") { |od| od.offer_status_date }
          end
        end
      end
    end # columns
  end # content
end
