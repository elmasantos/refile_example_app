require_relative 'config/environment'

class Image
  extend Refile::Attachment

  attr_accessor :file_id

  attachment :file

  def initialize(attributes = {})
    self.file = attributes[:file]
  end
end

class User
  extend Refile::Attachment

  attr_accessor :images

  accepts_attachments_for :images, collection_class: Image, accessor_prefix: 'images_files'
end

image = Image.new
