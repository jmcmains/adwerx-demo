# Preview all emails at http://localhost:3000/rails/mailers/help_mailer
class HelpMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/help_mailer/help_form
  def help_form
    HelpMailer.help_form
  end

end
