import Toybox.Lang;
import Toybox.ActivityMonitor;
import Toybox.Graphics;
import Toybox.System;

class Notifications extends Component {
  protected var iconNone as Graphics.BitmapType;
  protected var iconSome as Graphics.BitmapType;

  public function initialize() {
    Component.initialize();
    self.iconNone = WatchUi.loadResource(Rez.Drawables.NotificationsNone);
    self.iconSome = WatchUi.loadResource(Rez.Drawables.NotificationsSome);
  }

  protected function getValue() {
    return System.getDeviceSettings().notificationCount;
  }

  protected function getIcon(value as Number) {
    var icon = value < 1 ? self.iconNone : self.iconSome;
    return icon;
  }

  protected function getString(value as Number) {
    var str = Lang.format("$1$", [value]);
    return str;
  }

  public function draw(dc as Dc) as Void {
    var value = getValue();
    var icon = getIcon(value);
    var string = getString(value);
    dc.setColor(0xffffff, Graphics.COLOR_TRANSPARENT);
    dc.drawBitmap(343, 206, icon);
    dc.drawText(355, 236, Graphics.FONT_XTINY, string, Graphics.TEXT_JUSTIFY_CENTER);
  }
}
