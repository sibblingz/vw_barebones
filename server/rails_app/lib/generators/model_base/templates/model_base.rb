package vw.app.models
{
	import framework.app.models.ModelBase;

	public class <%= class_name -%>Model extends ModelBase
	{
<%- shown_columns = class_name.constantize.columns.reject{|c| c.name == 'id'} -%>
<%- shown_columns.each do |col| -%>
		public var <%= col.name -%>:<%= typify( col.type.to_s ) %>
<%- end -%>
	  
		public function <%= class_name -%>Model(attributes:Object)
		{
			super(attributes);
		}
		
	}
}