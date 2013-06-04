package basegame.event
{
	public class SetGamePlayableEvent
	{
		
		public var canPlay:Boolean = false;
		
		public function SetGamePlayableEvent(canPlay:Boolean)
		{
			this.canPlay = canPlay;
		}
	}
}