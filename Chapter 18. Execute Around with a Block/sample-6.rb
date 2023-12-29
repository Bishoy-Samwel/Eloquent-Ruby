#/
# When It Absolutely Must Happen
# /#

class Document
  attr_accessor :title, :author, :content
  def initialize(title, author, content = '')
    @title = title
    @author = author
    @content = content
    yield( self ) if block_given?
  end
  # Rest of the class omitted...
end

new_doc = Document.new( 'US Constitution', 'Madison', '' ) do |d|
  d.content << 'We the people'
  d.content << 'In order to form a more perfect union'
  d.content << 'provide for the common defense'
end

##############

class Document
  attr_accessor :title, :author, :content
  def self.with_initialization
    new.tap do |document|
      document.setup
      yield(document) if block_given?
      # document.teardown
    end
  end

  def setup
    @title = 'Untitled'
    @author = 'Unknown'
    @content << 'We the people'
    @content << 'In order to form a more perfect union'
    @content << 'provide for the common defense'
  end


  # def teardown
  #   # Code to clean up the object
  # end
end

# Usage
Document.with_initialization do |doc|
  # Here is the code that uses the new object
  doc.title = 'US Constitution'
  doc.author = 'Madison'
  doc.content = ''
end