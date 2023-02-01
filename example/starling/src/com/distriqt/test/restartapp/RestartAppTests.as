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
 * @author 		Michael Archbold (https://github.com/marchbold)
 * @created		08/01/2016
 * @copyright	http://distriqt.com/copyright/license.txt
 */
package com.distriqt.test.restartapp
{
	import com.distriqt.extension.restartapp.RestartApp;
	
	import starling.display.Sprite;
	
	
	/**
	 */
	public class RestartAppTests extends Sprite
	{
		public static const TAG:String = "";
		
		private var _l:ILogger;
		
		
		private function log( log:String ):void
		{
			_l.log( TAG, log );
		}
		
		
		////////////////////////////////////////////////////////
		//	FUNCTIONALITY
		//
		
		public function RestartAppTests( logger:ILogger )
		{
			_l = logger;
			log( "RestartApp Supported: " + RestartApp.isSupported );
			if (RestartApp.isSupported)
			{
				log( "RestartApp Version:    " + RestartApp.service.version );
				log( "RestartApp canRestart: " + RestartApp.service.canRestartApplication );
			}
		}
		
		
		////////////////////////////////////////////////////////
		//  
		//
		
		public function restartApplication():void
		{
			log( "restartApplication()" );
			if (RestartApp.service.canRestartApplication)
			{
				RestartApp.service.restartApplication();
			}
		}
		
		
	}
	
}
