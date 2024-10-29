import 'package:flutter/material.dart';

//Class CustomButton
class CustomButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color btncolor;
  final TextStyle? textStyle;
  //VoidCallback donot takes arguments nor return values
  final VoidCallback? callBack;

// Constructor of class CustomButton
  const CustomButton(
      {super.key,
      required this.btnName,
      this.icon,
      required this.btncolor,
      this.textStyle,
      this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: btncolor,
        shadowColor: btncolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: const Size(40, 40),
      ),
      onPressed: () {
        callBack!();
      },
      child: icon != null
          ? Row(
              children: [
                icon!,
                Text(
                  btnName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
    );
  }
}
