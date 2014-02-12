Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1409640405954579', '9c9bc2806091922c9bd7a923de0f2cdb'
end