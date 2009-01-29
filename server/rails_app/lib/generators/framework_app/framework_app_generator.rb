class FrameworkAppGenerator < Rails::Generator::NamedBase
  
  def initialize(*runtime_args)
    super(*runtime_args)
    
    #Some example code
    #@images = args.collect { |i| Image.new(i) }
    
    # Height of the Tabbed navbar is the height of any image in that bar / 3
    #@height_in_pixels = @images[0].height / 3
    # Sum of each tab's width
    #@width_in_pixels = @images.inject(0) { |sum, img| sum + img.width }
  end
  
  
  def manifest
      record do |m|
        m.directory File.join('../../client/src/vw')
        m.directory File.join('../../client/src/vw/app')
        m.directory File.join('../../client/src/vw/app/controllers')
        m.directory File.join('../../client/src/vw/app/helpers')
        m.directory File.join('../../client/src/vw/app/models')
        m.directory File.join('../../client/src/vw/app/modules')
        m.directory File.join('../../client/src/vw/app/views')
        
        
        # Model class, unit test, and fixtures.
        m.template 'framework_app.rb',   File.join('../../client/src/', "#{class_name}.mxml")
      end
    end
  
end