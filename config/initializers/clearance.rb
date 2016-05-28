Clearance.configure do |config|
  config.mailer_sender = "reply@example.com"


  Clearance::PasswordsController.layout "home"
  Clearance::SessionsController.layout "home"
  Clearance::UsersController.layout "home"

end
