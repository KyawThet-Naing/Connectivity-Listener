import '/provider/provider_widget.dart';
import 'package:flutter/material.dart';
import '/utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ProviderWidget(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Connectivity Listener',
        onGenerateRoute: Routes.onGenerateRoute,
      ),
    );
  }
}
