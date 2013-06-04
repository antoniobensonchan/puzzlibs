package basegame.util
{
	public class PuzzleHelper
	{
		public function PuzzleHelper()
		{
		}
		
		public static function getHashKeyString(row:int, col:int):String{
			return row+","+col;
		}
	}
}