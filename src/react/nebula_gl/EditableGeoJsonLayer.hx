package react.nebula_gl;

import geojson.*;
import haxe.extern.EitherType;
import react.deck_gl.Layer;

@:jsRequire('nebula.gl', 'EditableGeoJsonLayer')
extern class EditableGeoJsonLayer<T> extends Layer<EditableGeoJsonLayerOptions<T>> {}


typedef EditableGeoJsonLayerOptions<T> = {
	> BaseLayerOptions<FeatureCollection<Geometry, T>>, // actually can be any geojson
	
	?mode:String,
	?modeConfig:Dynamic,
	?modeHandlers:Dynamic,
	?selectedFeatureIndexes:Array<Int>,
	?onEdit:EditEvent<T>->Void,
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
	
	?getLineColor:EitherType<Array<Int>, Feature<Geometry, T>->Bool->String->Array<Int>>,
	?getFillColor:EitherType<Array<Int>, Feature<Geometry, T>->Bool->String->Array<Int>>,
	?getRadius:EitherType<Float, Feature<Geometry, T>->Bool->String->Float>,
	?getLineWidth:EitherType<Float, Feature<Geometry, T>->Bool->String->Float>,
	?getLineDashArray:EitherType<Array<Int>, Feature<Geometry, T>->Bool->String->Array<Int>>,
}

typedef EditEvent<T> = {
	updatedData:FeatureCollection<Geometry, T>,
	editType:String,
	featureIndexes:Array<Int>,
	editContext:Dynamic,
}