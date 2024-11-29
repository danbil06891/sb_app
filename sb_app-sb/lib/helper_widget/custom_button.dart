import 'package:flutter/material.dart';
import 'package:sbapp/constants/color_constant.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String? text;
  final IconData? icon;
  const CustomButton({Key? key, this.onTap, this.text, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 60,
      width: MediaQuery.of(context).size.width * 0.8,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(primaryColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              // side: BorderSide(color: Colors.red),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text!,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              icon,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
