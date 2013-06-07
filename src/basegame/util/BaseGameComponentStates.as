package basegame.util
{
	[Bindable]
	public class BaseGameComponentStates
	{
		
		public static var MODE_INVALID:String = "MODE_INVALID";
		public static var MODE_INIT_READY:String = "MODE_INIT_READY";
		public static var MODE_BLOCK_READY:String = "MODE_BLOCK_READY";
		public static var MODE_PLAY:String = "MODE_PLAY";

		
		public var puzzleBoardVisible:Boolean = false;
		public var blockEnable:Boolean = false;
		public var blockVisible:Boolean = false;
		
		public function BaseGameComponentStates()
		{
		}
	}
}