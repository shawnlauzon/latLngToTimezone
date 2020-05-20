# LatLongToTimezone
Lat/long to timezone mapper in Dart. Does not require web services or data files

The "lat/long to timezone polygon mapping" is hardcoded, and we hope this rarely changes, but the changes to offsets and daylight savings changeover dates etc. (which are more frequent) are taken care of by your system libraries and so these are automatically kept up-to-date. From time to time, someone updates the files with the latest timezone polygons, but these rarely change...I think the most recent change is the Crimean peninsular.

This Dart library is port of the original project  
available at https://github.com/drtimcooper/LatLongToTimezone. Ported it to
Dart to make it easily available on pub.dev. In order to support updates from
the upstream version, the formatting was changed as little as possible
(specifically not adding control flow braces or truncating lines at 80
characters).

## Usage

In your code, you can do

```dart
import 'package:lat_lng_to_timezone/timezone_mapper.dart' as tzmap;

void main() {
  // Montreal
  double latitude = 5.5017;
  double longitude = -73.5673;

  String tz = tzmap.latLngToTimezoneString(latitude, longitude);
  print('Montreal is in Time Zone $tz');
}
```