/**
 *        __       __               __ 
 *   ____/ /_ ____/ /______ _ ___  / /_
 *  / __  / / ___/ __/ ___/ / __ `/ __/
 * / /_/ / (__  ) / / /  / / /_/ / / 
 * \__,_/_/____/_/ /_/  /_/\__, /_/ 
 *                           / / 
 *                           \/ 
 * http://distriqt.com
 *
 * This is a test application for the distriqt extension
 * 
 * @author Michael Archbold & Shane Korin
 * 	
 */
package
{
	import com.distriqt.extension.restartapp.RestartApp;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	
	/**	
	 * Sample application for using the RestartApp Native Extension
	 */
	public class TestRestartApp extends Sprite
	{
		public static var APP_KEY : String = "APPLICATION_KEY";
		
		
		/**
		 * Class constructor 
		 */	
		public function TestRestartApp()
		{
			super();
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;

			init();
		}
		
		
		//
		//	VARIABLES
		//
		
		
		private var _text		: TextField;
		
		
		//
		//	INITIALISATION
		//	
		
		private function init( ):void
		{
			_text = new TextField();
			_text.defaultTextFormat = new TextFormat( "_typewriter", 18 );
			addChild( _text );

			stage.addEventListener( Event.RESIZE, stage_resizeHandler, false, 0, true );
			stage.addEventListener( MouseEvent.CLICK, mouseClickHandler, false, 0, true );
			
			message( "RestartApp Supported: " + RestartApp.isSupported );
			message( "RestartApp Version:   " + RestartApp.service.version );
		}
		
		
		//
		//	FUNCTIONALITY
		//
		
		private function message( str:String ):void
		{
			trace( str );
			_text.appendText(str+"\n");
		}
		
		
		private function restartApplication():void
		{
			message( "restartApplication" );
			
			if (RestartApp.service.canRestartApplication)
			{
				RestartApp.service.restartApplication();
			}
			
		}
		
		
		//
		//	EVENT HANDLERS
		//
		
		private function stage_resizeHandler( event:Event ):void
		{
			_text.width  = stage.stageWidth;
			_text.height = stage.stageHeight - 100;
		}
		
		
		private function mouseClickHandler( event:MouseEvent ):void
		{
			restartApplication();
		}
		
		
	}
	
}

