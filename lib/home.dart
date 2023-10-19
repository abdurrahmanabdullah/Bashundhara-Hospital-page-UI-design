import 'package:bashundhara_hospital_uii/designing/button_design.dart';
import 'package:flutter/material.dart';

import 'book_form.dart';
import 'logo_title.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff850101),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const LogoTitle(),
              Column(
                children: [
                  HomeCustomButton(
                    nameImage: 'a1.png',
                    buttonText: 'Online Appointment',
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BookForm()));
                    },
                  ),
                  // Text("Online Appointment"),
                  const SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: HomeCustomButton(
                              nameImage: 'p2.png',
                              buttonText: 'Doctor List',
                              onTap: () {},
                            ),
                          ),
                          Expanded(
                            child: HomeCustomButton(
                              nameImage: 'p3.png',
                              buttonText: 'Support',
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
