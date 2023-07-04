import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class SomnusalisView extends WatchUi.WatchFace {
  var components as Array<Component>;

  function initialize() {
    WatchFace.initialize();

    components =
      [
        new Background(),
        new Date(),
        new Time(),
        new Heartrate(),
        new Steps(),
        new Battery(),
        new Notifications(),
        new Weather(),
      ] as Array<Component>;
  }

  function onUpdate(dc as Dc) as Void {
    dc.setAntiAlias(true);
    dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
    dc.clear();

    for (var i = 0; i < components.size(); i++) {
      var component = components[i] as Component;
      component.draw(dc);
    }
  }
}
