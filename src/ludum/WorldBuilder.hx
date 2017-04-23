package ludum;

import haxe.Json;
import lycan.util.JsonReader;

typedef ShapeData = {
	var type:Int;
	var data:Array<Int>;
	var color:Array<Int>;
	var score:Float;
};

typedef CircleData = {
	var r:Int;
	var x:Int;
	var y:Int;
	var rgb:Rgba; // Just the RGB bit actually
	var alpha:Float;
}

class WorldBuilder {
	public var shapes:Array<CircleData> = [];
	
	public function new() {
		loadWorld(JsonReader.readFile("assets/world_data.json"));
	}
	
	private function loadWorld(data:String) {
		var shapeData: { shapes: Array<ShapeData> } = Json.parse(data);
		for (shape in shapeData.shapes) {
			var color:Rgba = Rgba.create(shape.color[0], shape.color[1], shape.color[2], 0);
			var alpha:Float = shape.color[3] / 255.0;
			shapes.push( { r: shape.data[2], x: shape.data[0], y: shape.data[1], rgb: color, alpha: alpha } );
		}
	}
}