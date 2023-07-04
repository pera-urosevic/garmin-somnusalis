import Toybox.Lang;
import Toybox.Graphics;
import Toybox.System;

class Time extends Component {
  public function initialize() {
    Component.initialize();
  }

  protected function getString() {
    var str;
    var clockTime = System.getClockTime();
    str = Lang.format("$1$:$2$", [clockTime.hour.format("%02d"), clockTime.min.format("%02d")]);
    return str;
  }

  public function draw(dc as Dc) as Void {
    dc.setColor(0xffffff, Graphics.COLOR_TRANSPARENT);
    dc.drawText(416 / 2, 65, Graphics.FONT_NUMBER_MEDIUM, getString(), Graphics.TEXT_JUSTIFY_CENTER);
  }
}
