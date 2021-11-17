import 'dart:async';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:todo_with_get_it/models/location_model.dart';

class LocationService {
  Location location = Location();
  LocationModel? currentLocation;

  StreamController<LocationModel> locationController =
  StreamController<LocationModel>.broadcast();

  Stream<LocationModel> get getData => locationController.stream;

  LocationService() {
    location.requestPermission().then((permissionStatus) {
      if (permissionStatus == PermissionStatus.granted) {
        location.onLocationChanged.listen((locationData) {
          locationController.add(LocationModel(latitude: locationData.latitude,
              longitude: locationData.longitude));
        });
      }
    }
    );
  }

  Future <LocationModel?> getLocation() async {
    try {
      var userLocation = await location.getLocation();
      currentLocation = LocationModel(
          latitude: userLocation.latitude, longitude: userLocation.longitude);
      print(currentLocation!.latitude);
      print(currentLocation!.longitude);
    } catch (e) {
      if (e is PlatformException) {
        print(e.message);
      }
    }
    return currentLocation;
  }


}


