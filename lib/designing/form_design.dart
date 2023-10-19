import 'package:flutter/material.dart';

/*
      Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              text,
              style: const TextStyle(
                  color: Color(0xff850101), fontWeight: FontWeight.bold),
            ),
          ),
          //Padding(
          // padding: const EdgeInsets.all(8.0),
          // child: DropdownButtonFormField(
          //   decoration: InputDecoration(
          //       hintText: "Select Doctor From List",
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(
          //           (10),
          //         ),
          //       )),
          //
          //   // borderRadius: BorderRadius.all(Radius.circular(20)),
          //   value: _value,
          //   // value: selectText,
          //   // items: const [
          //   //   DropdownMenuItem(
          //   //     value: 'prof Dr saleh',
          //   //     child: Text("prof Dr saleh"),
          //   //   ),
          //   //   DropdownMenuItem(
          //   //     value: 'prof Dr S Omor',
          //   //     child: Text('prof Dr S Omor'),
          //   //   ),
          //   //   DropdownMenuItem(
          //   //     value: 'Prof Dr Ahmed',
          //   //     child: Text('Prof Dr Ahmed'),
          //   //   )
          //   // ],
          //   items: [
          //     DropdownMenuItem(
          //       value: 'prof Dr saleh',
          //       child: Text("prof Dr saleh"),
          //     ),
          //     DropdownMenuItem(
          //       value: 'prof Dr S Omor',
          //       child: Text('prof Dr S Omor'),
          //     ),
          //     DropdownMenuItem(
          //       value: 'Prof Dr Ahmed',
          //       child: Text('Prof Dr Ahmed'),
          //     )
          //   ],
          //   onChanged: (Object? value) {},
          // ),
        ],
      ),
      */

class CustomButton extends StatefulWidget {
  final List<String> textItem;
  final String labelText;
  final String text;
  const CustomButton(
      {super.key,
      required this.text,
      required this.textItem,
      required this.labelText});
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            widget.labelText,
            style: const TextStyle(
                color: Color(0xff850101), fontWeight: FontWeight.bold),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(widget.text),
                  focusColor: Colors.deepOrange,
                  items: widget.textItem.map((String dropDownStringItem) {
                    return DropdownMenuItem(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue;
                    });
                  },
                  underline: Container(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String text;
  final String labelText;
  final TextEditingController myController;
  const CustomTextField(
      {super.key,
      required this.text,
      required this.labelText,
      required this.myController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              text,
              style: const TextStyle(
                  color: Color(0xff850101), fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                controller: myController,
                decoration: InputDecoration(
                    hintText: labelText,
                    labelStyle: const TextStyle(color: Color(0xff850101)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        (10),
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ButtonDesign extends StatelessWidget {
  final String? name;
  final VoidCallback onTap;
  final Color buttonDesignColor;
  final Color textColor;

  const ButtonDesign({
    super.key,
    this.name,
    required this.onTap,
    required this.textColor,
    required this.buttonDesignColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonDesignColor, // Set the background color to red
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name!,
                style: TextStyle(
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
