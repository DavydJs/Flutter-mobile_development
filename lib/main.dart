import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/view_model/projector_unsplash_list_view_model.dart';
import 'package:flutter_app/view/projector_unsplash_home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => ProjectorUnsplashListViewModel()),
      ],
      child: MaterialApp(
        title: 'ProjectorUnsplash',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ProjectorUnsplashHomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}







