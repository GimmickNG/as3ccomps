package ccomps.interfaces 
{
	import flash.display.DisplayObject;
	import flash.display.InteractiveObject;
	
	/**
	 * ...
	 * @author Gimmick
	 */
	public interface IDisplaySubComponentBuilder 
	{
		function simple(component:DisplayObject):IComponentBuilder
		function complex(component:IComponentBuilder):IComponentBuilder
	}
	
}