require "test_helper"

class RegistrationMailerTest < ActionMailer::TestCase
  test "registration_link" do
    mail = RegistrationMailer.registration_link
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end
end