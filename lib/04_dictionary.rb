class Dictionary
  # TODO: your code goes here!
  def initialize
    @entries = {}
    @keywords = []
  end

  def entries
    @entries
  end

  def keywords

    @keywords
  end

  def add (obj)
    if obj.is_a?(String)
      @keywords << obj
      @entries[obj] = nil
    else
      obj.each do |key, val|
        @keywords << key
        @entries[key] = val
      end
    end
    @keywords.sort!
  end

  def include? (str)
    @keywords.include?(str)
  end

  def find (str)
    obj = {}
    entries.each do |key, val|
      obj[key] = val if key.index(str) == 0
    end
    obj
  end

  def printable
    arr = []
    entries.each do |key, val|
      puts key
      arr << "[#{key}] \"#{val}\""
    end
    arr.sort!
    arr.join("\n")
  end

end