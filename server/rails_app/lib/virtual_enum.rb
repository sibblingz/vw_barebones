class ActiveRecord::Base

  def self.virtual_enum(name, options)
    #create constants
    options.keys.each do |const|
      const_set const, options[const][:id]
    end
    #construct the hash
    hash = {}
    options.values.each do |val|
      hash[val.delete(:id)] = val
    end
    const_set name.upcase, hash
    #construct the method
    define_method "#{name.singularize}_properties".to_sym do
      hash = self.class.const_get(name.upcase)
      hash[self.send(name.singularize)]
    end
  end

end
