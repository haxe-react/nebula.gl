package react.nebula_gl;

import geojson.*;
import haxe.extern.EitherType;
import react.deck_gl.Layer;

@:jsRequire('nebula.gl', 'EditableGeoJsonLayer')
extern class EditableGeoJsonLayer extends Layer {
	function new(opt:EditableGeoJsonLayerOptions);
}


typedef EditableGeoJsonLayerOptions = {
	> BaseLayerOptions<FeatureCollection<Geometry>>, // actually can be any geojson
	
	?mode:String,
	?modeConfig:Dynamic,
	?modeHandlers:Dynamic,
	?selectedFeatureIndexes:Array<Int>,
	?onEdit:EditEvent->Void,
	?pickable:Bool,
	
	?filled:Bool,
	?stroked:Bool,
	?lineWidthScale:Float,
	?lineWidthMinPixels:Int,
	?lineWidthMaxPixels:Int,
	?lineJointRounded:Bool,
	?lineMiterLimit:Float,
	?pointRadiusScale:Float,
	?pointRadiusMinPixels:Int,
	?pointRadiusMaxPixels:Int,
	?lineDashJustified:Bool,
	?fp64:Bool,
	
	?getLineColor:EitherType<Array<Int>, Feature<Geometry>->Bool->String->Array<Int>>,
	?getFillColor:EitherType<Array<Int>, Feature<Geometry>->Bool->String->Array<Int>>,
	?getRadius:EitherType<Float, Feature<Geometry>->Bool->String->Float>,
	?getLineWidth:EitherType<Float, Feature<Geometry>->Bool->String->Float>,
	?getLineDashArray:EitherType<Array<Int>, Feature<Geometry>->Bool->String->Array<Int>>,
}

typedef EditEvent = {
	updatedData:FeatureCollection<Geometry>,
	editType:String,
	featureIndexes:Array<Int>,
	editContext:Dynamic,
}