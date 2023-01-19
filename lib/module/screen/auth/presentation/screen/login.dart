import 'package:fitnessapp/module/Landing_page/presentation/screen/landing_page.dart';
import 'package:fitnessapp/module/screen/auth/presentation/screen/siginup_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/resources/size_constants.dart';
import '../../../../core/presentation/resources/ui_assets.dart';
import '../../../../core/presentation/widget/forms/buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                'Your e-mail',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'What do people call you?',
                  labelText: 'Name *',
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
              SBC.mH,
              Text(
                'Password',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Enter Your password *',
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
              SBC.mH,
              Align(
                  alignment: Alignment.topRight,
                  child: PrimaryTextButton(
                      title: 'Forgot Password ?', onPressed: () {})),
              SBC.mH,
              Row(
                children: [
                  const Icon(Icons.check_box_outline_blank),
                  SBC.sW,
                  Text(
                    'Keep me logged in',
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
              SBC.xLH,
              PrimaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Landing_Page()),
                    );
                  },
                  title: 'Log in'),
              SBC.xLH,
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Or Signin Using',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    SBC.sH,
                  ],
                ),
              ),
              //todo add google fb icon
              SBC.xLH,
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'New User ? ',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    PrimaryTextButton(
                      title: 'Create Account',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()),
                        );
                      },
                    ),
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
