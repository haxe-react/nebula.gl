package react.nebula_gl;

@:jsRequire('@nebula.gl/edit-modes')
extern enum abstract EditMode(Dynamic) {
	@:native('ViewMode') final View;
	@:native('ModifyMode') final Modify;
	@:native('TranslateMode') final Translate;
	@:native('ScaleMode') final Scale;
	@:native('RotateMode') final Rotate;
	@:native('DuplicateMode') final Duplicate;
	@:native('SplitPolygonMode') final SplitPolygon;
	@:native('ExtrudeMode') final Extrude;
	@:native('ElevationMode') final Elevation;
	@:native('DrawPointMode') final DrawPoint;
	@:native('DrawLineStringMode') final DrawLineString;
	@:native('DrawPolygonMode') final DrawPolygon;
	@:native('DrawRectangleMode') final DrawRectangle;
	@:native('DrawSquareFromCenterMode') final DrawSquareFromCenter;
	@:native('DrawCircleFromCenterMode') final DrawCircleFromCenter;
	@:native('DrawCircleByDiameterMode') final DrawCircleByDiameter;
	@:native('DrawEllipseByBoundingBoxMode') final DrawEllipseByBoundingBox;
	@:native('DrawRectangleUsingThreePointsMode') final DrawRectangleUsingThreePoints;
	@:native('DrawEllipseUsingThreePointsMode') final DrawEllipseUsingThreePoints;
	@:native('Draw90DegreePolygonMode') final Draw90DegreePolygon;
	@:native('DrawPolygonByDraggingMode') final DrawPolygonByDragging;
	@:native('SnappableMode') final Snappable;
	@:native('TransformMode') final Transform;
}