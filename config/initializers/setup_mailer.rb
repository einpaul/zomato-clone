ActionMailer::Base.smtp_settings = { 
   
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "gmail.com",
   :authentication => "plain",
   :enable_starttls_auto => true,
   :user_name => "ein.paul@gmail.com",
   :password => "coolfrog",
   :openssl_verify_mode  => 'none'
}

