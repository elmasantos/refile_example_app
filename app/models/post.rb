class Post
  extend Refile::Attachment
  extend ActiveModel::Naming
  #include ActiveModel::Model
  include ActiveModel::Conversion

  attr_accessor :documents
  attr_accessor :title

  ID = 1

  accepts_attachments_for(
    :documents,
    accessor_prefix: 'documents_files',
    collection_class: Document
  )

  def initialize(attributes)
    @documents = attributes[:documents]
    @title = attributes[:title]
  end

  def id
    ID
  end

  def self.all
    @title
  end

  def errors
    @errors = []
  end

  def save!; end

  def find
    self
  end

  def update_attributes!(attributes)
    attributes.each { |k, v| public_send("#{k}=", v) }
  end

  def persisted?
    true
  end
end