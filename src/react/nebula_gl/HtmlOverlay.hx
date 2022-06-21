package react.nebula_gl;

import react.ReactComponent;

@:jsRequire('@nebula.gl/overlays', 'HtmlOverlay')
extern class HtmlOverlay extends ReactComponentOfProps<{children:ReactFragment}> {}

@:jsRequire('@nebula.gl/overlays', 'HtmlOverlayItem')
extern class HtmlOverlayItem extends ReactComponentOfProps<{children:ReactFragment, coordinates:tink.s2d.Point, ?style:tink.domspec.Style}> {}