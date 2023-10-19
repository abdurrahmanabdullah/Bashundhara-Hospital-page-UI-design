import 'package:flutter/material.dart';

import 'confirm_payment.dart';
import 'designing/button_design.dart';
import 'logo_title.dart';

class BookedAppointment extends StatelessWidget {
  final String name;
  final String phoneNumber;
  const BookedAppointment({
    super.key,
    required this.name,
    required this.phoneNumber,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff850101),
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LogoTitle(),
            Column(
              children: [
                Text(name),
                Text(phoneNumber),
                // RichText(
                //   text: const TextSpan(
                //     text: "Hello ",
                //     style: TextStyle(
                //         fontSize: 18,
                //         color: Colors.black // Customize the font size if needed
                //         ),
                //   ),
                // ),
                RichText(
                  text: const TextSpan(
                      text: "Your appointment with",
                      style: TextStyle(
                          fontSize: 18,
                          color:
                              Colors.black // Customize the font size if needed
                          ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '[Doctor name]',
                          style: TextStyle(
                            color: Color(0xff850101), // Set the color to red
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ]),
                ),
                RichText(
                  text: const TextSpan(
                      text: "is Scheduled on ",
                      style: TextStyle(
                          fontSize: 18,
                          color:
                              Colors.black // Customize the font size if needed
                          ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '[Date and Time]',
                          style: TextStyle(
                            color: Color(0xff850101), // Set the color to red
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                ),
                // Column(
                //   children: [Text()],
                // ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Pay Later",
                            style: TextStyle(color: Color(0xff850101)),
                          )),
                      ButtonDesign(
                        name: 'Pay Now',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ConfirmPayment(name)));
                        },
                        backgroundColor: const Color(0xFF6C1213),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
