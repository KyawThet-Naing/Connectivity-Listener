import 'package:flutter/material.dart';

class ConnectionFailed extends StatelessWidget {
  const ConnectionFailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(.6),
      alignment: Alignment.center,
      child: Container(
        height: 140,
        alignment: Alignment.center,
        margin:const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "Connection Failed !",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 10),
            Text(
              "Please Check Your Internet Connection.",
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
