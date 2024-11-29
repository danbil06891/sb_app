import 'package:flutter/material.dart';
import 'package:sbapp/constants/color_constant.dart';

class FeesHistroyWidget extends StatelessWidget {
  final String? text;
  final int? regID;
  final int? index;
  const FeesHistroyWidget({Key? key, this.text, this.regID = 0, this.index})
      : super(
          key: key,
        );

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: index == 0
            ? green
            : index == 1
                ? red
                : index == 3
                    ? red
                    : green,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text!,
            style: const TextStyle(color: whiteColor, fontSize: 16),
          ),
          RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  child: Icon(
                    Icons.app_registration_outlined,
                    size: 18,
                    color: whiteColor,
                  ),
                ),
                TextSpan(
                    text: regID.toString(),
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
