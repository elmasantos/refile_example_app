require_relative 'config/environment'

class Document
  extend Refile::Attachment
  attr_accessor :file_id
    
  attachment :file
    
  def initialize(attributes = {})
    self.file = attributes[:file]
  end
end

class Post
  options = {append: true}
  document_class = Document
  extend Refile::Attachment
  attr_accessor :documents
    
  def initialize(attributes)
    @documents = attributes[:documents]
  end
         
  accepts_attachments_for(
    :documents,
    accessor_prefix: 'documents_files',
    collection_class: document_class,
    **options
  )
end


