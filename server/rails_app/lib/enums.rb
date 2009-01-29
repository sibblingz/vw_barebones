class Object
  def self.enums(*args)
    args.flatten.each_with_index do | const, i |
      const_set(const, i)
    end
  end

  def self.named_enums(name, *args)
    const_set(name, args)
    enums(args)
  end
end
