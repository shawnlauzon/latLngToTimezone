import '../lib/lat_lng_to_timezone.dart' as tzmap;

void main() {
  // Montreal coordinates
  double latitude = 45.5017;
  double longitude = -73.5673;

  String tz = tzmap.latLngToTimezoneString(latitude, longitude);
  print('Montreal is in the $tz time zone.');

  Duration? utcOffset = tzmap.getTimezoneUTCOffset(tz);
  print("Montreal UTC offset is $utcOffset");
}

