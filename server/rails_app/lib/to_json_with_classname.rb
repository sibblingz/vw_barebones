class ActiveRecord::Base

  def classname
    self.class.name
  end

  def to_json_with_classname(options = {})
    options[:methods] ||= []
    options[:methods].push(:classname)
    to_json_without_classname(options)
  end
  alias_method_chain :to_json, :classname
  
end
