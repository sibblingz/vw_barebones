<?xml version="1.0" encoding="utf-8"?>
<framework:FrameworkApplication xmlns:framework="framework.applications.*" xmlns:mx="http://www.adobe.com/2006/mxml" 
    layout="absolute" >
        <framework:states>
                <mx:State name="load"/>
        </framework:states>

        <mx:Script>
                <![CDATA[
                        import vw.app.models.*;
                        import vw.app.modules.*;
                        import vw.app.views.*;
                  
                        override protected function getApplicationModels():Object
                        {
                                return {  };
                        }
                        
                ]]>
        </mx:Script>
        
</framework:FrameworkApplication>
