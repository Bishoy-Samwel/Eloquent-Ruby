class Document
  # Stuff omitted...

  def +(other)
    if other.kind_of?(String)
      return Document.new( title, author, "#{content} #{other}")
    end
    Document.new( title, author, "#{content} #{other.content}" )
  end

  def !
    Document.new(title, author, "It is not true: #{content}")
  end

  def +@
    Document.new(title, author, "I am sure that #{@content}")
  end

  def -@
    Document.new(title, author, "I doubt that #{@content}")
  end

  def [](index)
    words[index]
  end
end

doc1 = Document.new('Tag Line1', 'Kirk', "These are the voyages")
doc2 = Document.new('Tag Line2', 'Kirk', "of the star ship ...")
total_document = doc1 + doc2
puts total_document.content # These are the voyages of the star ship ...

favorite = Document.new('Favorite', 'Russ', 'Chocolate is best')

!favorite # It is not true: Chocolate is best

favorite = Document.new('Favorite', 'Russ', 'Chocolate is best')
unsure = -(+favorite) # I doubt that I am sure that Chocolate is best