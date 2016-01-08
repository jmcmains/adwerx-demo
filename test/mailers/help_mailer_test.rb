require 'test_helper'

class HelpMailerTest < ActionMailer::TestCase
  test "help_form" do
    mail = HelpMailer.help_form
    assert_equal "Help form", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
