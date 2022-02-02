import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'connectivity_provider.dart';

class ProviderWidget extends StatelessWidget {
  final Widget child;

  const ProviderWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ConnectivityProvider>(
          create: (context) {
            ConnectivityProvider connectProvider = ConnectivityProvider();
            connectProvider.initialLoad();
            return connectProvider;
          },
        ),

        ///another provider ...dam...dam...da..
      ],
      child: child,
    );
  }
}
