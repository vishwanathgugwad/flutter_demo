import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';
import 'package:flutter_demo/utils/themes.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatefulWidget {
  final String phone;

  const OtpPage({Key? key,  required this.phone}) : super(key: key);

  @override
  _OtpPageState createState() => _OtpPageState(phone);
}

class _OtpPageState extends State<OtpPage> {
  String otp = "";
  bool changeButton = false;
  _OtpPageState(String phone);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
body: Builder(
builder: (context)=>Container(
child: SingleChildScrollView(
child: Column(
  children: [
    Container(
        padding: EdgeInsets.fromLTRB(16.0, 104.0, 16.0, 16.0),
        child: Center(
          child: Image.asset('assets/images/login_image.png'),
        )),
    Container(
      padding: EdgeInsets.fromLTRB(16.0, 64.0, 16.0, 16.0),
      child: Text("Enter OTP",style: TextStyle(
        color: Colors.deepPurple,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),  ),
    ),

    Container(
        padding: EdgeInsets.all(16.0),
        child: PinCodeTextField(
          keyboardType: TextInputType.number,
          appContext: context,
          textStyle: MyTheme.pinTextStyle,
          pastedTextStyle: MyTheme.pinTextStyle,
          length: 4,
          validator: (v) {
            if (v!.length < 4) {
              return "OTP must be 4 digit";
            } else {
              return null;
            }
          },
          onCompleted: (v) {
            print("Completed");
          },
          // onTap: () {
          //   print("Pressed");
          // },
          onChanged: (value) {
            print(value);
            setState(() {
              otp = value;
            });
          },
          // beforeTextPaste: (text) {
          //   print("Allowing to paste $text");
          //   //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
          //   //but you can show anything you want here, like your pop up saying wrong paste format or etc
          //   return true;
          // },
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 60,
            fieldWidth: 50,
            activeColor: MyTheme.blue,
            activeFillColor: MyTheme.blue,
          ),
        )),
    SizedBox(height: 20.0),
    Material(
      color: Colors.deepPurple,
      borderRadius: BorderRadius.circular(changeButton?20: 8),
      child: InkWell(
        onTap: () => {
          Navigator.pushNamed(context, MyRoutes.homeRoute)
        },
        child: AnimatedContainer(
          width: changeButton? 50 : 150,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: changeButton? BoxShape.circle:BoxShape.rectangle,


          ),
          duration: Duration(seconds: 1),
          child: changeButton? Icon(Icons.done,color: Colors.black,) :Text(
            "Sign In",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
            ),
          ),


        ),
      ),
    )


  ],
),
),
),
),
    );
  }
}
