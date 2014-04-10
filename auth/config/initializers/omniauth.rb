Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cas, host: 'cas.cis.ksu.edu'
end
