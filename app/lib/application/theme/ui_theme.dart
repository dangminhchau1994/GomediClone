import 'package:app/application/theme/ui_color.dart';
import 'package:app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      color: UIColors.lightBlue,
      iconTheme: IconThemeData(color: UIColors.blue),
    ),
    backgroundColor: Colors.white,
    primaryColor: UIColors.blue,
    unselectedWidgetColor: Colors.grey,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ThemeData.light().colorScheme.copyWith(
          secondary: UIColors.lightBlue,
        ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: UIColors.blue,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: const Size.fromHeight(40),
        elevation: 0,
        textStyle: ThemeData.light()
            .textTheme
            .bodyText2
            ?.copyWith(fontWeight: FontWeight.w700),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(Colors.white),
      fillColor: MaterialStateProperty.all(UIColors.blue),
      side: const BorderSide(
        color: Colors.black,
      ),
    ),
    iconTheme: IconThemeData(color: UIColors.blue),
    dividerColor: UIColors.lightGrey,
    dividerTheme: const DividerThemeData(color: Colors.grey),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: Theme.of(context).textTheme.subtitle1?.copyWith(
            fontFamily: FontFamily.robotoMono,
            fontSize: 12,
            color: UIColors.lightGrey,
          ),
    ),
    textTheme: Theme.of(context).textTheme.copyWith(
          subtitle1: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.black,
                fontFamily: FontFamily.raleway,
              ),
          caption: Theme.of(context).textTheme.caption?.copyWith(
                fontSize: 14,
                color: Theme.of(context).textTheme.caption?.color,
                fontFamily: FontFamily.robotoMono,
              ),
          bodyText1: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: UIColors.lightGrey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: FontFamily.robotoMono,
              ),
        ),
  );
}
