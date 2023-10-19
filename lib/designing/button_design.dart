import 'package:flutter/material.dart';

class HomeCustomButton extends StatelessWidget {
  final String nameImage;
  final String buttonText;
  final VoidCallback? onTap;
  const HomeCustomButton({
    super.key,
    required this.nameImage,
    required this.buttonText,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Column(children: [
          Card(
            elevation: 10.0,
            shadowColor: Colors.grey.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              padding: const EdgeInsets.all(20),
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(
                'images/$nameImage',
                width: 50,
                height: 50,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            buttonText,
          ),
        ]));
  }
}

class ButtonDesign extends StatelessWidget {
  final String name;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;
  const ButtonDesign(
      {super.key,
      required this.name,
      required this.onTap,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor, // Set the background color to red
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(19.0),
          child: SizedBox(
            width: double.infinity,
            height: 20, // Stretch the button horizontally
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Set the alignment here
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: textColor, // Set the text color to white
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
