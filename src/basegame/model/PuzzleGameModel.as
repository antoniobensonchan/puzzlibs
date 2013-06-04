package basegame.model
{
	public class PuzzleGameModel
	{
		
		public var blockObjectHash:Object;
		public var blockMapList:Object;
		public var puzzleComboTable:Object;
		
		public function PuzzleGameModel()
		{
		}
		
		public function initHash():void{
			blockObjectHash = new Object();
			blockMapList = new Object();
			puzzleComboTable = new Object();
		}
		
		public function destroyHash():void{
			blockObjectHash = blockMapList = puzzleComboTable = null;
		}
	}
}