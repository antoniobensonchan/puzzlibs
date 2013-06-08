package basegame.task
{
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import org.osmf.events.TimeEvent;
	import org.spicefactory.lib.task.Task;
	
	public class IdleTask extends Task
	{
		
		private var dur:Number;
		
		public function IdleTask(ms:Number)
		{
			super();
			dur = ms;
		}
		
		protected override function doStart():void{
			var timer:Timer = new Timer(dur,1);
			timer.addEventListener(TimerEvent.TIMER_COMPLETE, onTimerComplete);
			timer.start();
		}
		
		public function onTimerComplete(event:TimerEvent):void
		{
			trace("Time's Up!");
			complete();
		}
		
	}
}