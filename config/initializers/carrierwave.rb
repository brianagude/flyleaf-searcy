CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'xxx',                        # required unless using use_iam_profile
    aws_secret_access_key: 'yyy',                        # required unless using use_iam_profile
  }
  config.fog_directory  = 'name_of_bucket'                                      # required
end
