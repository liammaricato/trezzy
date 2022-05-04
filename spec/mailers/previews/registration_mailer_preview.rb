# Preview all emails at http://localhost:3000/rails/mailers/registration_mailer
class RegistrationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/registration_mailer/registration_link
  def registration_link
    RegistrationMailer.with(registration_code: RegistrationCode.first).registration_link
  end

end