CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    region: "us-east-2",
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.credentials[Rails.env.to_sym][:aws][:key],
    aws_secret_access_key: Rails.application.credentials[Rails.env.to_sym][:aws][:secret],
  }
  config.fog_directory  = Rails.application.credentials[Rails.env.to_sym][:aws][:bucket]
end
