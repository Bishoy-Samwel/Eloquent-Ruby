def prose_rating
  rating = :about_right
  if pretentious_density > 0.3
    if informal_density < 0.2
      rating = :really_pretentious
    else
      rating = :somewhat_pretentious
    end
  elsif pretentious_density < 0.1
    if informal_density > 0.3
      rating = :really_informal
    else
      rating = :somewhat_informal
    end
  end
  rating
end