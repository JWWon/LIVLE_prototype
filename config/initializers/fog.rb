CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                                           # required
  config.fog_credentials = {
      provider:              'AWS',                                         # required
      aws_access_key_id:     'AKIAJDXM5MJ3TELZM44Q',                        # required
      aws_secret_access_key: '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',    # required
      region:                'ap-northeast-2',                              # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'livle-web'                                       # required
end