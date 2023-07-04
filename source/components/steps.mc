import Toybox.Lang;
import Toybox.ActivityMonitor;
import Toybox.Graphics;
import Toybox.System;

class Steps extends Component {
  protected var icon as Graphics.BitmapType;

  public function initialize() {
    Component.initialize();
    self.icon = WatchUi.loadResource(Rez.Drawables.Steps);
  }

  protected function getString() {
    var str;
    var info = ActivityMonitor.getInfo();
    if (info.steps == null) {
      str = "-";
    } else {
      str = Lang.format("$1$", [info.steps]);
    }
    return str;
  }

  public function draw(dc as Dc) as Void {
    dc.setColor(0xffffff, Graphics.COLOR_TRANSPARENT);
    dc.drawBitmap(143, 206, self.icon);
    dc.drawText(155, 236, Graphics.FONT_XTINY, getString(), Graphics.TEXT_JUSTIFY_CENTER);
  }
}
