import 'package:bashundhara_hospital_uii/booked_appointmmen.dart';
import 'package:bashundhara_hospital_uii/designing/form_design.dart';
import 'package:flutter/material.dart';

import 'logo_title.dart';

class BookForm extends StatelessWidget {
  const BookForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController phone = TextEditingController();

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff850101),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const LogoTitle(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Book An Appointment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize:
                      14, // Optional: You can adjust the font size as well
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomButton(
                text: 'Choose The Doctor',
                textItem: [
                  'prof Dr saleh',
                  'prof Dr S Omor Faruk',
                  'Prof Dr Ahmed'
                ],
                labelText: 'Doctor',
              ),
              const CustomButton(
                text: 'Chose the Date',
                textItem: ['12.3.23', '22.3.23', '12.4.23'],
                labelText: 'Date',
              ),
              const CustomButton(
                text: 'Choose The Day',
                textItem: ['sunday', 'monday', 'tuesday'],
                labelText: 'Day',
              ),
              CustomTextField(
                text: "Full Name",
                labelText: "Enter your Full Name",
                myController: name,
              ),
              CustomTextField(
                text: "Phone Number",
                labelText: "000,000,00",
                myController: phone,
              ),
              ButtonDesign(
                name: 'Book appointment',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BookedAppointment(
                            name: name.text,
                            phoneNumber: phone.text,
                          )));
                },
                buttonDesignColor: const Color(0xff850101),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
