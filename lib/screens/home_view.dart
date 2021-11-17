import 'package:flutter/material.dart';
import 'package:todo_with_get_it/service/location_service.dart';
import 'package:todo_with_get_it/service/locator.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var locationService = getIt<LocationService>();
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
            // async
            {
              locationService.getLocation();

        },
        child: Icon(Icons.upload_file),
      ),

    );
  }
}
