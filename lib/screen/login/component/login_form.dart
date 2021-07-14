import 'package:O2help/components/primary_button.dart';
import 'package:O2help/constants.dart';
import 'package:O2help/screen/home/home_screen.dart';
import 'package:O2help/size_config.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String name, phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            buildPhoneFormField(),
            SizedBox(
              height: 30,
            ),
            buildNameFormField(),
            SizedBox(
              height: 20,
            ),
            PrimaryButton(
              label: 'Login',
              press: () {
                        if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                // if all are valid then go to success screen
                // KeyboardUtil.hideKeyboard(context);
                // signIn(emailController.text, passwordController.text)
                //     .then((value) => {
                //           Navigator.pushNamed(context, HomeScreen.routeName),
                //         });
                  Navigator.pushNamed(context, HomeScreen.routeName);
              }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => name = newValue,
      controller: nameController,
      validator: (value) {
        name = value;
        if (value == null || value.isEmpty) {
          return 'Need your nick name';
        }
        return null;
      },
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: "Nick Name",
        hintText: "Enter your nick name",
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      controller: phoneController,
      validator: (value) {
        phoneNumber = value;
        if (value == null || value.isEmpty) {
          return 'Need your phone number';
        }
        return null;
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your phone number",
      ),
    );
  }
}
