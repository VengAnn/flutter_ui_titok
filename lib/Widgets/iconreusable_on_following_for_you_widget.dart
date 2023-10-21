import 'package:flutter/material.dart';

// ignore: camel_case_types
class IconReusable_on_following extends StatelessWidget {
  const IconReusable_on_following({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: Colors.blue,
        );
      },
    );
  }
}
