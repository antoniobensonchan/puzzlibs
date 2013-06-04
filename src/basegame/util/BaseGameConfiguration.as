package basegame.util
{
	[Bindable]
	public class BaseGameConfiguration
	{
		public var boardX:int = 200;
		public var boardY:int = 20;
		public var boardWidth:int = 200;
		public var boardHeight:int = 300;
		public var boardCol:int = 15;
		public var boardRow:int = 10;
		
		public var blockWidth:int = 20;
		public var blockHeight:int = 20;
		
		public var blockType:int = 5;
		
		public var isDropStone:Boolean = false;
		
		public function BaseGameConfiguration()
		{
		}
	}
}