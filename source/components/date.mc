import Toybox.Lang;
import Toybox.Time;
import Toybox.Time.Gregorian;
import Toybox.Graphics;
import Toybox.System;

class Date extends Component {
  public function initialize() {
    Component.initialize();
  }

  protected function getString() {
    var str;
    var today = Gregorian.info(Time.now(), Time.FORMAT_MEDIUM);
    str = Lang.format("$1$ $2$", [today.day_of_week, today.day]);
    return str;
  }

  public function draw(dc as Dc) as Void {
    dc.setColor(0xffffff, Graphics.COLOR_TRANSPARENT);
    dc.drawText(416 / 2, 15, Graphics.FONT_XTINY, getString(), Graphics.TEXT_JUSTIFY_CENTER);
  }
}
