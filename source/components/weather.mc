import Toybox.Lang;
import Toybox.Graphics;
import Toybox.System;
import Toybox.Weather;

class Weather extends Component {
  public function initialize() {
    Component.initialize();
  }

  protected function getDescriptionString(current as CurrentConditions) {
    var str;
    switch (current.condition) {
      case Weather.CONDITION_CLEAR:
        str = "Clear";
        break;
      case Weather.CONDITION_PARTLY_CLOUDY:
        str = "Partly cloudy";
        break;
      case Weather.CONDITION_MOSTLY_CLOUDY:
        str = "Mostly cloudy";
        break;
      case Weather.CONDITION_RAIN:
        str = "Rain";
        break;
      case Weather.CONDITION_SNOW:
        str = "Snow";
        break;
      case Weather.CONDITION_WINDY:
        str = "Windy";
        break;
      case Weather.CONDITION_THUNDERSTORMS:
        str = "Thunderstorms";
        break;
      case Weather.CONDITION_WINTRY_MIX:
        str = "Wintry mix";
        break;
      case Weather.CONDITION_FOG:
        str = "Fog";
        break;
      case Weather.CONDITION_HAZY:
        str = "Hazy";
        break;
      case Weather.CONDITION_HAIL:
        str = "Hail";
        break;
      case Weather.CONDITION_SCATTERED_SHOWERS:
        str = "Scattered showers";
        break;
      case Weather.CONDITION_SCATTERED_THUNDERSTORMS:
        str = "Scattered thunderstorms";
        break;
      case Weather.CONDITION_UNKNOWN_PRECIPITATION:
        str = "Unknown precipitation";
        break;
      case Weather.CONDITION_LIGHT_RAIN:
        str = "Light rain";
        break;
      case Weather.CONDITION_HEAVY_RAIN:
        str = "Heavy rain";
        break;
      case Weather.CONDITION_LIGHT_SNOW:
        str = "Light snow";
        break;
      case Weather.CONDITION_HEAVY_SNOW:
        str = "Heavy snow";
        break;
      case Weather.CONDITION_LIGHT_RAIN_SNOW:
        str = "Light rain snow";
        break;
      case Weather.CONDITION_HEAVY_RAIN_SNOW:
        str = "Heavy rain snow";
        break;
      case Weather.CONDITION_CLOUDY:
        str = "Cloudy";
        break;
      case Weather.CONDITION_RAIN_SNOW:
        str = "Rain snow";
        break;
      case Weather.CONDITION_PARTLY_CLEAR:
        str = "Partly clear";
        break;
      case Weather.CONDITION_MOSTLY_CLEAR:
        str = "Mostly clear";
        break;
      case Weather.CONDITION_LIGHT_SHOWERS:
        str = "Light showers";
        break;
      case Weather.CONDITION_SHOWERS:
        str = "Showers";
        break;
      case Weather.CONDITION_HEAVY_SHOWERS:
        str = "Heavy showers";
        break;
      case Weather.CONDITION_CHANCE_OF_SHOWERS:
        str = "Chance of showers";
        break;
      case Weather.CONDITION_CHANCE_OF_THUNDERSTORMS:
        str = "Chance of thunderstorms";
        break;
      case Weather.CONDITION_MIST:
        str = "Mist";
        break;
      case Weather.CONDITION_DUST:
        str = "Dust";
        break;
      case Weather.CONDITION_DRIZZLE:
        str = "Drizzle";
        break;
      case Weather.CONDITION_TORNADO:
        str = "Tornado";
        break;
      case Weather.CONDITION_SMOKE:
        str = "Smoke";
        break;
      case Weather.CONDITION_ICE:
        str = "Ice";
        break;
      case Weather.CONDITION_SAND:
        str = "Sand";
        break;
      case Weather.CONDITION_SQUALL:
        str = "Squall";
        break;
      case Weather.CONDITION_SANDSTORM:
        str = "Sandstorm";
        break;
      case Weather.CONDITION_VOLCANIC_ASH:
        str = "Volcanic ash";
        break;
      case Weather.CONDITION_HAZE:
        str = "Haze";
        break;
      case Weather.CONDITION_FAIR:
        str = "Fair";
        break;
      case Weather.CONDITION_HURRICANE:
        str = "Hurricane";
        break;
      case Weather.CONDITION_TROPICAL_STORM:
        str = "Tropical storm";
        break;
      case Weather.CONDITION_CHANCE_OF_SNOW:
        str = "Chance of snow";
        break;
      case Weather.CONDITION_CHANCE_OF_RAIN_SNOW:
        str = "Chance of rain snow";
        break;
      case Weather.CONDITION_CLOUDY_CHANCE_OF_RAIN:
        str = "Cloudy chance of rain";
        break;
      case Weather.CONDITION_CLOUDY_CHANCE_OF_SNOW:
        str = "Cloudy chance of snow";
        break;
      case Weather.CONDITION_CLOUDY_CHANCE_OF_RAIN_SNOW:
        str = "Cloudy chance of rain snow";
        break;
      case Weather.CONDITION_FLURRIES:
        str = "Flurries";
        break;
      case Weather.CONDITION_FREEZING_RAIN:
        str = "Freezing rain";
        break;
      case Weather.CONDITION_SLEET:
        str = "Sleet";
        break;
      case Weather.CONDITION_ICE_SNOW:
        str = "Ice snow";
        break;
      case Weather.CONDITION_THIN_CLOUDS:
        str = "Thin clouds";
        break;
      case Weather.CONDITION_UNKNOWN:
      default:
        str = "Unkown";
        break;
    }
    return str;
  }

  protected function getTemperatureString(current as CurrentConditions) {
    var str;
    var temperature = current.temperature;
    if (temperature == null) {
      str = "N/A";
    } else {
      str = Lang.format("$1$°C", [temperature]);
    }
    return str;
  }

  public function draw(dc as Dc) as Void {
    var current = Weather.getCurrentConditions();
    dc.setColor(0xffffff, Graphics.COLOR_TRANSPARENT);
    dc.drawText(416 / 2, 306, Graphics.FONT_XTINY, getDescriptionString(current), Graphics.TEXT_JUSTIFY_CENTER);
    dc.drawText(416 / 2, 350, Graphics.FONT_SMALL, getTemperatureString(current), Graphics.TEXT_JUSTIFY_CENTER);
  }
}
