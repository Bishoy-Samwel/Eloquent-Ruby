#/
# Add a Little Logging
# /#

class SomeApplication
  # ...
  def do_something
    doc = Document.load( 'resume.txt' )
    # Do something interesting with the document.
    doc.save
  end
end

###########

class SomeApplication
  def initialize( logger )
    @logger = logger
  end
  def do_something
    @logger.debug( 'Starting Document load' )
    doc = Document.load( 'resume.txt' )
    @logger.debug( 'Completed Document load' )
    # Do something interesting with the document.
    @logger.debug( 'Starting Document save' )
    doc.save
    @logger.debug( 'Completed Document save' )
  end
end