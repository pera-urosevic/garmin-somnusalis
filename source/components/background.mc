import Toybox.Graphics;

class Background extends Component {
  public function initialize() {
    Component.initialize();
  }

  function draw(dc as Dc) as Void {
    // date
    dc.setColor(0x20827d, Graphics.COLOR_TRANSPARENT);
    dc.fillRectangle(0, 0, 416, 60);

    // time
    dc.setColor(0x2b6491, Graphics.COLOR_TRANSPARENT);
    dc.fillRectangle(0, 60, 416, 120);

    // stats
    dc.setColor(0x331966, Graphics.COLOR_TRANSPARENT);
    dc.fillRectangle(0, 180, 416, 110);

    // weather
    dc.setColor(0x71269b, Graphics.COLOR_TRANSPARENT);
    dc.fillRectangle(0, 290, 416, 126);
  }
}
