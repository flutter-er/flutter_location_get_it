import 'package:get_it/get_it.dart';
import 'package:todo_with_get_it/models/location_model.dart';
import 'package:todo_with_get_it/service/location_service.dart';

GetIt getIt = GetIt.instance;

void locator(){
  getIt.registerFactory(() => LocationService());

}