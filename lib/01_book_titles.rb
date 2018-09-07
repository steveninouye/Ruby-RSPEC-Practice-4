class Book
  # TODO: your code goes here!


  def title
    @title
  end

  def title=(title)
    ignr = ["the","a","an","and", "in", "of"]
    title_arr = title.split.map.with_index do |word, idx|
      if ignr.include?(word) && idx != 0
        word.downcase
      else
        word.capitalize
      end
    end
    @title = title_arr.join(" ")
  end
end