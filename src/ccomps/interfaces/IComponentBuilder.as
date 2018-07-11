package ccomps.interfaces 
{
	
	/**
	 * ...
	 * @author Gimmick
	 */
	public interface IComponentBuilder 
	{
		function get add():ISubComponentBuilder
		function get remove():ISubComponentBuilder
		function get state():ISubComponentBuilder
		function get base():ISubComponentBuilder
		
		function build():ISynComponent
		function get view():ISynComponent
	}
	
}