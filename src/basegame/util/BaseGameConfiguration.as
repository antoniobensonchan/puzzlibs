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
		
		public var blockType:int = 4;
		
		// TODO: may be we should separate static and non static items
		public static var blockImageNameAry:Array = ["img1.png", "img2.png", "img3.png", "img4.png"];
		public static var blockScoreAry:Array = [100, 150, 200, 250];
		public static var comboBonus:Number = 1.1;
		public static var minCombo:int = 3;

		
		public var isDropStone:Boolean = false;
		
		public function BaseGameConfiguration()
		{
		}
	}
}