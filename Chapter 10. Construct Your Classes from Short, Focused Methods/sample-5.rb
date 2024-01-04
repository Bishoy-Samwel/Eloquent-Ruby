class Document
  # Most of class omitted...
  def prose_rating
    if pretentious_density > 0.3
      if informal_density < 0.2
        return :really_pretentious
      else
        return :somewhat_pretentious
      end
    elsif pretentious_density < 0.1
      if informal_density > 0.3
        return :really_informal
      end
      return :somewhat_informal
    else
      return :about_right
    end
  end
  def pretentious_density
    # Somehow compute density of pretentious words
  end
  def informal_density
    # Somehow compute density of informal words
  end
end