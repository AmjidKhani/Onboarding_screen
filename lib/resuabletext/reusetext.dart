import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reusetext extends StatelessWidget {
  final String text;
  final double? fs;
  final dynamic? fw;
  final Color? fc;

  reusetext({
    required this.text,
    this.fs = 20,
    this.fw,
    this.fc ,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: fc, fontSize: fs, fontWeight: fw),
    );
  }
}
