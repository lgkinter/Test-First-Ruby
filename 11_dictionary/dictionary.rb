class Dictionary
  attr_reader :entries

  def initialize
    @entries ||= {}
  end

  def add(options)
    if options.is_a? Hash
      options.each {|key, value| @entries[key] = value}
    else
      @entries[options] = nil
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    @entries.key?(word)
  end

  def find(word)
    result = {}
    @entries.each{|key, value| result[key] = value if key =~ /^#{word}/} #Starts line with partial word
    result
  end

  def printable
    @entries = @entries.sort
    str = ""
    @entries.each{|key, value| str << "[#{key}] \"#{value}\"\n"}
    str.chomp
  end

end
