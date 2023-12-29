class SomeApplication
  def do_something_silly
    with_logging('Compute miles in a light year') do
      186000 * 60 * 60 * 24 * 365
    end
  end
end

def with_logging(description)
  begin
    @logger.debug( "Starting #{description}" )
    return_value = yield
    @logger.debug( "Completed #{description}" )
    return_value
  rescue
    @logger.error( "#{description} failed!!")
    raise
  end
end


def log_before(description)
  @logger.debug("Starting #{description}")
  yield
end

def log_after(description)
  yield
  @logger.debug("Done #{description}")
end