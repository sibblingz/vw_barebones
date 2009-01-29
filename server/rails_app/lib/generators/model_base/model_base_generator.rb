class ModelBaseGenerator < Rails::Generator::NamedBase
  
  #turns types in column class to actionscript variable types
    
     def typify(str)
       if ( str == "integer")
         return "int"
       end
       if ( str == "string" || str =="datetime")
         return "String"
       end
       if ( str == "boolean" )
         return "Boolean"
       end 
     end
   
  
  def initialize(*runtime_args)
    super(*runtime_args)
    
    # begin
    @klass = class_name.constantize
    # rescue NameError
    #   nil
    # end
    
    @columns  = @klass.columns
  end
  
  
  def manifest
      record do |m|
        m.directory File.join('../../client/src/vw/app/models')

        # Model class, unit test, and fixtures.
        m.template 'model_base.rb',   File.join('../../client/src/vw/app/models', "#{class_name}Model.as")
      end
  end
  

 

end