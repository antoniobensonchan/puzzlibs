package basegame.event
{
	public class SetDropBlockAvailEvent
	{
		
		public var dropStone:Boolean;
		public function SetDropBlockAvailEvent(drop:Boolean)
		{
			this.dropStone = drop;
		}
	}
}