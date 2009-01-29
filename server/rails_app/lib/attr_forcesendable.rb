class ActiveRecord::Base
  class_inheritable_array :forcesendable_attributes 

  class << self
    def attr_forcesendable(*attributes)
      write_inheritable_array(:forcesendable_attributes, attributes.map(&:to_s))
    end
  end

  def to_json_with_forcesendable_attributes(options = {})

    if forcesendable_attributes
      options[:methods] ||= []
      options[:methods] = [*options[:methods]] + forcesendable_attributes
    end
    to_json_without_forcesendable_attributes(options)
  end
  alias_method_chain :to_json, :forcesendable_attributes

  def forcesendable(forcesendable)
    @forcesendable = [*forcesendable]
  end
  def to_json_with_temporary_forcesendable_attributes(options = {})
    if @forcesendable
      options[:methods] ||= []
      options[:methods] = [*options[:methods]] + @forcesendable
    end
    to_json_without_temporary_forcesendable_attributes(options)
  end
  alias_method_chain :to_json, :temporary_forcesendable_attributes
  
end
