CarrierWave.configure do |config|
  if.Rails.env.production?
    config.fog_provider = "fog"
    config.fog_credentials = {
      provider:               'AWS',
      aws_access_key_id:       ENS["AWS_ACCESS_KEY_ID"]

      aws_secret_access_key:   ENS["AWS_SECRET_ACCESS_KEY"]

      region:                  ENS["AWS_REGION"]

    }
    config.fog_directory      = ENS["AWS_BUCKET_NAME"]

  else
    config.storage :file
  end
end
