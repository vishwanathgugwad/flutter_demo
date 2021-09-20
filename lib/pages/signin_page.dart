import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/routes.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String name="";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  // moveToOtp(BuildContext context) async{
  //   if(_formKey.currentState!.validate()) {
  //     setState(() {
  //       changeButton = true;
  //     });
  //
  //     await Future.delayed(Duration(seconds: 1));
  //
  //     await Navigator.pushNamed(context, MyRoutes.otproute);
  //     setState(() {
  //       changeButton = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 40.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png",fit: BoxFit.cover,),
                SizedBox(
                  height: 20.0,

                ),
                Text("welcome $name" ,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 20.0,

                ),
                // TextFormField(
                //
                //   decoration: InputDecoration(
                //     hintText: " enter phonenumber",
                //     labelText: "PhoneNumber",
                //
                //   ),
                //   validator: (value){
                //     if(value!.isEmpty){
                //       return "Username cannot be empty";
                //     }
                //     return null;
                //   },
                //   onChanged: (value){
                //     name= value;
                //     setState(() {});
                //   },
                // ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    maxLength: 10,
                    //controller: mobileNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter Your Mobile No."),
                  ),
                ),
                SizedBox(
                  height: 40.0,

                ),
                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton?20: 8),
                  child: InkWell(
                    onTap: () => {
                      Navigator.pushNamed(context, MyRoutes.otproute)
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
                        "Login",
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
