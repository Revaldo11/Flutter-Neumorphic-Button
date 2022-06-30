import 'package:flutter/material.dart';

class NeumorphicButton extends StatelessWidget {
  NeumorphicButton({Key? key, this.onTap, required this.isButtonPressed})
      : super(key: key);

  final onTap;
  bool isButtonPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 160.0,
        width: 160.0,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color:
                isButtonPressed ? Colors.grey.shade200 : Colors.grey.shade300,
          ),
          boxShadow: isButtonPressed
              ? []
              : [
                  // bottom right shadow
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(6, 6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  // bottom left shadow
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-6, -6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ],
        ),
        child: Icon(
          Icons.android,
          size: 60,
          color: isButtonPressed ? Colors.green[400] : Colors.red[400],
        ),
      ),
    );
  }
}
