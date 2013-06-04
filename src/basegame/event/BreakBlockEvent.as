package basegame.event
{
	public class BreakBlockEvent
	{
		public var col:int;
		public var row:int;
		
		public function BreakBlockEvent(row:int, col:int)
		{
			this.row = row;
			this.col = col;
		}
	}
}