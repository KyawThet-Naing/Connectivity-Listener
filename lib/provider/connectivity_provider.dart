import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityProvider extends ChangeNotifier {
  ConnectivityProvider() {
    Connectivity()
        .onConnectivityChanged
        .listen((result) => resultHandler(result));
  }

  ConnectivityResult _connectivityResult = ConnectivityResult.none;

  ConnectivityResult get connectivity => _connectivityResult;

  void resultHandler(ConnectivityResult result) {
    _connectivityResult = result;
    notifyListeners();
  }

  void initialLoad() async {
    Connectivity connect = Connectivity();
    ConnectivityResult connectResult = await connect.checkConnectivity();
    resultHandler(connectResult);
  }
}
