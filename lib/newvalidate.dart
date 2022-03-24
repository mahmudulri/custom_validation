import 'package:flutter/material.dart';

class Newvalidate extends StatefulWidget {
  const Newvalidate({Key? key}) : super(key: key);

  @override
  State<Newvalidate> createState() => _NewvalidateState();
}

GlobalKey<FormState> _formKey = GlobalKey();

class _NewvalidateState extends State<Newvalidate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("RegExp (Custom) Validate"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        String patttern = r'(^[a-zA-Z ]*$)';
                        RegExp regExp = RegExp(patttern);
                        if (value!.isEmpty) {
                          return "Enter your mail address";
                        } else if (!regExp.hasMatch(value)) {
                          return "Email must be a-z and A-Z";
                        } else {
                          return null;
                        }
                      },
                      autovalidateMode: AutovalidateMode.always,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter email address",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
