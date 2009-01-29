class Object
  def if_platform(platforms)
    yield if [*platforms].include? PLATFORM_ENV
  end

  def unless_platform(platforms)
    yield unless [*platforms].include? PLATFORM_ENV
  end
end
