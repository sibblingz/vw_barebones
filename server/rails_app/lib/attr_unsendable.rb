class ActiveRecord::Base
  class_inheritable_array :unsendable_attributes 

  class << self
    def attr_unsendable(*attributes)
      write_inheritable_array(:unsendable_attributes, attributes.map(&:to_s))
    end
  end

  def to_json_with_clearing_unsendable_attributes(options = {})

    if unsendable_attributes
      options[:except] ||= []
      options[:except] += unsendable_attributes
    end
    to_json_without_clearing_unsendable_attributes(options)
  end
  alias_method_chain :to_json, :clearing_unsendable_attributes
  
end
