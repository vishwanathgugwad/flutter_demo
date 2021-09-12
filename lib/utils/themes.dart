import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{

  static const Color white = Color(0xFFFFFFFF);

  static const Color blue = Color(0xFF5B77FF);
  static const Color green = Color(0xFF58DAA4);

  static const Color lightGray = Color(0xFFCBCBCB);
  static const Color gray = Color(0xFFA8A8A8);
  static const Color darkGray = Color(0xFF3E3E3E);
  static const Color searchBackgroundGray = Color(0xFFF5F5F5);

  static const String fontName = 'Montserrat';
  static ThemeData lightTheme(BuildContext context)=>
      ThemeData(
          primarySwatch: Colors.deepPurple,
          cardColor: Colors.white,
          canvasColor: creamColor,
          buttonColor: darkBluishColor,
          accentColor: darkBluishColor,
          fontFamily: GoogleFonts.poppins().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme,
            centerTitle: true,
          )
      );



  static ThemeData darkTheme(BuildContext context)=>
      ThemeData(
          brightness: Brightness.dark,
          cardColor: Colors.black,
         // canvasColor: darkCreamColor,
          //buttonColor: liteBluishColor,
          accentColor: Colors.white,
          fontFamily: GoogleFonts.poppins().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            //textTheme: Theme.of(context).textTheme.copyWith(headline6: context.textTheme.headline6!.copyWith(color: Colors.white)),
            centerTitle: true,
          ));



  static final TextTheme _lightTextTheme = TextTheme(
      headline1: HeadingOne,
      headline2: HeadingTwo,
      subtitle1: SubTitleOne,
      subtitle2: SubTitleTwo,
      bodyText1: Body,
      bodyText2: BodyWhite,
      button: ButtonTextOne,
      caption: caption
  );


  static const TextStyle HeadingOne = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 34,
      //letterSpacing: 41,
      color: darkGray
  );

  static const TextStyle HeadingTwo = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      //letterSpacing: 22,
      color: darkGray
  );
  static const TextStyle HeadingTwoWhite = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      //letterSpacing: 22,
      color: white
  );

  static const TextStyle SubTitleOne = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 15,
      //letterSpacing: 19,
      color: darkGray
  );

  static const TextStyle SubTitleTwo = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 15,
      //letterSpacing: 19,
      color: darkGray
  );

  static const TextStyle SubTitleLightGray = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 15,
      //letterSpacing: 19,
      color: gray
  );

  static const TextStyle SubTitleRed = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 15,
      //letterSpacing: 19,
      color: Colors.red
  );

  static const TextStyle SubTitleBlue = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 15,
      //letterSpacing: 19,
      color: blue
  );

  static const TextStyle SubTitleThree = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 12,
      //letterSpacing: 15,
      color: blue
  );

  static const TextStyle SubTitleWhiteOne = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 15,
      //letterSpacing: 19,
      color: white
  );

  static const TextStyle SubTitleWhiteTwo = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 15,
      //letterSpacing: 19,
      color: white
  );

  static const TextStyle Body = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      //letterSpacing: 19,
      color: darkGray
  );

  static const TextStyle LightGrayBody = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      //letterSpacing: 19,
      color: gray
  );

  static const TextStyle BodyWhite = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      //letterSpacing: 19,
      color: white
  );

  static const TextStyle caption = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      //letterSpacing: 15,
      color: gray
  );

  static const TextStyle ButtonTextOne = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 13,
      //letterSpacing: 16,
      color: green
  );

  static const TextStyle SuccessText = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      //letterSpacing: 16,
      color: green
  );

  // ButtonTextTwo ButtonTextThree ButtonTextTFour
  static const TextStyle ButtonTextTwo = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 13,
      //letterSpacing: 16,
      color: blue
  );

  static const TextStyle ButtonTextGray = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 13,
      //letterSpacing: 16,
      color: gray
  );

  //
  static const TextStyle FieldBody = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 15,
      //letterSpacing: 19,
      color: darkGray
  );

  static const TextStyle FieldDescription = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 15,
      //letterSpacing: 19,
      color: gray
  );

  static const TextStyle FieldHeadline = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w600,
      fontSize: 15,
      //letterSpacing: 19,
      color: blue
  );
  static const TextStyle pinTextStyle = TextStyle(
      fontFamily: fontName,
      fontWeight: FontWeight.w700,
      fontSize: 13,
      //letterSpacing: 16,
      color: darkGray
  );



  static Color creamColor = Color(0xfff5f5f5);
  //static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  //static Color liteBluishColor = Vx.indigo500;
}