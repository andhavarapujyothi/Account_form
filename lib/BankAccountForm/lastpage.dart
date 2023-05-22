import 'package:flutter/material.dart';

class Mylastpage extends StatelessWidget {
  const Mylastpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bank Account Form'),
        ),
        body: Center(
          child: Column(
            children: const [
              SizedBox(
                height: 150,
              ),
              Text(
                'Thank You ',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('You are successfully submitted your application',
                  style: TextStyle(fontSize: 18))
            ],
          ),
        ));
  }
}
