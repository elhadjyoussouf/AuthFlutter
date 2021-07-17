import 'package:article/widgets/customTextField.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  //final Function visible;
  final Function()? visible;
  Register(this.visible); //Parameter bool for register onclick
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  CustomTextField emailText = new CustomTextField(
    title: "Email",
    placeholder: "Enter email",
  );
  CustomTextField passText = new CustomTextField(
      title: "Password", placeholder: "***********", ispass: true);
  CustomTextField confirmPassText = new CustomTextField(
      title: "Confirm Password", placeholder: "***********", ispass: true);
  // ignore: unused_field
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    emailText.err = "Enter email";
    passText.err = "Enter password";
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(30),
              child: Form(
                key: _key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Register",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    emailText.textfrofield(),
                    SizedBox(
                      height: 10,
                    ),
                    passText.textfrofield(),
                    SizedBox(
                      height: 10,
                    ),
                    confirmPassText.textfrofield(),
                    SizedBox(
                      height: 10,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        onPressed: () {
                          if (_key.currentState!.validate()) {
                            print(emailText);
                            print('ok');
                          }
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.redAccent.withOpacity(.7)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Avez-vous un compte? '),
                        // ignore: deprecated_member_use
                        FlatButton(
                            onPressed: widget.visible,
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.redAccent),
                            ))
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
