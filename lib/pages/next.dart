import '/components/connectivity_listener.dart';
import 'package:flutter/material.dart';
import '/utils/context_ext.dart';
import '/utils/text_utils.dart';

class Next extends StatelessWidget {
  static const String route = '/next';

  const Next({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConnectivityListener(
      child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () => context.back(),
            child: const Text('Back'),
          ),
          body: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    TextUtils.loremQ2,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Text(TextUtils.loremAns2),
                ],
              ))),
    );
  }
}
