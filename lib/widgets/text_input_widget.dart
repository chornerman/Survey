import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final String? hintText;
  final bool isPasswordInput;

  const TextInputWidget({
    Key? key,
    this.hintText,
    this.isPasswordInput = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 4),
              child: TextFormField(
                obscureText: isPasswordInput,
                enableSuggestions: isPasswordInput,
                autocorrect: isPasswordInput,
                style: const TextStyle(fontSize: 17, color: Colors.white),
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                      fontSize: 17, color: Colors.white.withOpacity(0.3)),
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            flex: 1,
          ),
          if (isPasswordInput)
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 12),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              flex: 0,
            ),
        ],
      ),
    );
  }
}
