require 'redcarpet'

class DocsController < ApplicationController
  def show
    client = DropboxClient.new(Rails.configuration.dropbox_app_token)
    path = "PropertyDocs/" + params[:folder] + "/" + params[:file_name] + ".md"
    response = client.get_file_and_metadata(path)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    @file = if response.first.start_with?("<!-- PUBLIC -->")
              markdown.render(response.first).html_safe
            else
              "Our apologies, this document is not ready to view."
            end 
  end

  def index
    @client = DropboxClient.new(Rails.configuration.dropbox_app_token)
    @folders = @client.metadata('/PropertyDocs')['contents']
  end
end
