package basegame.event
{
	public class DebugInfoUpdateEvent
	{
		public var mapHash:Object;
		public var comboHash:Object;
		
		public var maxRow:int;
		public var maxCol:int;
		
		public function DebugInfoUpdateEvent(mapHash:Object, comboHash:Object, maxRow:int, maxCol:int)
		{
			this.mapHash = mapHash;
			this.comboHash = comboHash;
			
			this.maxRow = maxRow;
			this.maxCol = maxCol;
		}
	}
}