package basegame.presenter
{
	import basegame.event.BreakBlockEvent;
	import basegame.event.BuildBlockEvent;
	import basegame.event.InitBoardEvent;
	import basegame.event.SetDropBlockAvailEvent;
	import basegame.event.StartGameEvent;
	import basegame.model.PuzzleGameModel;
	import basegame.presenter.Component.PuzzleBlock;
	import basegame.util.BaseGameComponentStates;
	import basegame.util.BaseGameConfiguration;
	import basegame.util.PuzzleHelper;
	
	import flash.events.MouseEvent;

	public class BasePuzzlePresenter
	{
		[Bindable]
		[Inject]
		public var config:BaseGameConfiguration;
		
		[Bindable]
		[Inject]
		public var compState:BaseGameComponentStates;
		
		[Inject]
		public var gameModel:PuzzleGameModel;
		
		[MessageDispatcher]
		public var sendMessage:Function;
				
		public function BasePuzzlePresenter()
		{
		}
		
		[MessageHandler]
		public function initBoard(e:InitBoardEvent = null):void{
			trace("init Board");
			setGameMode(BaseGameComponentStates.MODE_INIT_READY);
		}
		
		protected function setGameMode(mode:String):void{
			var gameMode:String = mode;
			switch (gameMode)
			{
				case BaseGameComponentStates.MODE_INVALID:
					compState.blockVisible = false;
					compState.puzzleBoardVisible = false;
					compState.blockEnable = false;
					break;
				case BaseGameComponentStates.MODE_INIT_READY:
					compState.puzzleBoardVisible = true;
					compState.blockVisible = false;
					compState.blockEnable = false;
					break;
				case BaseGameComponentStates.MODE_BLOCK_READY:
					compState.puzzleBoardVisible = true;
					compState.blockVisible = true;
					compState.blockEnable = false;
					break;
				case BaseGameComponentStates.MODE_PLAY:
					compState.puzzleBoardVisible = true;
					compState.blockVisible = true;
					compState.blockEnable = true;
					
					break;
			}
		}
		
		[MessageHandler]
		public function buildPuzzle(event:BuildBlockEvent = null):void{
			setGameMode(BaseGameComponentStates.MODE_BLOCK_READY);
		}
		
		[MessageHandler]
		public function setDropBlockAvailEventHandling(event:SetDropBlockAvailEvent):void{
			config.isDropStone = event.dropStone;
		}
		
		[MessageHandler]
		public function startGame(event:StartGameEvent = null):void{
			setGameMode(BaseGameComponentStates.MODE_PLAY); 
		}
		
		public function resetBoard():void{
			// Remove all Block, end Game
			cleanBoard();
			startGame();
		}
		
		public function cleanBoard():void{
			setGameMode(BaseGameComponentStates.MODE_INIT_READY);
		}
		
		public function destroyBoard():void{
			setGameMode(BaseGameComponentStates.MODE_INVALID);
		}
		
		public function onBlockClick(e:MouseEvent):void{
			var block:PuzzleBlock = e.currentTarget as PuzzleBlock;
			var row:int = block.posX;
			var col:int = block.posY;
			breakBlocksCombo(row, col);
		}
		
		public function moveBlock(toRow:int, toCol:int, fromRow:int = -1, fromCol:int = -1):void{
			
		}
		
		protected function breakBlocksCombo(row:int, col:int):void{
			sendMessage(new BreakBlockEvent(row, col));
		}
	}
}