require 'dragonfly/s3_data_store'

app_s3 = Dragonfly.app(:alchemy_pictures)
app_s3.configure_with(:imagemagick)
app_s3.configure do
  datastore :s3,
    bucket_name: 'my_app',
    access_key_id: 'xxx',
    secret_access_key: 'xxx',
    region: 'eu-west-1',
    storage_headers: {'x-amz-acl' => 'public-read'},
    url_scheme: 'https'
end
