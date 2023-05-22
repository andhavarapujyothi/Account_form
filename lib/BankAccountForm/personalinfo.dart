import 'package:flutter/material.dart';
import 'package:flutter_application_3/BankAccountForm/lastpage.dart';
import 'package:intl/intl.dart';

class MyAccountForm extends StatefulWidget {
  const MyAccountForm({super.key});

  @override
  State<MyAccountForm> createState() => _MyAccountFormState();
}

class _MyAccountFormState extends State<MyAccountForm> {
  final TextEditingController _date = TextEditingController();
  int? selectedposition;
  int? groupvalue;
  var items = [
    'Account Type',
    '1.Savings Account',
    '2.Current Account',
    '3.Salary Account'
  ];
  String? value = 'Account Type';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
              child: Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1,
                right: 35,
                bottom: 60,
                left: 35),
            child: Column(children: [
              TextField(
                //controller: _date,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Name',
                  hintText: 'Enter Name',
                  prefixIcon: const Icon(Icons.person),
                  prefixIconColor: Colors.blueAccent[800],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Father Name',
                  hintText: 'Enter Father Name',
                  prefixIcon: const Icon(Icons.person),
                  prefixIconColor: Colors.blueAccent[800],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Phone Number',
                  hintText: 'Enter phone number',
                  prefixIcon: const Icon(Icons.phone),
                  prefixIconColor: Colors.blueAccent[800],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _date,
                decoration: InputDecoration(
                  labelText: 'Date Of Birth',
                  labelStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.calendar_today_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onTap: () async {
                  DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030));
                  if (pickeddate != null) {
                    setState(() {
                      _date.text = DateFormat.yMMMd().format(pickeddate);
                      // print(DateFormat.yMMMd().format(DateTime.now()));
                    });
                  }
                },
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    'Gender:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  const Text(
                    'Male',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Radio(
                      value: 0,
                      groupValue: groupvalue,
                      onChanged: (val) {
                        //  print('$val');
                        setState(() {
                          groupvalue = val!;
                        });
                      }),
                  const Text(
                    'Female',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Radio(
                      value: 1,
                      groupValue: groupvalue,
                      onChanged: (val) {
                        // print('$val');
                        setState(() {
                          groupvalue = val!;
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                maxLength: 10,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'PAN ID',
                  labelStyle: const TextStyle(color: Colors.black),
                  hintText: 'Enter PAN number',
                  prefixIcon: const Icon(Icons.numbers),
                  prefixIconColor: Colors.blueAccent[800],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                maxLength: 12,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Aathar ID',
                  labelStyle: const TextStyle(color: Colors.black),
                  hintText: 'Enter Aathar number',
                  prefixIcon: const Icon(Icons.numbers),
                  prefixIconColor: Colors.blueAccent[800],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Communication Address',
                style: TextStyle(
                    fontSize: 16, decoration: TextDecoration.underline),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Door Number',
                  prefixIcon: const Icon(Icons.home),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Street name',
                  prefixIcon: const Icon(Icons.home),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'City Name',
                  prefixIcon: const Icon(Icons.home),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Pin Code',
                  prefixIcon: const Icon(Icons.home),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Permanent Address',
                style: TextStyle(
                    fontSize: 16, decoration: TextDecoration.underline),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Door Number',
                  prefixIcon: const Icon(Icons.home),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Street Name',
                  prefixIcon: const Icon(Icons.home),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'City Name',
                  prefixIcon: const Icon(Icons.home),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  labelText: 'Pin Code',
                  prefixIcon: const Icon(Icons.home),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 2)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        value: value,
                        iconSize: 36,
                        icon: const Icon(
                          Icons.arrow_drop_down,
                        ),
                        isExpanded: true,
                        items: items.map(buildmenuitem).toList(),
                        onChanged: (value) => setState(() {
                              this.value = value;
                            })),
                  )),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Mylastpage()));
                  },
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    'Submit',
                  ))
            ]),
          )),
        ],
      ),
    );
  }

  DropdownMenuItem<String> buildmenuitem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(
          fontSize: 20,
        ),
      ));
}
