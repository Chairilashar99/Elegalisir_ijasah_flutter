import 'package:flutter/material.dart';
import '../../theme.dart';

class CustomInputField extends StatelessWidget {
  final IconData iconData;
  final String labelText;
  final String hintText;
  final bool isPassword;

  CustomInputField({
    required this.iconData,
    required this.labelText,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFD9DAF6),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xff4245d1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Icon(iconData, color: Colors.white),
                  alignment: Alignment.center,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: TextFormField(
                      autofocus: true,
                      enableInteractiveSelection: true,
                      showCursor: true,
                      obscureText: isPassword,
                      cursorColor: inlineColor,
                      style: inlineTextStyle.copyWith(
                        fontSize: 10,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hintText,
                        hintStyle: inlineTextStyle.copyWith(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
