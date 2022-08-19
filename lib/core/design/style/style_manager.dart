import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';

// Main text Style
TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontSize: fontSize.sp,
    fontWeight: fontWeight,
    color: color,
  );
}

// Regular Style
TextStyle getRegularStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize.sp,
    FontWeightManager.regular,
    color,
  );
}

// Medium Style
TextStyle getMediumStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize.sp,
    FontWeightManager.medium,
    color,
  );
}

// Bold Style
TextStyle getBoldStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize.sp,
    FontWeightManager.bold,
    color,
  );
}

// Light Style
TextStyle getLightStyle({
  double fontSize = FontSize.s12,
  required Color color,
}) {
  return _getTextStyle(
    fontSize.sp,
    FontWeightManager.light,
    color,
  );
}
