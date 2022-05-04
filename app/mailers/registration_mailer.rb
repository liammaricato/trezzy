class RegistrationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.registration_mailer.registration_link.subject
  #
  def registration_link
    registration_code = params[:registration_code]
    @guest_name = registration_code.first_name
    @inviter_name = registration_code.user.first_name
    @inviter_role = "tesoureiro".titleize
    @registration_link = registration_code.registration_link

    mail to: registration_code.email
  end
end
