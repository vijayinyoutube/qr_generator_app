import 'package:flutter/material.dart';
import '../../../Declarations/Constants/constants.dart';

class InputField extends StatelessWidget {
  const InputField(
      {super.key, required this.controller, required this.generateQR});

  final TextEditingController controller;
  final Function generateQR;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(5.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryColor,
            ),
          ),
          suffixIcon: Container(
              color: primaryColor.withOpacity(0.25),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: TextButton(
                  onPressed: () => generateQR(),
                  child: Text(
                    'Go',
                    style: TextStyle(
                        color: primaryColor, fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          filled: true,
          fillColor: Colors.red[50],
          labelText: "Enter the data for generating QR Code",
          labelStyle: TextStyle(color: primaryColor),
        ),
      ),
    );
  }
}
