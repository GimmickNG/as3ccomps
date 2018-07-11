package ccomps.components 
{
	import flash.events.MouseEvent;
	import ccomps.interfaces.ISynComponent;
	import ccomps.interfaces.IComponentBuilder;
	import ccomps.utils.mutator;
	import ccomps.utils.coalesce;
	import ccomps.utils.hover;
	import ccomps.interfaces.IState;
	import ccomps.interfaces.IMutator;
	import ccomps.interfaces.ISubComponentBuilder;
	
	/**
	 * Button component demonstrating sample implementation of component API.
	 * @author Gimmick
	 */
	public class Button implements IComponentBuilder
	{
		private var cl_view:ISynComponent
		public function Button()
		{
			cl_label = new Label()
			cl_view	 = 	this.add.component.complex(cl_label)	//adds complex component "cl_label" to this
							.add.state(state)					//adds state "state" to this
							.add.event(MouseEvent.MOUSE_OVER, 	//for mouse_over event,
								coalesce.events(hover.target(base), hover.target(cl_label))		//calls both hover for base and cl_label
							)
							.add.event(MouseEvent.CLICK,		//for click event,
								coalesce.events(				//combines the following events:
									hover.target(base), 		//hover for base and
									mutator	.action(state, function bound(state:IState) {		//set bound function
												this.state = state								//set state
											}, state)											//passing state as parameters
											.target(state)										//finally set the target object (state)
											.build()											//and compile
								)								//end combine
							)
							.remove.component.complex(cl_label)	//remove component cl_label
							.build()							//build component and assign to view
		}
	}

}