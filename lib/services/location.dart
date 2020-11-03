import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

//  因為需要返回的值為promise，所以返回值需要為Future property
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {}
  }
}
