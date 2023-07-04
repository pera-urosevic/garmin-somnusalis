import Toybox.Lang;
import Toybox.ActivityMonitor;
import Toybox.Graphics;
import Toybox.System;

class Battery extends Component {
  protected var icon100 as Graphics.BitmapType;
  protected var icon75 as Graphics.BitmapType;
  protected var icon50 as Graphics.BitmapType;
  protected var icon25 as Graphics.BitmapType;
  protected var icon0 as Graphics.BitmapType;

  public function initialize() {
    Component.initialize();
    self.icon100 = WatchUi.loadResource(Rez.Drawables.Battery100);
    self.icon75 = WatchUi.loadResource(Rez.Drawables.Battery75);
    self.icon50 = WatchUi.loadResource(Rez.Drawables.Battery50);
    self.icon25 = WatchUi.loadResource(Rez.Drawables.Battery25);
    self.icon0 = WatchUi.loadResource(Rez.Drawables.Battery0);
  }

  protected function getValue() {
    var value = System.getSystemStats().battery;
    return value;
  }

  protected function getIcon(value as Float) {
    if (value > 87.5) {
      return icon100;
    }
    if (value > 62.5) {
      return icon75;
    }
    if (value > 37.5) {
      return icon50;
    }
    if (value > 12.5) {
      return icon25;
    }
    return icon0;
  }

  protected function getString(value as Float) {
    var str;
    str = Lang.format("$1$%", [value.toNumber()]);
    return str;
  }

  public function draw(dc as Dc) as Void {
    var value = getValue();
    var icon = getIcon(value);
    var string = getString(value);

    dc.setColor(0xffffff, Graphics.COLOR_TRANSPARENT);
    dc.drawBitmap(243, 206, icon);
    dc.drawText(255, 236, Graphics.FONT_XTINY, string, Graphics.TEXT_JUSTIFY_CENTER);
  }
}
