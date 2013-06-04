package basegame.util
{
	[Bindable]
	public class BaseGameComponentStates
	{
		
		public static var MODE_INVALID:String = "MODE_INVALID";
		public static var MODE_INIT:String = "MODE_INIT";
		public static var MODE_GET_READY:String = "MODE_GET_READY";
		public static var MODE_PLAY:String = "MODE_PLAY";

		
		public var puzzleBoardVisible:Boolean = false;
		public var blockEnable:Boolean = false;
		public var blockVisible:Boolean = false;
		
		public function BaseGameComponentStates()
		{
		}
	}
}