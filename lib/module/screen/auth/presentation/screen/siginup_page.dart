import 'package:fitnessapp/module/screen/auth/presentation/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../core/presentation/resources/size_constants.dart';
import '../../../../core/presentation/resources/ui_assets.dart';
import '../../../../core/presentation/widget/forms/buttons.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
          margin:
              const EdgeInsets.symmetric(horizontal: SC.lW, vertical: SC.lH),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Center(
                child: Container(
                    height: 70,
                    margin: const EdgeInsets.symmetric(
                        horizontal: SC.mW, vertical: SC.mH),
                    padding: const EdgeInsets.symmetric(
                        horizontal: SC.mW, vertical: SC.mH),
                    child: Image.network(
                        'https://w7.pngwing.com/pngs/249/620/png-transparent-apple-watch-physical-fitness-physical-exercise-fitness-app-excersice-physical-fitness-fitness-logo.png')),
              ),
              SBC.mH,
              SBC.xLH,
              Text(
                'Your e-mail/number *',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: 'please Enter your Valid Email Address ',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              SBC.xLH,
              Text(
                'Address *',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.location_city),
                  labelText: 'please  Address ',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              SBC.xLH,
              Text(
                'Password ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Enter Your Password *',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              SBC.xLH,
              Text(
                'Confirm Password',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Conform your password ',
                ),
                onSaved: (String? value) {
                  // This optional block of code can be used to run
                  // code when the user saves the form.
                },
                validator: (String? value) {
                  return (value != null && value.contains('@'))
                      ? 'Do not use the @ char.'
                      : null;
                },
              ),
              SBC.xxLH,
              PrimaryButton(
                onPressed: (_) {},
                title: 'Sign up',
              ),
              SBC.xxLH,
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'or Signin Using',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    SBC.sH,
                    SBC.xLH,
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'already registered? ',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          PrimaryTextButton(
                            title: 'sign in',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
