import 'package:flutter/cupertino.dart';

class CustomTFT extends StatelessWidget {
  final String ddText;
  final TextStyle? textStyle;
  const CustomTFT({super.key, required this.ddText, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            ddText,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

class CustomDDRow extends StatelessWidget {
  final String title1;
  final String title2;

  CustomDDRow({this.title1 = '', this.title2 = ''});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomTFT(
          ddText: title1,
        )),
        Expanded(
            child: CustomTFT(
          ddText: title2,
        )),
      ],
    );
  }
}
