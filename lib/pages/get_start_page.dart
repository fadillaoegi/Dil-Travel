import 'package:flutter/material.dart';

class GetStart extends StatelessWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(fit: StackFit.expand, children: [
          Image.asset(
            "assets/img/image_get_started.png",
            width: MediaQuery.of(context).size.width,
          ),
          const Text("data")
        ]),
      ),
    );
  }
}
