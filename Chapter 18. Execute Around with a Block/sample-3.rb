class SomeApplication
  # Rest of the class omitted...
  def do_something
    @doc = load_with_logging('resume.txt')
    # Do something with the document...
    save_with_logging(@doc)
  end

  def load_with_logging(doc)
    begin
      @logger.debug('Starting Document load')
      doc = Document.load(doc)
      @logger.debug('Completed Document load')
    rescue
      @logger.error('Load failed!!')
      raise
    end
    doc
  end

  def save_with_logging(doc)
    begin
      @logger.debug('Starting Document save')
      doc.save
      @logger.debug('Completed Document save')
    rescue
      @logger.error('Save failed!!')
      raise
    end
  end
end