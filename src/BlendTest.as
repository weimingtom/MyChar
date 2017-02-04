package  
{
	import flash.display.MovieClip;
	import flash.display.BitmapData;
	import flash.display.BlendMode;
	import flash.filters.ColorMatrixFilter;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	public class BlendTest extends MovieClip
	{	
		public var backBuffer:BitmapData;
		public var backBuffer1:BitmapData;
		public var backBuffer2:BitmapData;
		public var mc:MovieClip;
		public var mc1:MovieClip;
		public var mc2:MovieClip;
		
		[Embed(source='../data/default/hair_front/お嬢様.png')]
		public var clsPic1:Class;
		
		public function BlendTest() 
		{
			mc = new MovieClip();
			addChild(mc);
			mc.x = 0;
			mc1 = new MovieClip();
			addChild(mc1);
			mc1.x = 300;
			
			/*
			BlendMode.OVERLAY
			
			if (BGColor >= 0x80)
				BlendColor = 
					2 * (BGColor + ObjectColor - 
					BGColor * ObjectColor / 
					0xFF) - 0xFF
			else 
				BlendColor = BGColor * 
				    ObjectColor * 2 / 0xFF
				
			已知条件:	
				源色：BGColor = 7D87DD(125, 135, 221)
				目标色：BlendColor = 8585B4(133,133,180)
			假设:
				叠加色：ObjectColor = (r, g, b)
			求解：
				叠加色(r, g, b)满足以下约束条件
				125 * r * 2 / 255 = 133
				2 * (135 + g - 135 * g / 255) - 255 = 133
				2 * (221 + b - 221 * b / 255) - 255 = 180
			解：
				r = 133 * 255 / 2 / 125 = 135.66 ~= 136 = 0x88
				g = ((133 + 255) / 2 - 135) / ( 1 - 135 / 255) 
				  = 59 / 0.47059 = 125.37 ~= 125 = 0x7D
				b = ((180 + 255) / 2 - 221) / ( 1 - 221 / 255)
				  = -3.5 / 0.1333 = -26 ~= 0
				所以，叠加色为0x887D00
			*/
			
			//output:
			//	877d00
			//trace(calcOverlayColor(0x7D87DD, 0x8585B4).toString(16)); 
			
			backBuffer = new BitmapData(300, 400, false);
			backBuffer.lock();
			backBuffer.draw(new clsPic1());
			backBuffer.unlock();
			backBuffer1 = new BitmapData(300, 400, false);
			
			// test:
			// 0x8585B4 0xC393C3 0xBD8E8E(?) 0xD9D9AA
			// 0x9BCB9B(?) 0xA1D0D0 0x7F7F7F(?) 0xDFDFDF
			// 0xB58C8C(?) 0xD1AB9A(?) 0xD19E9E
			
			// 注意加上0xFF000000，否则无法生成透明内存位图
			//var bm:BitmapData = new BitmapData(300, 400, true, 0xFF887D00);
			var bm:BitmapData = new BitmapData(300, 400, true, 
				calcOverlayColor(0x7D87DD, 0x8585B4) | 0xFF000000);
			backBuffer1.lock();
			backBuffer1.draw(new clsPic1());
			backBuffer1.draw(bm, null, null, BlendMode.OVERLAY);
			backBuffer1.unlock();
			
			mc.graphics.clear();
			mc.graphics.beginBitmapFill(backBuffer, null, false, false);
			mc.graphics.drawRect(0, 0, 300, 400);
			mc.graphics.endFill();
			
			mc1.graphics.clear();
			mc1.graphics.beginBitmapFill(backBuffer1, null, false, false);
			mc1.graphics.drawRect(0, 0, 300, 400);
			mc1.graphics.endFill();
			
			//------------------------
			//ColorMatrixFilter
			
			var colorMatrix1:ColorMatrixFilter = new ColorMatrixFilter([
				133.0/125.0, 0, 0, 0, 0,
				0, 133.0/135.0, 0, 0, 0,
				0, 0, 180.0/221.0, 0, 0,
				0, 0, 0, 1, 0,
			]);
			
			mc2 = new MovieClip();
			addChild(mc2);
			mc2.x = 600;
			//mc2.y = 0;
			
			var pt:Point = new Point(0, 0);
			var rect:Rectangle = new Rectangle(0, 0, 300, 400);
			var bm2:BitmapData = new BitmapData(300, 400, true, 0); //全透明
			bm2.lock();
			bm2.draw(new clsPic1());
			bm2.applyFilter(bm2, rect, pt, colorMatrix1);
			bm2.unlock();
			
			backBuffer2 = new BitmapData(300, 400, false);
			backBuffer2.lock();
			backBuffer2.draw(bm2);
			backBuffer2.unlock();
			
			mc2.graphics.clear();
			mc2.graphics.beginBitmapFill(backBuffer2, null, false, false);
			mc2.graphics.drawRect(0, 0, 300, 400);
			mc2.graphics.endFill();
		}
		
		//计算正片叠加的颜色，注意要手工加上0xFF000000
		public function calcOverlayColor(bgColor:uint, blendColor:uint):uint
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
			trace(retVal.toString(16));
			//注意，没有加上0xFF000000
			return retVal;
		}
	}
}