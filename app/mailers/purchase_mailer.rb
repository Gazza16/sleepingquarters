class PurchaseMailer < ApplicationMailer
  default :from => 'payments@sleeping.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_transactional_email(to_email)

    @to_email = to_email
    mail( :to => @to_email, :subject => 'Payment Confirmation' )
  end
end
