class HelpMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.help_mailer.help_form.subject
  #
  def help_form(name,email,question)
    @name = name
    @email = email
    @question = question
    mail to: "jmcmains@gmail.com", subject: "Question on the adwerx demo site"
  end
end
