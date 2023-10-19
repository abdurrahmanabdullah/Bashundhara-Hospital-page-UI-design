import 'package:flutter/cupertino.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Image(
          height: 80,
          image: AssetImage(
            'images/images.png',
          ),
        ),
        Text(
          "Bashundhara Eye Hospial",
          style:
              TextStyle(color: Color(0xff850101), fontWeight: FontWeight.bold),
        ),
        Text(
          "&Researcch Instittute",
          style:
              TextStyle(color: Color(0xff850101), fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
