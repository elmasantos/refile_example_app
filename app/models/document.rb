class Document
  extend Refile::Attachment
  attr_accessor :file_id

  attachment :file, type: :image

  def initialize(attributes = {})
    self.file = attributes[:file]
  end
end