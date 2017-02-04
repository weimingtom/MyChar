package  
{
	import flash.display.MovieClip;
	import flash.display.BitmapData;
	import flash.display.Bitmap;
	import flash.filters.ColorMatrixFilter;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.display.BitmapDataChannel;
	import flash.filters.BlurFilter;
	
	//简化版
	public class MyCharTest extends MovieClip
	{	
		public var backBuffer:BitmapData;
		public var backBuffer1:BitmapData;
		public var mc:MovieClip;
		public var mc1:MovieClip;
		
		[Embed(source='../data/default/hair_front/お嬢様.png')]
		public var clsPic1:Class;
		
		public var normalMatrix:ColorMatrixFilter = new ColorMatrixFilter([
			1, 0, 0, 0, 0,
			0, 1, 0, 0, 0,
			0, 0, 1, 0, 0,
			0, 0, 0, 1, 0,
		]);
		
		//测试用
		public var colorMatrix:ColorMatrixFilter = new ColorMatrixFilter([
			133.0/125.0, 		   0, 		    0, 0, 0,
					  0, 133.0/135.0, 		    0, 0, 0,
					  0, 		   0, 180.0/221.0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		//测试用
		public var colorMatrixSimple:ColorMatrixFilter = new ColorMatrixFilter([
			0, 			 0, 		  0, 		   0, 0,
			0,           0, 		  0, 		   0, 0,
			0, 			 0,           1, 		   0, 0,
			0, 			 0, 		  0,           1, 0,
		]);
		
		//保存
		public var colorMatrix1:ColorMatrixFilter = new ColorMatrixFilter([
			133.0/125.0, 		   0, 		    0, 0, 0,
					  0, 133.0/135.0, 		    0, 0, 0,
					  0, 		   0, 180.0/221.0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public var colorMatrix2:ColorMatrixFilter = new ColorMatrixFilter([
			195.0/125.0, 		   0, 		    0, 0, 0,
					  0, 		   0, 147.0/221.0, 0, 0,
					  0, 195.0/135.0, 		    0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public var colorMatrix3:ColorMatrixFilter = new ColorMatrixFilter([
					  0, 		   0, 189.0/221.0, 0, 0,
			142.0/125.0, 		   0, 		    0, 0, 0,
					  0, 142.0/135.0, 			0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public var colorMatrix4:ColorMatrixFilter = new ColorMatrixFilter([
			217.0/125.0, 		   0, 		    0, 0, 0,
					  0, 217.0/135.0, 		    0, 0, 0,
					  0, 		   0, 170.0/221.0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public var colorMatrix5:ColorMatrixFilter = new ColorMatrixFilter([
			155.0/125.0, 		   0, 		    0, 0, 0,
					  0, 	       0, 203.0/221.0, 0, 0,
					  0, 155.0/135.0, 			0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public var colorMatrix6:ColorMatrixFilter = new ColorMatrixFilter([
			          0, 		   0, 161.0/221.0, 0, 0,
			208.0/125.0,           0, 		    0, 0, 0,
					  0, 208.0/135.0,           0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);

		public var colorMatrix7:ColorMatrixFilter = new ColorMatrixFilter([
			127.0/125.0, 		   0, 		    0, 0, 0,
					  0, 127.0/135.0, 		    0, 0, 0,
					  0, 		   0, 127.0/221.0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public var colorMatrix8:ColorMatrixFilter = new ColorMatrixFilter([
			223.0/125.0, 		   0, 		    0, 0, 0,
					  0, 223.0/135.0, 		    0, 0, 0,
					  0, 		   0, 223.0/221.0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public var colorMatrix9:ColorMatrixFilter = new ColorMatrixFilter([
			          0, 		   0, 181.0/221.0, 0, 0,
			140.0/125.0,           0, 		    0, 0, 0,
					  0, 140.0/135.0,           0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public var colorMatrix10:ColorMatrixFilter = new ColorMatrixFilter([
			209.0/125.0, 		   0, 		    0, 0, 0,
					  0, 171.0/135.0, 		    0, 0, 0,
					  0, 		   0, 154.0/221.0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public var colorMatrix11:ColorMatrixFilter = new ColorMatrixFilter([
			          0, 		   0, 209.0/221.0, 0, 0,
			158.0/125.0,           0, 		    0, 0, 0,
					  0, 158.0/135.0,           0, 0, 0,
					  0, 		   0, 		    0, 1, 0,
		]);
		
		public function MyCharTest() 
		{
			mc = new MovieClip();
			addChild(mc);
			mc.x = 0;
			mc1 = new MovieClip();
			addChild(mc1);
			mc1.x = 300;
			
			backBuffer = new BitmapData(300, 400, false);
			backBuffer.lock();
			backBuffer.draw(new clsPic1());
			backBuffer.unlock();
			//
			var pt:Point = new Point(0, 0);
			var rect:Rectangle = new Rectangle(0, 0, 300, 400);
			var bm:BitmapData = new BitmapData(300, 400, true, 0); //全透明
			bm.lock();
			bm.draw(new clsPic1());
			bm.applyFilter(bm, rect, pt, colorMatrix11);
			bm.unlock();
			//bm.lock();
			//bm.threshold(bm, rect, pt, "==", 0xFF7D87DD, 0xFF8585B4, 0xFFFFFFFF, true);
			//bm.unlock();
			backBuffer1 = new BitmapData(300, 400, false);
			backBuffer1.lock();
			//backBuffer1.threshold(bm, rect, pt, "==", 0xFFBCC3EE, 0xFFC0C0E5, 0xFFFFFFFF, true);
			backBuffer1.draw(bm);
			backBuffer1.unlock();
			
			
			mc.graphics.clear();
			mc.graphics.beginBitmapFill(backBuffer, null, false, false);
			mc.graphics.drawRect(0, 0, 300, 400);
			mc.graphics.endFill();
			mc1.graphics.clear();
			mc1.graphics.beginBitmapFill(backBuffer1, null, false, false);
			mc1.graphics.drawRect(0, 0, 300, 400);
			mc1.graphics.endFill();
		}	
	}
}