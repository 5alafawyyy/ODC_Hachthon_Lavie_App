import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';

class CustomIconButton extends StatelessWidget {
  final void Function() onpressed;
  final String iconAsset;
  double iconSize;

  CustomIconButton({
    Key? key,
    required this.onpressed,
    required this.iconAsset,
    this.iconSize = FontSize.s25, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onpressed();
      },
      icon: Image.asset(
        iconAsset,
      ),
      iconSize: iconSize,
    );
  }
}
