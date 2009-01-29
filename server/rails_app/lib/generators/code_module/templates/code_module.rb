package vw.app.modules
{
	import framework.app.controllers.BackController;
	import framework.app.modules.CodeModule;
	import framework.app.modules.caches.ModelsCache;
	import framework.applications.IStateMachine;

	public class <%= class_name -%>CodeModule extends CodeModule
	{
		public function <%= class_name -%>CodeModule(backController:BackController, application:IStateMachine, modelsCache:ModelsCache, stateName:String)
		{
			super(backController, application, modelsCache, stateName);
		}
		
		override public function getRequiredViews():Array
		{
			return [];
		}
		
		override public function wireModelsToViews():void
		{
		}

		override public function customInitialRequestFinished(params:Object):void
		{
		}

		override protected function constructInitialParams( extraModuleParams:Object ):Object
		{
			return {};
		}
	}
}
