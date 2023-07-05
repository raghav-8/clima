import 'package:geolocator/geolocator.dart';

class Location{

  double latitude=50;
  double longitude=1;

  Future<void> getCurrentLocation() async {
    try {
      LocationPermission locationPermission = await Geolocator.requestPermission();

      if (LocationPermission.whileInUse == locationPermission || LocationPermission.always == locationPermission) {
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
        latitude = position.latitude;
        longitude = position.longitude;
      }
    } catch (e) {
      print(e);
    }
  }




}