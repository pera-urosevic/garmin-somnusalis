import Toybox.Lang;
import Toybox.ActivityMonitor;
import Toybox.Graphics;
import Toybox.System;

class Heartrate extends Component {
  protected var icon as Graphics.BitmapType;

  public function initialize() {
    Component.initialize();
    self.icon = WatchUi.loadResource(Rez.Drawables.Heartrate);
  }

  protected function getString() {
    var str;
    var heartrateSample = ActivityMonitor.getHeartRateHistory(1, true).next();
    var heartrate = heartrateSample.heartRate;
    if (heartrate == null || heartrate == ActivityMonitor.INVALID_HR_SAMPLE) {
      str = "-";
    } else {
      str = Lang.format("$1$", [heartrate]);
    }
    return str;
  }

  public function draw(dc as Dc) as Void {
    dc.setColor(0xffffff, Graphics.COLOR_TRANSPARENT);
    dc.drawBitmap(48, 206, self.icon);
    dc.drawText(60, 236, Graphics.FONT_XTINY, getString(), Graphics.TEXT_JUSTIFY_CENTER);
  }
}
