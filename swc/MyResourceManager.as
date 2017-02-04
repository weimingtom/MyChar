package  
{
	/**
	 * 双击右面MyCharSWC工程文件(MyCharSWC.as3proj)，然后编译
	 */
	public final class MyResourceManager
	{	
		// 使用类似关系型数据库的结构来保存整个ResourceManager的信息
		public static var arrResource:Array = new Array();
		
		// 髪型 - 手前
		[Embed(source="../data/default/hair_front/お嬢様.png")]public static var hair_front_001:Class;
		[Embed(source="../data/default/hair_front/くせ毛.png")]public static var hair_front_002:Class;
		[Embed(source="../data/default/hair_front/ぱっつん.png")]public static var hair_front_003:Class;
		[Embed(source="../data/default/hair_front/インテーク.png")]public static var hair_front_004:Class;
		[Embed(source="../data/default/hair_front/ウェーブ.png")]public static var hair_front_005:Class;
		[Embed(source="../data/default/hair_front/ナチュラル.png")]public static var hair_front_006:Class;
		[Embed(source="../data/default/hair_front/ワイルド.png")]public static var hair_front_007:Class;
		[Embed(source="../data/default/hair_front/横分け.png")]public static var hair_front_008:Class;
		[Embed(source="../data/default/hair_front/中分け1.png")]public static var hair_front_009:Class;
		[Embed(source="../data/default/hair_front/中分け2.png")]public static var hair_front_010:Class;
		
		//static
		{
			arrResource.push( { type:"hair_front", name:"お嬢様", cls:hair_front_001 } );
			arrResource.push( { type:"hair_front", name:"くせ毛", cls:hair_front_002 } );
			arrResource.push( { type:"hair_front", name:"ぱっつん", cls:hair_front_003 } );
			arrResource.push( { type:"hair_front", name:"インテーク", cls:hair_front_004 } );
			arrResource.push( { type:"hair_front", name:"ウェーブ", cls:hair_front_005 } );
			arrResource.push( { type:"hair_front", name:"ナチュラル", cls:hair_front_006 } );
			arrResource.push( { type:"hair_front", name:"ワイルド", cls:hair_front_007 } );
			arrResource.push( { type:"hair_front", name:"横分け", cls:hair_front_008 } );
			arrResource.push( { type:"hair_front", name:"中分け1", cls:hair_front_009 } );
			arrResource.push( { type:"hair_front", name:"中分け2", cls:hair_front_010 } );
		}
		
		// 髪型 - 後ろ
		[Embed(source="../data/default/hair_back/ウェーブセミロング.png")]public static var hair_back_001:Class;
		[Embed(source="../data/default/hair_back/ウェーブロング.png")]public static var hair_back_002:Class;
		[Embed(source="../data/default/hair_back/ギザギザショート.png")]public static var hair_back_003:Class;
		[Embed(source="../data/default/hair_back/ギザギザセミロング.png")]public static var hair_back_004:Class;
		[Embed(source="../data/default/hair_back/ギザギザロング.png")]public static var hair_back_005:Class;
		[Embed(source="../data/default/hair_back/サイドテール左(短).png")]public static var hair_back_006:Class;
		[Embed(source="../data/default/hair_back/ショート.png")]public static var hair_back_007:Class;
		[Embed(source="../data/default/hair_back/セミロング.png")]public static var hair_back_008:Class;
		[Embed(source="../data/default/hair_back/ツインテール(短).png")]public static var hair_back_009:Class;
		[Embed(source="../data/default/hair_back/ツインテール(長).png")]public static var hair_back_010:Class;
		[Embed(source="../data/default/hair_back/ツインドリル.png")]public static var hair_back_011:Class;
		[Embed(source="../data/default/hair_back/ボブカット.png")]public static var hair_back_012:Class;
		[Embed(source="../data/default/hair_back/ポニーテール.png")]public static var hair_back_013:Class;
		[Embed(source="../data/default/hair_back/ロング.png")]public static var hair_back_014:Class;
		[Embed(source="../data/default/hair_back/三つ編み.png")]public static var hair_back_015:Class;
		[Embed(source="../data/default/hair_back/二つ結び.png")]public static var hair_back_016:Class;
		
		//static
		{
			arrResource.push( { type:"hair_back", name:"ウェーブセミロング", cls:hair_back_001 } );
			arrResource.push( { type:"hair_back", name:"ウェーブロング", cls:hair_back_002 } );
			arrResource.push( { type:"hair_back", name:"ギザギザショート", cls:hair_back_003 } );
			arrResource.push( { type:"hair_back", name:"ギザギザセミロング", cls:hair_back_004 } );
			arrResource.push( { type:"hair_back", name:"ギザギザロング", cls:hair_back_005 } );
			arrResource.push( { type:"hair_back", name:"サイドテール左(短)", cls:hair_back_006 } );
			arrResource.push( { type:"hair_back", name:"ショート", cls:hair_back_007 } );
			arrResource.push( { type:"hair_back", name:"セミロング", cls:hair_back_008 } );
			arrResource.push( { type:"hair_back", name:"ツインテール(短)", cls:hair_back_009 } );
			arrResource.push( { type:"hair_back", name:"ツインテール(長)", cls:hair_back_010 } );
			arrResource.push( { type:"hair_back", name:"ツインドリル", cls:hair_back_011 } );
			arrResource.push( { type:"hair_back", name:"ボブカット", cls:hair_back_012 } );
			arrResource.push( { type:"hair_back", name:"ポニーテール", cls:hair_back_013 } );
			arrResource.push( { type:"hair_back", name:"ロング", cls:hair_back_014 } );
			arrResource.push( { type:"hair_back", name:"三つ編み", cls:hair_back_015 } );
			arrResource.push( { type:"hair_back", name:"二つ結び", cls:hair_back_016 } );
		}
		
		// 髪型 - 後ろ
		//[Embed(source="../data/default/hair_back_accessory/ウェーブセミロング.png")]public static var hair_back_accessory_001:Class;
		//[Embed(source="../data/default/hair_back_accessory/ウェーブロング.png")]public static var hair_back_accessory_002:Class;
		//[Embed(source="../data/default/hair_back_accessory/ギザギザショート.png")]public static var hair_back_accessory_003:Class;
		//[Embed(source="../data/default/hair_back_accessory/ギザギザセミロング.png")]public static var hair_back_accessory_004:Class;
		//[Embed(source="../data/default/hair_back_accessory/ギザギザロング.png")]public static var hair_back_accessory_005:Class;
		[Embed(source="../data/default/hair_back_accessory/サイドテール左(短).png")]public static var hair_back_accessory_006:Class;
		//[Embed(source="../data/default/hair_back_accessory/ショート.png")]public static var hair_back_accessory_007:Class;
		//[Embed(source="../data/default/hair_back_accessory/セミロング.png")]public static var hair_back_accessory_008:Class;
		[Embed(source="../data/default/hair_back_accessory/ツインテール(短).png")]public static var hair_back_accessory_009:Class;
		[Embed(source="../data/default/hair_back_accessory/ツインテール(長).png")]public static var hair_back_accessory_010:Class;
		[Embed(source="../data/default/hair_back_accessory/ツインドリル.png")]public static var hair_back_accessory_011:Class;
		//[Embed(source="../data/default/hair_back_accessory/ボブカット.png")]public static var hair_back_accessory_012:Class;
		[Embed(source="../data/default/hair_back_accessory/ポニーテール.png")]public static var hair_back_accessory_013:Class;
		//[Embed(source="../data/default/hair_back_accessory/ロング.png")]public static var hair_back_accessory_014:Class;
		[Embed(source="../data/default/hair_back_accessory/三つ編み.png")]public static var hair_back_accessory_015:Class;
		//[Embed(source="../data/default/hair_back_accessory/二つ結び.png")]public static var hair_back_accessory_016:Class;
		
		//static
		{
			//arrResource.push( { type:"hair_back_accessory", name:"ウェーブセミロング", cls:hair_back_accessory_001 } );
			//arrResource.push( { type:"hair_back_accessory", name:"ウェーブロング", cls:hair_back_accessory_002 } );
			//arrResource.push( { type:"hair_back_accessory", name:"ギザギザショート", cls:hair_back_accessory_003 } );
			//arrResource.push( { type:"hair_back_accessory", name:"ギザギザセミロング", cls:hair_back_accessory_004 } );
			//arrResource.push( { type:"hair_back_accessory", name:"ギザギザロング", cls:hair_back_accessory_005 } );
			arrResource.push( { type:"hair_back_accessory", name:"サイドテール左(短)", cls:hair_back_accessory_006 } );
			//arrResource.push( { type:"hair_back_accessory", name:"ショート", cls:hair_back_accessory_007 } );
			//arrResource.push( { type:"hair_back_accessory", name:"セミロング", cls:hair_back_accessory_008 } );
			arrResource.push( { type:"hair_back_accessory", name:"ツインテール(短)", cls:hair_back_accessory_009 } );
			arrResource.push( { type:"hair_back_accessory", name:"ツインテール(長)", cls:hair_back_accessory_010 } );
			arrResource.push( { type:"hair_back_accessory", name:"ツインドリル", cls:hair_back_accessory_011 } );
			//arrResource.push( { type:"hair_back_accessory", name:"ボブカット", cls:hair_back_accessory_012 } );
			arrResource.push( { type:"hair_back_accessory", name:"ポニーテール", cls:hair_back_accessory_013 } );
			//arrResource.push( { type:"hair_back_accessory", name:"ロング", cls:hair_back_accessory_014 } );
			arrResource.push( { type:"hair_back_accessory", name:"三つ編み", cls:hair_back_accessory_015 } );
			//arrResource.push( { type:"hair_back_accessory", name:"二つ結び", cls:hair_back_accessory_016 } );
		}
		
		
		
		// 頭
		[Embed(source="../data/default/head/青ざめた顔1.png")]public static var head_001:Class;
		[Embed(source="../data/default/head/青ざめた顔2.png")]public static var head_002:Class;
		[Embed(source="../data/default/head/普通な顔1.png")]public static var head_003:Class;
		[Embed(source="../data/default/head/普通な顔2.png")]public static var head_004:Class;
		
		//static
		{
			arrResource.push( { type:"head", name:"青ざめた顔1", cls:head_001 } );
			arrResource.push( { type:"head", name:"青ざめた顔2", cls:head_002 } );
			arrResource.push( { type:"head", name:"普通な顔1", cls:head_003 } );
			arrResource.push( { type:"head", name:"普通な顔2", cls:head_004 } );
		}
		
		// 表情
		[Embed(source="../data/default/face_front/驚き.png")]public static var face_front_001:Class;
		[Embed(source="../data/default/face_front/困り(口開き).png")]public static var face_front_002:Class;
		[Embed(source="../data/default/face_front/困り(口閉じ).png")]public static var face_front_003:Class;
		[Embed(source="../data/default/face_front/三角口(困り).png")]public static var face_front_004:Class;
		[Embed(source="../data/default/face_front/三角口(素).png")]public static var face_front_005:Class;
		[Embed(source="../data/default/face_front/三角口(怒り).png")]public static var face_front_006:Class;
		[Embed(source="../data/default/face_front/照れ(口開き).png")]public static var face_front_007:Class;
		[Embed(source="../data/default/face_front/照れ(口閉じ).png")]public static var face_front_008:Class;
		[Embed(source="../data/default/face_front/笑い(口開き).png")]public static var face_front_009:Class;
		[Embed(source="../data/default/face_front/笑い(口閉じ).png")]public static var face_front_010:Class;
		[Embed(source="../data/default/face_front/素.png")]public static var face_front_011:Class;
		[Embed(source="../data/default/face_front/怒り(口開き).png")]public static var face_front_012:Class;
		[Embed(source="../data/default/face_front/怒り(口閉じ).png")]public static var face_front_013:Class;
		[Embed(source="../data/default/face_front/猫口(口開き).png")]public static var face_front_014:Class;
		[Embed(source="../data/default/face_front/猫口(口閉じ).png")]public static var face_front_015:Class;
		
		//static
		{
			arrResource.push( { type:"face_front", name:"驚き", cls:face_front_001 } );
			arrResource.push( { type:"face_front", name:"困り(口開き)", cls:face_front_002 } );
			arrResource.push( { type:"face_front", name:"困り(口閉じ)", cls:face_front_003 } );
			arrResource.push( { type:"face_front", name:"三角口(困り)", cls:face_front_004 } );
			arrResource.push( { type:"face_front", name:"三角口(素)", cls:face_front_005 } );
			arrResource.push( { type:"face_front", name:"三角口(怒り)", cls:face_front_006 } );
			arrResource.push( { type:"face_front", name:"照れ(口開き)", cls:face_front_007 } );
			arrResource.push( { type:"face_front", name:"照れ(口閉じ)", cls:face_front_008 } );
			arrResource.push( { type:"face_front", name:"笑い(口開き)", cls:face_front_009 } );
			arrResource.push( { type:"face_front", name:"笑い(口閉じ)", cls:face_front_010 } );
			arrResource.push( { type:"face_front", name:"素", cls:face_front_011 } );
			arrResource.push( { type:"face_front", name:"怒り(口開き)", cls:face_front_012 } );
			arrResource.push( { type:"face_front", name:"怒り(口閉じ)", cls:face_front_013 } );
			arrResource.push( { type:"face_front", name:"猫口(口開き)", cls:face_front_014 } );
			arrResource.push( { type:"face_front", name:"猫口(口閉じ)", cls:face_front_015 } );
		}
		
		//
		[Embed(source="../data/default/face_back/驚き.png")]public static var face_back_001:Class;
		[Embed(source="../data/default/face_back/困り(口開き).png")]public static var face_back_002:Class;
		[Embed(source="../data/default/face_back/困り(口閉じ).png")]public static var face_back_003:Class;
		[Embed(source="../data/default/face_back/三角口(困り).png")]public static var face_back_004:Class;
		[Embed(source="../data/default/face_back/三角口(素).png")]public static var face_back_005:Class;
		[Embed(source="../data/default/face_back/三角口(怒り).png")]public static var face_back_006:Class;
		[Embed(source="../data/default/face_back/照れ(口開き).png")]public static var face_back_007:Class;
		[Embed(source="../data/default/face_back/照れ(口閉じ).png")]public static var face_back_008:Class;
		[Embed(source="../data/default/face_back/笑い(口開き).png")]public static var face_back_009:Class;
		[Embed(source="../data/default/face_back/笑い(口閉じ).png")]public static var face_back_010:Class;
		[Embed(source="../data/default/face_back/素.png")]public static var face_back_011:Class;
		[Embed(source="../data/default/face_back/怒り(口開き).png")]public static var face_back_012:Class;
		[Embed(source="../data/default/face_back/怒り(口閉じ).png")]public static var face_back_013:Class;
		[Embed(source="../data/default/face_back/猫口(口開き).png")]public static var face_back_014:Class;
		[Embed(source="../data/default/face_back/猫口(口閉じ).png")]public static var face_back_015:Class;
		
		//static
		{
			arrResource.push( { type:"face_back", name:"驚き", cls:face_back_001 } );
			arrResource.push( { type:"face_back", name:"困り(口開き)", cls:face_back_002 } );
			arrResource.push( { type:"face_back", name:"困り(口閉じ)", cls:face_back_003 } );
			arrResource.push( { type:"face_back", name:"三角口(困り)", cls:face_back_004 } );
			arrResource.push( { type:"face_back", name:"三角口(素)", cls:face_back_005 } );
			arrResource.push( { type:"face_back", name:"三角口(怒り)", cls:face_back_006 } );
			arrResource.push( { type:"face_back", name:"照れ(口開き)", cls:face_back_007 } );
			arrResource.push( { type:"face_back", name:"照れ(口閉じ)", cls:face_back_008 } );
			arrResource.push( { type:"face_back", name:"笑い(口開き)", cls:face_back_009 } );
			arrResource.push( { type:"face_back", name:"笑い(口閉じ)", cls:face_back_010 } );
			arrResource.push( { type:"face_back", name:"素", cls:face_back_011 } );
			arrResource.push( { type:"face_back", name:"怒り(口開き)", cls:face_back_012 } );
			arrResource.push( { type:"face_back", name:"怒り(口閉じ)", cls:face_back_013 } );
			arrResource.push( { type:"face_back", name:"猫口(口開き)", cls:face_back_014 } );
			arrResource.push( { type:"face_back", name:"猫口(口閉じ)", cls:face_back_015 } );
		}
		
		
		// 目
		[Embed(source="../data/default/eye/だる目(黒め)1.png")]public static var eye_001:Class;
		[Embed(source="../data/default/eye/だる目(黒め)2.png")]public static var eye_002:Class;
		[Embed(source="../data/default/eye/だる目(黒め)3.png")]public static var eye_003:Class;
		[Embed(source="../data/default/eye/だる目1.png")]public static var eye_004:Class;
		[Embed(source="../data/default/eye/だる目2.png")]public static var eye_005:Class;
		[Embed(source="../data/default/eye/だる目3.png")]public static var eye_006:Class;
		[Embed(source="../data/default/eye/デフォルメ目1.png")]public static var eye_007:Class;
		[Embed(source="../data/default/eye/デフォルメ目2.png")]public static var eye_008:Class;
		[Embed(source="../data/default/eye/ワル目(黒め)1.png")]public static var eye_009:Class;
		[Embed(source="../data/default/eye/ワル目(黒め)2.png")]public static var eye_010:Class;
		[Embed(source="../data/default/eye/ワル目(黒め)3.png")]public static var eye_011:Class;
		[Embed(source="../data/default/eye/ワル目1.png")]public static var eye_012:Class;
		[Embed(source="../data/default/eye/ワル目2.png")]public static var eye_013:Class;
		[Embed(source="../data/default/eye/ワル目3.png")]public static var eye_014:Class;
		[Embed(source="../data/default/eye/丸釣り目(黒め)1.png")]public static var eye_016:Class;
		[Embed(source="../data/default/eye/丸釣り目(黒め)2.png")]public static var eye_017:Class;
		[Embed(source="../data/default/eye/丸釣り目(黒め)3.png")]public static var eye_018:Class;
		[Embed(source="../data/default/eye/丸釣り目1.png")]public static var eye_019:Class;
		[Embed(source="../data/default/eye/丸釣り目2.png")]public static var eye_020:Class;
		[Embed(source="../data/default/eye/丸釣り目3.png")]public static var eye_021:Class;
		[Embed(source="../data/default/eye/三角目(黒め)1.png")]public static var eye_022:Class;
		[Embed(source="../data/default/eye/三角目(黒め)2.png")]public static var eye_023:Class;
		[Embed(source="../data/default/eye/三角目(黒め)3.png")]public static var eye_024:Class;
		[Embed(source="../data/default/eye/三角目1.png")]public static var eye_025:Class;
		[Embed(source="../data/default/eye/三角目2.png")]public static var eye_026:Class;
		[Embed(source="../data/default/eye/三角目3.png")]public static var eye_027:Class;
		[Embed(source="../data/default/eye/垂れ目(黒め)1.png")]public static var eye_028:Class;
		[Embed(source="../data/default/eye/垂れ目(黒め)2.png")]public static var eye_029:Class;
		[Embed(source="../data/default/eye/垂れ目(黒め)3.png")]public static var eye_030:Class;
		[Embed(source="../data/default/eye/垂れ目1.png")]public static var eye_031:Class;
		[Embed(source="../data/default/eye/垂れ目2.png")]public static var eye_032:Class;
		[Embed(source="../data/default/eye/垂れ目3.png")]public static var eye_033:Class;
		[Embed(source="../data/default/eye/釣り目(黒め)1.png")]public static var eye_034:Class;
		[Embed(source="../data/default/eye/釣り目(黒め)2.png")]public static var eye_035:Class;
		[Embed(source="../data/default/eye/釣り目(黒め)3.png")]public static var eye_036:Class;
		[Embed(source="../data/default/eye/釣り目1.png")]public static var eye_037:Class;
		[Embed(source="../data/default/eye/釣り目2.png")]public static var eye_038:Class;
		[Embed(source="../data/default/eye/釣り目3.png")]public static var eye_039:Class;
		[Embed(source="../data/default/eye/普通な目(黒め)1.png")]public static var eye_040:Class;
		[Embed(source="../data/default/eye/普通な目(黒め)2.png")]public static var eye_041:Class;
		[Embed(source="../data/default/eye/普通な目(黒め)3.png")]public static var eye_042:Class;
		[Embed(source="../data/default/eye/普通な目1.png")]public static var eye_043:Class;
		[Embed(source="../data/default/eye/普通な目2.png")]public static var eye_044:Class;
		[Embed(source="../data/default/eye/普通な目3.png")]public static var eye_045:Class;
		[Embed(source="../data/default/eye/閉じ目1.png")]public static var eye_046:Class;
		[Embed(source="../data/default/eye/閉じ目2.png")]public static var eye_047:Class;
		[Embed(source="../data/default/eye/閉じ目3.png")]public static var eye_048:Class;
		[Embed(source="../data/default/eye/棒目.png")]public static var eye_049:Class;
		
		//static
		{
			arrResource.push( { type:"eye", name:"だる目(黒め)1", cls:eye_001 } );
			arrResource.push( { type:"eye", name:"だる目(黒め)2", cls:eye_002 } );
			arrResource.push( { type:"eye", name:"だる目(黒め)3", cls:eye_003 } );
			arrResource.push( { type:"eye", name:"だる目1", cls:eye_004 } );
			arrResource.push( { type:"eye", name:"だる目2", cls:eye_005 } );
			arrResource.push( { type:"eye", name:"だる目3", cls:eye_006 } );
			arrResource.push( { type:"eye", name:"デフォルメ目1", cls:eye_007 } );
			arrResource.push( { type:"eye", name:"デフォルメ目2", cls:eye_008 } );
			arrResource.push( { type:"eye", name:"ワル目(黒め)1", cls:eye_009 } );
			arrResource.push( { type:"eye", name:"ワル目(黒め)2", cls:eye_010 } );
			arrResource.push( { type:"eye", name:"ワル目(黒め)3", cls:eye_011 } );
			arrResource.push( { type:"eye", name:"ワル目1", cls:eye_012 } );
			arrResource.push( { type:"eye", name:"ワル目2", cls:eye_013 } );
			arrResource.push( { type:"eye", name:"ワル目3", cls:eye_014 } );
			arrResource.push( { type:"eye", name:"丸釣り目(黒め)1", cls:eye_016 } );
			arrResource.push( { type:"eye", name:"丸釣り目(黒め)2", cls:eye_017 } );
			arrResource.push( { type:"eye", name:"丸釣り目(黒め)3", cls:eye_018 } );
			arrResource.push( { type:"eye", name:"丸釣り目1", cls:eye_019 } );
			arrResource.push( { type:"eye", name:"丸釣り目2", cls:eye_020 } );
			arrResource.push( { type:"eye", name:"丸釣り目3", cls:eye_021 } );
			arrResource.push( { type:"eye", name:"三角目(黒め)1", cls:eye_022 } );
			arrResource.push( { type:"eye", name:"三角目(黒め)2", cls:eye_023 } );
			arrResource.push( { type:"eye", name:"三角目(黒め)3", cls:eye_024 } );
			arrResource.push( { type:"eye", name:"三角目1", cls:eye_025 } );
			arrResource.push( { type:"eye", name:"三角目2", cls:eye_026 } );
			arrResource.push( { type:"eye", name:"三角目3", cls:eye_027 } );
			arrResource.push( { type:"eye", name:"垂れ目(黒め)1", cls:eye_028 } );
			arrResource.push( { type:"eye", name:"垂れ目(黒め)2", cls:eye_029 } );
			arrResource.push( { type:"eye", name:"垂れ目(黒め)3", cls:eye_030 } );
			arrResource.push( { type:"eye", name:"垂れ目1", cls:eye_031 } );
			arrResource.push( { type:"eye", name:"垂れ目2", cls:eye_032 } );
			arrResource.push( { type:"eye", name:"垂れ目3", cls:eye_033 } );
			arrResource.push( { type:"eye", name:"釣り目(黒め)1", cls:eye_034 } );
			arrResource.push( { type:"eye", name:"釣り目(黒め)2", cls:eye_035 } );
			arrResource.push( { type:"eye", name:"釣り目(黒め)3", cls:eye_036 } );
			arrResource.push( { type:"eye", name:"釣り目1", cls:eye_037 } );
			arrResource.push( { type:"eye", name:"釣り目2", cls:eye_038 } );
			arrResource.push( { type:"eye", name:"釣り目3", cls:eye_039 } );
			arrResource.push( { type:"eye", name:"普通な目(黒め)1", cls:eye_040 } );
			arrResource.push( { type:"eye", name:"普通な目(黒め)2", cls:eye_041 } );
			arrResource.push( { type:"eye", name:"普通な目(黒め)3", cls:eye_042 } );
			arrResource.push( { type:"eye", name:"普通な目1", cls:eye_043 } );
			arrResource.push( { type:"eye", name:"普通な目2", cls:eye_044 } );
			arrResource.push( { type:"eye", name:"普通な目3", cls:eye_045 } );
			arrResource.push( { type:"eye", name:"閉じ目1", cls:eye_046 } );
			arrResource.push( { type:"eye", name:"閉じ目2", cls:eye_047 } );
			arrResource.push( { type:"eye", name:"閉じ目3", cls:eye_048 } );
			arrResource.push( { type:"eye", name:"棒目", cls:eye_049 } );
		}
		
		
		// 身体
		[Embed(source="../data/default/body_back/エプロンドレス1.png")]public static var body_back_001:Class;
		[Embed(source="../data/default/body_back/エプロンドレス2.png")]public static var body_back_002:Class;
		[Embed(source="../data/default/body_back/コルセット1.png")]public static var body_back_003:Class;
		[Embed(source="../data/default/body_back/コルセット2.png")]public static var body_back_004:Class;
		[Embed(source="../data/default/body_back/ゴスロリ(ミニ)1.png")]public static var body_back_005:Class;
		[Embed(source="../data/default/body_back/ゴスロリ(ミニ)2.png")]public static var body_back_006:Class;
		[Embed(source="../data/default/body_back/サマードレス1.png")]public static var body_back_007:Class;
		[Embed(source="../data/default/body_back/サマードレス2.png")]public static var body_back_008:Class;
		[Embed(source="../data/default/body_back/スクール水着(白)1.png")]public static var body_back_009:Class;
		[Embed(source="../data/default/body_back/スクール水着(白)2.png")]public static var body_back_010:Class;
		[Embed(source="../data/default/body_back/スクール水着1.png")]public static var body_back_011:Class;
		[Embed(source="../data/default/body_back/スクール水着2.png")]public static var body_back_012:Class;
		[Embed(source="../data/default/body_back/セーラー服1.png")]public static var body_back_013:Class;
		[Embed(source="../data/default/body_back/セーラー服2.png")]public static var body_back_014:Class;
		[Embed(source="../data/default/body_back/ブレザー1.png")]public static var body_back_015:Class;
		[Embed(source="../data/default/body_back/ブレザー2.png")]public static var body_back_016:Class;
		[Embed(source="../data/default/body_back/私服(シャツ)1.png")]public static var body_back_017:Class;
		[Embed(source="../data/default/body_back/私服(シャツ)2.png")]public static var body_back_018:Class;
		[Embed(source="../data/default/body_back/私服(セーター)1.png")]public static var body_back_019:Class;
		[Embed(source="../data/default/body_back/私服(セーター)2.png")]public static var body_back_020:Class;
		[Embed(source="../data/default/body_back/私服(ブラウス)1.png")]public static var body_back_021:Class;
		[Embed(source="../data/default/body_back/私服(ブラウス)2.png")]public static var body_back_022:Class;
		[Embed(source="../data/default/body_back/素体1.png")]public static var body_back_023:Class;
		[Embed(source="../data/default/body_back/素体2.png")]public static var body_back_024:Class;
		[Embed(source="../data/default/body_back/体操着1.png")]public static var body_back_025:Class;
		[Embed(source="../data/default/body_back/体操着2.png")]public static var body_back_026:Class;
		[Embed(source="../data/default/body_back/巫女装束1.png")]public static var body_back_027:Class;
		[Embed(source="../data/default/body_back/巫女装束2.png")]public static var body_back_028:Class;
		
		//static
		{
			arrResource.push( { type:"body_back", name:"エプロンドレス1", cls:body_back_001 } );
			arrResource.push( { type:"body_back", name:"エプロンドレス2", cls:body_back_002 } );
			arrResource.push( { type:"body_back", name:"コルセット1", cls:body_back_003 } );
			arrResource.push( { type:"body_back", name:"コルセット2", cls:body_back_004 } );
			arrResource.push( { type:"body_back", name:"ゴスロリ(ミニ)1", cls:body_back_005 } );
			arrResource.push( { type:"body_back", name:"ゴスロリ(ミニ)2", cls:body_back_006 } );
			arrResource.push( { type:"body_back", name:"サマードレス1", cls:body_back_007 } );
			arrResource.push( { type:"body_back", name:"サマードレス2", cls:body_back_008 } );
			arrResource.push( { type:"body_back", name:"スクール水着(白)1", cls:body_back_009 } );
			arrResource.push( { type:"body_back", name:"スクール水着(白)2", cls:body_back_010 } );
			arrResource.push( { type:"body_back", name:"スクール水着1", cls:body_back_011 } );
			arrResource.push( { type:"body_back", name:"スクール水着2", cls:body_back_012 } );
			arrResource.push( { type:"body_back", name:"セーラー服1", cls:body_back_013 } );
			arrResource.push( { type:"body_back", name:"セーラー服2", cls:body_back_014 } );
			arrResource.push( { type:"body_back", name:"ブレザー1", cls:body_back_015 } );
			arrResource.push( { type:"body_back", name:"ブレザー2", cls:body_back_016 } );
			arrResource.push( { type:"body_back", name:"私服(シャツ)1", cls:body_back_017 } );
			arrResource.push( { type:"body_back", name:"私服(シャツ)2", cls:body_back_018 } );
			arrResource.push( { type:"body_back", name:"私服(セーター)1", cls:body_back_019 } );
			arrResource.push( { type:"body_back", name:"私服(セーター)2", cls:body_back_020 } );
			arrResource.push( { type:"body_back", name:"私服(ブラウス)1", cls:body_back_021 } );
			arrResource.push( { type:"body_back", name:"私服(ブラウス)2", cls:body_back_022 } );
			arrResource.push( { type:"body_back", name:"素体1", cls:body_back_023 } );
			arrResource.push( { type:"body_back", name:"素体2", cls:body_back_024 } );
			arrResource.push( { type:"body_back", name:"体操着1", cls:body_back_025 } );
			arrResource.push( { type:"body_back", name:"体操着2", cls:body_back_026 } );
			arrResource.push( { type:"body_back", name:"巫女装束1", cls:body_back_027 } );
			arrResource.push( { type:"body_back", name:"巫女装束2", cls:body_back_028 } );
		}
		
		//
		[Embed(source="../data/default/body_front/エプロンドレス1.png")]public static var body_front_001:Class;
		[Embed(source="../data/default/body_front/エプロンドレス2.png")]public static var body_front_002:Class;
		[Embed(source="../data/default/body_front/コルセット1.png")]public static var body_front_003:Class;
		[Embed(source="../data/default/body_front/コルセット2.png")]public static var body_front_004:Class;
		[Embed(source="../data/default/body_front/ゴスロリ(ミニ)1.png")]public static var body_front_005:Class;
		[Embed(source="../data/default/body_front/ゴスロリ(ミニ)2.png")]public static var body_front_006:Class;
		//[Embed(source="../data/default/body_front/サマードレス1.png")]public static var body_front_007:Class;
		//[Embed(source="../data/default/body_front/サマードレス2.png")]public static var body_front_008:Class;
		//[Embed(source="../data/default/body_front/スクール水着(白)1.png")]public static var body_front_009:Class;
		//[Embed(source="../data/default/body_front/スクール水着(白)2.png")]public static var body_front_010:Class;
		//[Embed(source="../data/default/body_front/スクール水着1.png")]public static var body_front_011:Class;
		//[Embed(source="../data/default/body_front/スクール水着2.png")]public static var body_front_012:Class;
		[Embed(source="../data/default/body_front/セーラー服1.png")]public static var body_front_013:Class;
		[Embed(source="../data/default/body_front/セーラー服2.png")]public static var body_front_014:Class;
		[Embed(source="../data/default/body_front/ブレザー1.png")]public static var body_front_015:Class;
		[Embed(source="../data/default/body_front/ブレザー2.png")]public static var body_front_016:Class;
		[Embed(source="../data/default/body_front/私服(シャツ)1.png")]public static var body_front_017:Class;
		[Embed(source="../data/default/body_front/私服(シャツ)2.png")]public static var body_front_018:Class;
		[Embed(source="../data/default/body_front/私服(セーター)1.png")]public static var body_front_019:Class;
		[Embed(source="../data/default/body_front/私服(セーター)2.png")]public static var body_front_020:Class;
		[Embed(source="../data/default/body_front/私服(ブラウス)1.png")]public static var body_front_021:Class;
		[Embed(source="../data/default/body_front/私服(ブラウス)2.png")]public static var body_front_022:Class;
		//[Embed(source="../data/default/body_front/素体1.png")]public static var body_front_023:Class;
		//[Embed(source="../data/default/body_front/素体2.png")]public static var body_front_024:Class;
		[Embed(source="../data/default/body_front/体操着1.png")]public static var body_front_025:Class;
		[Embed(source="../data/default/body_front/体操着2.png")]public static var body_front_026:Class;
		[Embed(source="../data/default/body_front/巫女装束1.png")]public static var body_front_027:Class;
		[Embed(source = "../data/default/body_front/巫女装束2.png")]public static var body_front_028:Class;
		
		//static
		{
			arrResource.push( { type:"body_front", name:"エプロンドレス1", cls:body_front_001 } );
			arrResource.push( { type:"body_front", name:"エプロンドレス2", cls:body_front_002 } );
			arrResource.push( { type:"body_front", name:"コルセット1", cls:body_front_003 } );
			arrResource.push( { type:"body_front", name:"コルセット2", cls:body_front_004 } );
			arrResource.push( { type:"body_front", name:"ゴスロリ(ミニ)1", cls:body_front_005 } );
			arrResource.push( { type:"body_front", name:"ゴスロリ(ミニ)2", cls:body_front_006 } );
			//arrResource.push( { type:"body_front", name:"サマードレス1", cls:body_front_007 } );
			//arrResource.push( { type:"body_front", name:"サマードレス2", cls:body_front_008 } );
			//arrResource.push( { type:"body_front", name:"スクール水着(白)1", cls:body_front_009 } );
			//arrResource.push( { type:"body_front", name:"スクール水着(白)2", cls:body_front_010 } );
			//arrResource.push( { type:"body_front", name:"スクール水着1", cls:body_front_011 } );
			//arrResource.push( { type:"body_front", name:"スクール水着2", cls:body_front_012 } );
			arrResource.push( { type:"body_front", name:"セーラー服1", cls:body_front_013 } );
			arrResource.push( { type:"body_front", name:"セーラー服2", cls:body_front_014 } );
			arrResource.push( { type:"body_front", name:"ブレザー1", cls:body_front_015 } );
			arrResource.push( { type:"body_front", name:"ブレザー2", cls:body_front_016 } );
			arrResource.push( { type:"body_front", name:"私服(シャツ)1", cls:body_front_017 } );
			arrResource.push( { type:"body_front", name:"私服(シャツ)2", cls:body_front_018 } );
			arrResource.push( { type:"body_front", name:"私服(セーター)1", cls:body_front_019 } );
			arrResource.push( { type:"body_front", name:"私服(セーター)2", cls:body_front_020 } );
			arrResource.push( { type:"body_front", name:"私服(ブラウス)1", cls:body_front_021 } );
			arrResource.push( { type:"body_front", name:"私服(ブラウス)2", cls:body_front_022 } );
			//arrResource.push( { type:"body_front", name:"素体1", cls:body_front_023 } );
			//arrResource.push( { type:"body_front", name:"素体2", cls:body_front_024 } );
			arrResource.push( { type:"body_front", name:"体操着1", cls:body_front_025 } );
			arrResource.push( { type:"body_front", name:"体操着2", cls:body_front_026 } );
			arrResource.push( { type:"body_front", name:"巫女装束1", cls:body_front_027 } );
			arrResource.push( { type:"body_front", name:"巫女装束2", cls:body_front_028 } );
		}
		
		//
		[Embed(source="../data/default/body_front_color/エプロンドレス1.png")]public static var body_front_color_001:Class;
		[Embed(source="../data/default/body_front_color/エプロンドレス2.png")]public static var body_front_color_002:Class;
		[Embed(source="../data/default/body_front_color/コルセット1.png")]public static var body_front_color_003:Class;
		[Embed(source="../data/default/body_front_color/コルセット2.png")]public static var body_front_color_004:Class;
		[Embed(source="../data/default/body_front_color/ゴスロリ(ミニ)1.png")]public static var body_front_color_005:Class;
		[Embed(source="../data/default/body_front_color/ゴスロリ(ミニ)2.png")]public static var body_front_color_006:Class;
		[Embed(source="../data/default/body_front_color/サマードレス1.png")]public static var body_front_color_007:Class;
		[Embed(source="../data/default/body_front_color/サマードレス2.png")]public static var body_front_color_008:Class;
		[Embed(source="../data/default/body_front_color/スクール水着(白)1.png")]public static var body_front_color_009:Class;
		[Embed(source="../data/default/body_front_color/スクール水着(白)2.png")]public static var body_front_color_010:Class;
		[Embed(source="../data/default/body_front_color/スクール水着1.png")]public static var body_front_color_011:Class;
		[Embed(source="../data/default/body_front_color/スクール水着2.png")]public static var body_front_color_012:Class;
		[Embed(source="../data/default/body_front_color/セーラー服1.png")]public static var body_front_color_013:Class;
		[Embed(source="../data/default/body_front_color/セーラー服2.png")]public static var body_front_color_014:Class;
		[Embed(source="../data/default/body_front_color/ブレザー1.png")]public static var body_front_color_015:Class;
		[Embed(source="../data/default/body_front_color/ブレザー2.png")]public static var body_front_color_016:Class;
		[Embed(source="../data/default/body_front_color/私服(シャツ)1.png")]public static var body_front_color_017:Class;
		[Embed(source="../data/default/body_front_color/私服(シャツ)2.png")]public static var body_front_color_018:Class;
		[Embed(source="../data/default/body_front_color/私服(セーター)1.png")]public static var body_front_color_019:Class;
		[Embed(source="../data/default/body_front_color/私服(セーター)2.png")]public static var body_front_color_020:Class;
		[Embed(source="../data/default/body_front_color/私服(ブラウス)1.png")]public static var body_front_color_021:Class;
		[Embed(source="../data/default/body_front_color/私服(ブラウス)2.png")]public static var body_front_color_022:Class;
		//[Embed(source="../data/default/body_front_color/素体1.png")]public static var body_front_color_023:Class;
		//[Embed(source="../data/default/body_front_color/素体2.png")]public static var body_front_color_024:Class;
		[Embed(source="../data/default/body_front_color/体操着1.png")]public static var body_front_color_025:Class;
		[Embed(source="../data/default/body_front_color/体操着2.png")]public static var body_front_color_026:Class;
		[Embed(source="../data/default/body_front_color/巫女装束1.png")]public static var body_front_color_027:Class;
		[Embed(source="../data/default/body_front_color/巫女装束2.png")]public static var body_front_color_028:Class;
		
		//static
		{
			arrResource.push( { type:"body_front_color", name:"エプロンドレス1", cls:body_front_color_001 } );
			arrResource.push( { type:"body_front_color", name:"エプロンドレス2", cls:body_front_color_002 } );
			arrResource.push( { type:"body_front_color", name:"コルセット1", cls:body_front_color_003 } );
			arrResource.push( { type:"body_front_color", name:"コルセット2", cls:body_front_color_004 } );
			arrResource.push( { type:"body_front_color", name:"ゴスロリ(ミニ)1", cls:body_front_color_005 } );
			arrResource.push( { type:"body_front_color", name:"ゴスロリ(ミニ)2", cls:body_front_color_006 } );
			arrResource.push( { type:"body_front_color", name:"サマードレス1", cls:body_front_color_007 } );
			arrResource.push( { type:"body_front_color", name:"サマードレス2", cls:body_front_color_008 } );
			arrResource.push( { type:"body_front_color", name:"スクール水着(白)1", cls:body_front_color_009 } );
			arrResource.push( { type:"body_front_color", name:"スクール水着(白)2", cls:body_front_color_010 } );
			arrResource.push( { type:"body_front_color", name:"スクール水着1", cls:body_front_color_011 } );
			arrResource.push( { type:"body_front_color", name:"スクール水着2", cls:body_front_color_012 } );
			arrResource.push( { type:"body_front_color", name:"セーラー服1", cls:body_front_color_013 } );
			arrResource.push( { type:"body_front_color", name:"セーラー服2", cls:body_front_color_014 } );
			arrResource.push( { type:"body_front_color", name:"ブレザー1", cls:body_front_color_015 } );
			arrResource.push( { type:"body_front_color", name:"ブレザー2", cls:body_front_color_016 } );
			arrResource.push( { type:"body_front_color", name:"私服(シャツ)1", cls:body_front_color_017 } );
			arrResource.push( { type:"body_front_color", name:"私服(シャツ)2", cls:body_front_color_018 } );
			arrResource.push( { type:"body_front_color", name:"私服(セーター)1", cls:body_front_color_019 } );
			arrResource.push( { type:"body_front_color", name:"私服(セーター)2", cls:body_front_color_020 } );
			arrResource.push( { type:"body_front_color", name:"私服(ブラウス)1", cls:body_front_color_021 } );
			arrResource.push( { type:"body_front_color", name:"私服(ブラウス)2", cls:body_front_color_022 } );
			//arrResource.push( { type:"body_front_color", name:"素体1", cls:body_front_color_023 } );
			//arrResource.push( { type:"body_front_color", name:"素体2", cls:body_front_color_024 } );
			arrResource.push( { type:"body_front_color", name:"体操着1", cls:body_front_color_025 } );
			arrResource.push( { type:"body_front_color", name:"体操着2", cls:body_front_color_026 } );
			arrResource.push( { type:"body_front_color", name:"巫女装束1", cls:body_front_color_027 } );
			arrResource.push( { type:"body_front_color", name:"巫女装束2", cls:body_front_color_028 } );
		}
		
		public function MyResourceManager() 
		{
			
		}
	}
}