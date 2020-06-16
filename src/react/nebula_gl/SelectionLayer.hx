package react.nebula_gl;

import geojson.*;
import haxe.extern.EitherType;
import react.deck_gl.*;

@:jsRequire('@nebula.gl/layers', 'SelectionLayer')
extern class SelectionLayer extends Layer {
	function new(opt:SelectionLayerOptions);
}


typedef SelectionLayerOptions = {
	?id:String,
	?selectionType:String,
	?onSelect:SelectEvent->Void,
	?layerIds:Array<String>
}

typedef SelectEvent = {
	pickingInfos:Array<PickingInfo>,
}