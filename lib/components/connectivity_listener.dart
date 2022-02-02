import 'package:connectivity_plus/connectivity_plus.dart';
import '../provider/connectivity_provider.dart';
import '/components/connection_failed.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class ConnectivityListener extends StatelessWidget {
  final Widget child;

  const ConnectivityListener({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ConnectivityProvider>(
      builder: (context, ConnectivityProvider cp, child) {
        ///if outside of scaffold , we need to wrap material widget
        return Material(
          color: Colors.transparent,
          child: Stack(
            children: [
              this.child,
              if (cp.connectivity == ConnectivityResult.none)
                const ConnectionFailed(),
            ],
          ),
        );
      },
    );
  }
}
