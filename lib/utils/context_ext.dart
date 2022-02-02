import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  ///pushName
  to({required String route}) => Navigator.pushNamed(this, route);

  ///pop
  back() => Navigator.pop(this);
}
