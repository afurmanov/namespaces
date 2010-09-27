module Namespaces
  def namespaces
    name = self.is_a?(Class) ? self.name : self.class.name
    nesting = []
    name.split(/::/)[0..-2].inject([]) do |parts, name| 
      fq_name = parts << name
      nesting << eval(fq_name.join("::"))
      fq_name
    end
    nesting.reverse
  end
end

