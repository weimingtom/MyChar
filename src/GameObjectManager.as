package  
{
	import flash.display.Shape;
	import flash.display.Graphics;
	import flash.display.BlendMode;
	import flash.display.BitmapData;
	import flash.display.IBitmapDrawable;
	import flash.events.AsyncErrorEvent;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	public final class GameObjectManager
	{
		// double buffer
		// 被视图(mxml)使用以显示到图形界面上
		public var backBuffer:BitmapData;
		
		// static instance 
		// 单实例
		protected static var instance:GameObjectManager = null;
		
		// 自定义的渲染图片的固定大小
		public static const CANVAS_WIDTH:int = 300;
		public static const CANVAS_HEIGHT:int = 400;
		public const rectCANVAS:Rectangle = new Rectangle(0, 0, CANVAS_WIDTH, CANVAS_HEIGHT);
		
		// 当前的选项：
		private var strHairFront:String = "お嬢様";
		private var strHairBack:String = "ウェーブセミロング";
		private var strHead:String = "青ざめた顔1";
		private var strFace:String = "驚き";
		private var strEye:String = "だる目(黒め)1";
		private var strBody:String = "エプロンドレス1";
		
		// 部件颜色选项
		private var colorHair:uint = 0x8585B4;//青
		private var colorEye:uint = 0x8585B4;//青
		private var colorBody:uint = 0x8585B4;//青
		
		// bg color
		public var bgColor:uint = 0xFFFFFF;
		
		// 默认部件的主背景颜色
		public static const BLEND_BG_COLOR:uint = 0x7D87DD;
		
		// 当前的显示列表：
		private var currentHairBack:Class = MyResourceManager.hair_back_001;
		private var currentHairBackAccessory:Class = null;
		private var currentBodyBack:Class = MyResourceManager.body_back_001;
		private var currentBodyFront:Class = MyResourceManager.body_front_001;
		private var currentBodyFrontColor:Class = MyResourceManager.body_front_color_001;
		private var currentHead:Class = MyResourceManager.head_001;
		private var currentHairFront:Class = MyResourceManager.hair_front_001;
		private var currentFaceBack:Class = MyResourceManager.face_back_001;
		private var currentFaceFront:Class = MyResourceManager.face_front_001;
		private var currentEye:Class = MyResourceManager.eye_001;
		
		
		static public function get Instance():GameObjectManager
		{
			if ( instance == null )
				instance = new GameObjectManager();
			
			return instance;
		}
		
		public function GameObjectManager()
		{
			if ( instance != null )
				throw new Error( "Only one Singleton instance should be instantiated" ); 
				
			backBuffer = new BitmapData(CANVAS_WIDTH, CANVAS_HEIGHT, false);
			
			/*
			//测试用
			if (false)
			{
				var shape:Shape = new Shape();
				var gr:Graphics = shape.graphics;
				gr.beginFill(0xFF0000);
				gr.lineStyle(1, 0x0000FF);
				gr.drawCircle(50, 50, 50);
				gr.endFill();
				
				backBuffer.lock();
				backBuffer.draw(shape);
				backBuffer.unlock();
			}
			
			//测试用
			if (false)
			{
				var clsPics:Array = [
					currentHairBack,
					currentBodyBack,
					currentBodyFront,
					currentBodyFrontColor,
					currentHead,
					currentHairFront,
					currentFaceBack,
					currentFaceFront,
					currentEye,
				];
				var clsPicsLen:int = clsPics.length;
				backBuffer.lock();
				for (var i:int = 0; i < clsPicsLen; ++i)
				{
					backBuffer.draw(new (clsPics[i] as Class)());
				}
				backBuffer.unlock();
			}
			*/
		}
		
		//渲染用
		public function onEnterFrame():void
		{
			backBuffer.lock();
			backBuffer.fillRect(rectCANVAS, bgColor);
			
			var cls:Class;
			
			cls = currentHairBack;
			if (cls != null)
			{
				//backBuffer.draw(new cls());
				backBuffer.draw(blend(cls, BLEND_BG_COLOR, colorHair));
			}
			
			cls = currentHairBackAccessory;
			if (cls != null)
			{
				backBuffer.draw(new cls());
				//backBuffer.draw(blend(cls, BLEND_BG_COLOR, colorHair));
			}	
			
			cls = currentBodyBack;
			if (cls != null)
			{
				backBuffer.draw(new cls());
			}	
			
			cls = currentBodyFront;
			if (cls != null)
			{
				//backBuffer.draw(new cls());
				backBuffer.draw(blend(cls, BLEND_BG_COLOR, colorBody));
			}
			
			cls = currentBodyFrontColor;
			if (cls != null)
			{
				//backBuffer.draw(new cls());
				backBuffer.draw(blend(cls, BLEND_BG_COLOR, colorBody));
			}
			
			cls = currentHead;
			if (cls != null)
			{
				backBuffer.draw(new cls());
			}
			
			cls = currentHairFront;
			if (cls != null)
			{
				//backBuffer.draw(new cls());
				backBuffer.draw(blend(cls, BLEND_BG_COLOR, colorHair));
			}
			
			cls = currentFaceBack;
			if (cls != null)
			{
				backBuffer.draw(new cls());
			}
			
			cls = currentEye;
			if (cls != null)
			{
				//backBuffer.draw(new cls());
				backBuffer.draw(blend(cls, BLEND_BG_COLOR, colorEye));
			}
			
			cls = currentFaceFront;
			if (cls != null)
			{
				backBuffer.draw(new cls());
			}
			
			backBuffer.unlock();
		}
		
		
		public function set hairFront(name:String):void
		{	
			currentHairFront = null;
			var len:int = MyResourceManager.arrResource.length;
			for (var i:int = 0; i < len; i++)
			{
				var obj:Object = MyResourceManager.arrResource[i];
				if (obj == null) continue;
				if(obj["type"] == "hair_front" && obj["name"] == name)
				{
					currentHairFront = obj["cls"];
				}
			}
		}
		
		public function set hairBack(name:String):void
		{
			currentHairBack = null;
			currentHairBackAccessory = null;
			var len:int = MyResourceManager.arrResource.length;
			for (var i:int = 0; i < len; i++)
			{
				var obj:Object = MyResourceManager.arrResource[i];
				if (obj == null) continue;
				if(obj["type"] == "hair_back" && obj["name"] == name)
				{
					currentHairBack = obj["cls"];
				}
				if (obj["type"] == "hair_back_accessory" && obj["name"] == name)
				{
					currentHairBackAccessory = obj["cls"];
				}
			}
		}
		
		public function set head(name:String):void
		{
			currentHead = null;
			var len:int = MyResourceManager.arrResource.length;
			for (var i:int = 0; i < len; i++)
			{
				var obj:Object = MyResourceManager.arrResource[i];
				if (obj == null) continue;
				if(obj["type"] == "head" && obj["name"] == name)
				{
					currentHead = obj["cls"];
				}
			}
		}
		
		public function set face(name:String):void
		{
			currentFaceFront = null;
			currentFaceBack = null;
			var isFound:Boolean = false;
			var len:int = MyResourceManager.arrResource.length;
			for (var i:int = 0; i < len; i++)
			{
				var obj:Object = MyResourceManager.arrResource[i];
				if (obj == null) continue;
				if(obj["type"] == "face_back" && obj["name"] == name)
				{
					currentFaceBack = obj["cls"];
					if (isFound == false)
					{
						currentFaceFront = null;
					}
					isFound = true;
				}
				else if (obj["type"] == "face_front" && obj["name"] == name)
				{
					currentFaceFront = obj["cls"];
					if (isFound == false)
					{
						currentFaceBack = null;
					}
					isFound = true;
				}
			}
		}
		
		public function set eye(name:String):void
		{
			var len:int = MyResourceManager.arrResource.length;
			for (var i:int = 0; i < len; i++)
			{
				var obj:Object = MyResourceManager.arrResource[i];
				if (obj == null) continue;
				if(obj["type"] == "eye" && obj["name"] == name && obj["cls"] != null)
				{
					currentEye = obj["cls"];
				}
			}
		}
		
		public function set body(name:String):void
		{
			var isFound:Boolean = false;
			var len:int = MyResourceManager.arrResource.length;
			for (var i:int = 0; i < len; i++)
			{
				var obj:Object = MyResourceManager.arrResource[i];
				if (obj == null) continue;
				if(obj["type"] == "body_back" && obj["name"] == name)
				{
					currentBodyBack = obj["cls"];
					if (isFound == false)
					{
						currentBodyFront = null;
						currentBodyFrontColor = null;
					}
					isFound = true;
				}
				else if (obj["type"] == "body_front" && obj["name"] == name)
				{
					currentBodyFront = obj["cls"];
					if (isFound == false)
					{
						currentBodyBack = null;
						currentBodyFrontColor = null;
					}
					isFound = true;
				}
				else if (obj["type"] == "body_front_color" && obj["name"] == name)
				{
					currentBodyFrontColor = obj["cls"];
					if (isFound == false)
					{
						currentBodyBack = null;
						currentBodyFront = null;
					}
					isFound = true;
				}
			}
		}
		
		private function blend(clsPic:Class, bgColor:uint, blendColor:uint):IBitmapDrawable
		{	
			var backBuffer1:BitmapData = new BitmapData(CANVAS_WIDTH, CANVAS_HEIGHT, true, 0x00000000); //全透明
			var bmd:BitmapData = new BitmapData(CANVAS_WIDTH, CANVAS_HEIGHT, true, 
				calcOverlayColor(bgColor, blendColor) | 0xFF000000);
			
			backBuffer1.lock();
			var bitmap:IBitmapDrawable = new clsPic(); //带透明区域的png
			backBuffer1.draw(bitmap);
			backBuffer1.draw(bmd, null, null, BlendMode.OVERLAY);
			backBuffer1.draw(bitmap, null, null, BlendMode.ALPHA); //重新加入透明区域
			backBuffer1.unlock();
			
			return backBuffer1;
		}
		
		//计算正片叠加的颜色，注意要手工加上0xFF000000
		private function calcOverlayColor(bgColor:uint, blendColor:uint):uint
		{
			var bg:Array = [
				(bgColor & 0xFF0000) >> 16,
				(bgColor & 0x00FF00) >>  8,
				(bgColor & 0x0000FF) >>  0
			];
			var blend:Array = [
				(blendColor & 0xFF0000) >> 16,
				(blendColor & 0x00FF00) >>  8,
				(blendColor & 0x0000FF) >>  0
			];
			var obj:Array = [0, 0, 0];
			for (var i:int = 0; i < 3; i++)
			{
				if (bg[i] >= 0x80)
				{
					obj[i] = ((blend[i] + 0xFF) / 2 - bg[i]) 
						/ ( 1 - bg[i] / 0xFF);
				}
				else
				{
					obj[i] = blend[i] * 0xFF / 2 / bg[i];
				}
				if (obj[i] > 0xFF)
					obj[i] = 0xFF;
				if (obj[i] < 0)
					obj[i] = 0;
			}
			
			//trace(obj[0], obj[1], obj[2]);
			var retVal:uint = (obj[0] << 16) | (obj[1] << 8) | (obj[2] << 0);
			//trace(retVal.toString(16));
			//注意，没有加上0xFF000000
			return retVal;
		}
		
		public function changeHairColor(color:uint):void
		{
			//trace("changeHairColor", color.toString(16));
			colorHair = color;
		}
		
		public function changeEyeColor(color:uint):void
		{
			//trace("changeEyeColor", color.toString(16));
			colorEye = color;
		}
		
		public function changeBodyColor(color:uint):void
		{
			//trace("changeBodyColor", color.toString(16));
			colorBody = color;
		}
	}
}