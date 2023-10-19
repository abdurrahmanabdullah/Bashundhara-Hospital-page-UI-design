import 'package:bashundhara_hospital_uii/designing/form_design.dart';
import 'package:bashundhara_hospital_uii/main.dart';
import 'package:flutter/material.dart';

import 'logo_title.dart';

class ConfirmPayment extends StatelessWidget {
  final String name;
  const ConfirmPayment(this.name, {super.key});
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
                const Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'images/iconn.png',
                      ),
                      height: 100,
                      width: 100,
                    ),
                    Text(
                      "Appointment Submit",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Successfully",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("name:$name"),
                    // RichText(
                    //   text: TextSpan(
                    //       text: "Hello ",
                    //       style: TextStyle(
                    //           fontSize: 18,
                    //           color: Colors
                    //               .black // Customize the font size if needed
                    //           ),
                    //       children: <TextSpan>[
                    //         TextSpan(
                    //           text: (name),
                    //           style: TextStyle(
                    //             color:
                    //                 Color(0xff850101), // Set the color to red
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         )
                    //       ]),
                    // ),
                    RichText(
                      text: const TextSpan(
                          text: "Your appointment with",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors
                                  .black // Customize the font size if needed
                              ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '[Doctor name]',
                              style: TextStyle(
                                color:
                                    Color(0xff850101), // Set the color to red
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
                              color: Colors
                                  .black // Customize the font size if needed
                              ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '[Date and Time]',
                              style: TextStyle(
                                color:
                                    Color(0xff850101), // Set the color to red
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
                const Text(
                  "Payment Was Successfully made",
                  style: TextStyle(
                      color: Color(0xff850101), fontWeight: FontWeight.bold),
                ),
                ButtonDesign(
                  name: 'Home',
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const MyApp()));
                  },
                  buttonDesignColor: const Color(0xFF6C1213),
                  textColor: Colors.white,
                ),
                const SizedBox(),
                const SizedBox(),
              ],
            )));
  }
}
