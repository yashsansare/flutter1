import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String? gender = "Male";
  bool Learning = false;
  bool Reading = false;
  bool Writing = false;
  bool Gaming = false;
  TextEditingController txtfname = TextEditingController();
  TextEditingController txtmname = TextEditingController();
  TextEditingController txtlname = TextEditingController();
  TextEditingController txtcontact = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtbirthdate = TextEditingController();
  TextEditingController txtoccupation = TextEditingController();
  TextEditingController txtlangauge = TextEditingController();
  TextEditingController txtpassed = TextEditingController();
  TextEditingController txtskill = TextEditingController();
  TextEditingController txtother = TextEditingController();
  String? fname, mname,lname,contact, email, birthdate, langauge, passed, skill, Other;
  List Countrycode = [
    "+91",
    "+93",
    "+355",
    "+213",
    "+1-684",
    "+376",
    "+244",
    "+1-264",
    "+672",
    "+1-268",
    "+54",
    "+374",
    "+297",
    "+61",
    "+43",
    "+994",
    "1-242",
    "+973",
    "+880",
    "1-246",
    "+375",
    "+32",
    "+501",
    "+229",
    "+1-441",
    "+975",
    "591",
    "+387",
    "+267",
    "+55",
    "+246",
    "+1-284",
    "+673",
    "+359",
    "+226",
    "+257",
    "+855",
    "+237",
    "+1",
    "+238",
    "+1-345",
    "+236",
    "+56",
    "+86",
    "+61",
    "+61",
    "+57",
    "+269",
    "+682",
    "+506",
    "+385",
    "+53",
    "+599",
    "+357",
    "+420",
    "+243",
    "+45",
    "+253",
    "+1-767",
    "+1-809",
    "+670",
    "+593",
    "++20",
    "+503",
    "+240",
    "+291",
    "+372",
    "+251",
    "+500",
    "+298",
    "+679",
    "+358",
    "+33",
    "+689",
    "+241",
    "+220",
    "+995",
    "+49",
    "+233",
    "+350",
    "+30",
    "+299",
    "+1-473",
    "+1-671",
    "+502",
    "+224",
    "+245",
    "+592",
    "+509",
    "+504",
    "+852",
    "+36",
    "+354",
    "+62",
    "+98",
    "+964",
    "+353",
    "+972",
    "+39",
    "+225",
    "+1-876",
    "+81",
    "+962",
    "+7",
    "+254",
    "+686",
    "+383",
    "+965",
    "+996",
    "+856",
    "+371",
    "+961",
    "+266",
    "+231",
    "+218",
    "+423",
    "+370",
    "+352",
    "+853",
    "+389",
    "+261",
    "+265",
    "+60",
    "+960",
    "+223",
    "+356",
    "+692",
    "+222",
    "+230",
    "+262",
    "+52",
    "+691",
    "+373",
    "+377",
    "+976",
    "+382",
    "+1-664",
    "+212",
    "+258",
    "+95",
    "+264",
    "+674",
    "+977",
    "+31",
    "+599",
    "+687",
    "+64",
    "+505",
    "+227",
    "+234",
    "+683",
    "+850",
    "+1-670",
    "+47",
    "+968",
    "+92",
    "+680",
    "+970",
    "+507",
    "+675",
    "+595",
    "+51",
    "+63",
    "+64",
    "+58",
    "+351",
    "+1-787",
    "+974",
    "+242",
    "+262",
    "+40",
    "+7",
    "+250",
    "+590",
    "+290",
    "+1-869",
    "+1-758",
    "+590",
    "+508",
    "+1-784",
    "+685",
    "+378",
    "+239",
    "+966",
    "+221",
    "+381",
    "+248",
    "+232",
    "+65",
    "+1-721",
    "+421",
    "+386",
    "+677",
    "+252",
    "+27",
    "+82",
    "+211",
    "+34",
    "+94",
    "+249",
    "+597",
    "+47",
    "+268",
    "+46",
    "+41",
    "+963",
    "+886",
    "+992",
    "+225",
    "+66",
    "+228",
    "+690",
    "+676",
    "+1-868",
    "+216",
    "+90",
    "+993",
    "+1-649",
    "+688",
    "+1-340",
    "+256",
    "+380",
    "+971",
    "+44",
    "+1",
    "+598",
    "+998",
    "+678",
    "+379",
    "+58",
    "+84",
    "+681",
    "+212",
    "+967",
    "+260",
    "+263"
  ];
  String pin = "+91";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Resume",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Personal information :-",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                  h(10),
                  get("First Name"),
                  h(5),
                  fild("Enter First Name", Icons.edit, Text(""),TextInputType.text),
                  h(10),
                  get("Middle Name"),
                  h(5),
                  fild("Enter Middle Name", Icons.edit, Text(""),TextInputType.text),
                  h(10),
                  get("Last Name"),
                  h(5),
                  fild("Enter Last Name", Icons.edit, Text(""),TextInputType.text),
                  h(10),
                  get(
                    "Contact Number",
                  ),
                  h(5),
                  fild(
                      "Enter Contact Number",
                      Icons.call,
                      DropdownButton(
                        items: Countrycode.map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: "$e",
                        )).toList(),
                        onChanged: (value) {
                          setState(() {
                            pin = value as String;
                          });
                        },
                        value: pin,
                      )
                      ,TextInputType.text),
                  h(10),
                  get("Email"),
                  h(5),
                  fild("Enter Email", Icons.email, Text(""),TextInputType.text),
                  h(10),
                  get(
                    "Gender",
                  ),
                  h(10),
                  Row(
                    children: [
                      Radio(
                          value: "Male",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value as String;
                            });
                          }),
                      information("Male"),
                      Radio(
                          value: "Female",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value as String;
                            });
                          }),
                      information("Female"),
                    ],
                  ),
                  h(10),
                  get("Birth date"),
                  h(5),
                  fild("DD/MM/YYYY", Icons.calendar_month, Text(""),TextInputType.text),
                  h(10),
                  Text(
                    "Education & Skills",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                  h(10),
                  get("Occupation"),
                  h(5),
                  fild("Occupation", Icons.work, Text(""),TextInputType.text),
                  h(10),
                  get("Languages"),
                  h(5),
                  fild("Languages", Icons.language, Text(""),TextInputType.text),
                  h(10),
                  get("Education"),
                  h(5),
                  fild("Recently Passed", Icons.school, Text(""),TextInputType.text),
                  h(10),
                  get("Other"),
                  h(5),
                  fild("Other", Icons.edit, Text(""),TextInputType.text),
                  h(10),
                  get("Hobbies"),
                  Row(
                    children: [
                      Checkbox(
                          value: Learning,
                          onChanged: (value) {
                            setState(() {
                              Learning = value!;
                            });
                          }),
                      information("Learning"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: Reading,
                          onChanged: (value) {
                            setState(() {
                              Reading = value!;
                            });
                          }),
                      information("Reading"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: Writing,
                          onChanged: (value) {
                            setState(() {
                              Writing = value!;
                            });
                          }),
                      information("Writing"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: Gaming,
                          onChanged: (value) {
                            setState(() {
                              Gaming = value!;
                            });
                          }),
                      information("gaming"),
                    ],
                  ),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pushNamed(
                                  context,
                                  '#',
                                  arguments:[ fname,
                                        mname,
                                    lname,
                                    contact,
                                    email,
                                    birthdate,
                                    langauge,
                                    passed,
                                    skill,
                                    Other]);
                            });
                          },
                          child: Text("Next")))
                ],
              ),
            ),
          ),
        ));
  }

  Widget information(String data) {
    return Text(
      "$data",
      style: TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Colors.indigo),
    );
  }

  Widget h(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget get(
      String hint,
      ) {
    return Text(
      "$hint",
      style: TextStyle(fontSize: 20, color: Colors.indigo),
    );
  }

  Widget fild(String f, icon, Widget prefix,input) {
    return Container(
      height: 50,
      width: double.infinity,
      child: TextField(
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            label: Text(
              "$f",
              style: TextStyle(color: Colors.indigo),
            ),
            prefixIcon: Icon(
              icon,
              color: Colors.indigo,
            ),
            prefix: prefix),
      ),
    );
  }
}
