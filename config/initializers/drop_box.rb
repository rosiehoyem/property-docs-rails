# Install this the SDK with "gem install dropbox-sdk"
require 'dropbox_sdk'

# Get your app key and secret from the Dropbox developer website
DROPBOX_APP_KEY = Rails.configuration.dropbox_app_key
DROPBOX_APP_SECRET = Rails.configuration.dropbox_app_secret

flow = DropboxOAuth2FlowNoRedirect.new(DROPBOX_APP_KEY, DROPBOX_APP_SECRET)