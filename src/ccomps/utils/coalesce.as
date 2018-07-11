package ccomps.utils 
{
	public function get coalesce():ICoalesce {
		return new Coalesce()
	}
}

internal interface ICoalesce
{
	/**
	 * Array of IStateModifiers
	 * @param	...events
	 * @return
	 */
	function events(...events):Function
	/**
	 * Array of Functions
	 * @param	...functions
	 * @return
	 */
	function variadics(...functions):Function
}

internal class Coalesce implements ICoalesce
{
	public function Coalesce()
	{
		
	}
	
	public function events(...events):Function
	{
		
	}
	
	public function variadics(...functions):Function
	{
		
	}
}