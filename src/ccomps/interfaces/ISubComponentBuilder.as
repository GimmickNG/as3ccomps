package ccomps.interfaces 
{
	
	/**
	 * ...
	 * @author Gimmick
	 */
	public interface ISubComponentBuilder 
	{
		function state(state:IState):IComponentBuilder
		function event(event:String, action:Function):IComponentBuilder
		
		function get component():IDisplaySubComponentBuilder
	}
	
}