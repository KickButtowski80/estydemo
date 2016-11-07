# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|

  # with default "from" parameter.
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  # Configure the class responsible to send e-mails.

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  # Configure which authentication keys should have whitespace stripped.
  # These keys will have whitespace before and after removed upon creating or
  # modifying a user and when used to authenticate or find a user. Default is :email.
  config.strip_whitespace_keys = [:email]



  # By default Devise will store the user in session. You can skip storage for
  # particular strategies by setting this option.
  # Notice that if you are skipping storage for all authentication paths, you
  # may want to disable generating routes to Devise's sessions controller by
  # passing skip: :sessions to `devise_for` in your config/routes.rb
  config.skip_session_storage = [:http_auth]


  config.stretches = Rails.env.test? ? 1 : 11


  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128


  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/



  config.reset_password_within = 6.hours


  config.sign_out_via = :delete
  
  config.secret_key = '01331964f0f4712703340a223f33782af47b46308b70796393f75d120e42b8e6f6180629ec1bf3411ed3f78338474a0afca573c2c97554ba7705062c23b4067c'

end
