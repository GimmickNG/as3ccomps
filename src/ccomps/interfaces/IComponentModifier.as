package ccomps.interfaces 
{
	import ccomps.interfaces.IComponentBuilder;
	import ccomps.interfaces.IStylePair;
	
	/**
	 * ...
	 * @author Gimmick
	 */
	public interface IComponentModifier 
	{
		function target(target:IComponentBuilder):IComponentModifier
		function style(stylePair:IStylePair):IComponentModifier
		function build():Function
	}
	
}