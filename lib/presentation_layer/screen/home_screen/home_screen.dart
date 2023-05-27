import 'package:ecommerce_automizer/presentation_layer/components/appbar.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Center(
        child: Text('Screen'),
      ),
    );
  }
}
