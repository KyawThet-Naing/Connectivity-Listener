import 'package:flutter/material.dart';
import '/utils/context_ext.dart';
import '/utils/text_utils.dart';
import '/pages/next.dart';

class Home extends StatelessWidget {
  static const String route = '/';

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () => context.to(route: Next.route),
          child: const Text('Next'),
        ),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  TextUtils.loremQ1,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                Text(TextUtils.loremAns1),
              ],
            )));
  }
}
