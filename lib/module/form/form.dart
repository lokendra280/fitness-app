import 'package:flutter/material.dart';

import '../core/presentation/resources/size_constants.dart';
import '../core/presentation/resources/ui_assets.dart';
import '../core/presentation/widget/forms/buttons.dart';

class CaloaryForm extends StatelessWidget {
  const CaloaryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'FoodCalories',
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.black, letterSpacing: 2),
          ),
          leading: InkWell(
            onTap: () {},
            child: const Icon(
              Icons.close_outlined,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: SC.mW, vertical: SC.lH),
                margin: const EdgeInsets.symmetric(
                    horizontal: SC.mW, vertical: SC.mH),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: SC.mW,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SBC.lH,
                      Text('Workout Name',
                          style: Theme.of(context).textTheme.bodyText2),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.work),
                          labelText: 'Enter a workout Name',
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
                      SBC.lH,
                      Text('workoutDuration',
                          style: Theme.of(context).textTheme.bodyText2),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.do_disturb_alt_outlined),
                          labelText: 'workoutDuration',
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
                      SBC.lH,
                      Text('workoutCalories',
                          style: Theme.of(context).textTheme.bodyText2),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.calculate),
                          labelText: 'workoutCalories',
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
                      SBC.lH,
                      Text(
                        "foodName",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.food_bank),
                          labelText: 'foodName',
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
                      SBC.lH,
                      Text(
                        "foodCalories",
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.time_to_leave),
                          labelText: 'foodCalories',
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
                      const SizedBox(
                        height: 20,
                      ),
                      PrimaryButton(
                          onPressed: () {},
                          title: 'Submit',
                          color: const Color.fromRGBO(139, 40, 84, 1),
                          width: MediaQuery.of(context).size.width / 1.1,
                          radius: 12.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
