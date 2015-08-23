require 'redcarpet'

class DocsController < ApplicationController
  def show
    client = DropboxClient.new(Rails.configuration.dropbox_app_token)
    path = "PropertyDocs/" + params[:file_name] + ".md"
    response = client.get_file_and_metadata(path)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    @file = markdown.render(response.first).html_safe 
  end

  def index
    @client = DropboxClient.new(Rails.configuration.dropbox_app_token)
    @docs = @client.metadata('/PropertyDocs')['contents']
  end
end
