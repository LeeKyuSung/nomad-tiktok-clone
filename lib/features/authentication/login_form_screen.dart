import 'package:flutter/material.dart';
import 'package:tiktok_clone/features/authentication/widgets/form_button.dart';

import '../../constants/gaps.dart';
import '../../constants/sizes.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, String> formData = {};

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size40,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Gaps.v28,
              TextFormField(
                validator: ((value) {
                  //return "Email wrong";
                  return null;
                }),
                onSaved: ((newValue) {
                  if (newValue != null) formData["email"] = newValue;
                }),
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
              Gaps.v16,
              TextFormField(
                validator: (value) {
                  //return "Wrong Password";
                  return null;
                },
                onSaved: ((newValue) {
                  if (newValue != null) formData["password"] = newValue;
                }),
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
              ),
              Gaps.v28,
              FormButton(
                text: "LOG IN",
                disabled: false,
                onTap: _onSubmitTap,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: Sizes.size20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Don't have an account?",
              ),
              Gaps.h5,
              // GestureDetector(
              //   onTap: () => _onSignUpTap(context),
              //   child: Text(
              //     'Sign up',
              //     style: TextStyle(
              //       color: Theme.of(context).primaryColor,
              //       fontWeight: FontWeight.w600,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
