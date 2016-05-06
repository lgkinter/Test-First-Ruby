class XmlDocument

  def initialize
  end

  def method_missing(method_name, *arguments, &block)
    s = ""
    args = arguments[0] || {}
    s << "<#{method_name}"
    args.each { |key, value| s << " #{key}=\'#{value}\'" }
    if block
      s << ">"
      s << yield
      s << "</#{method_name}>"
    else
      s << "/>"
    end
  end

end
