import 'package:flutter/material.dart';
import 'package:flutter_login/page/reportloginpage.dart';
import 'package:flutter_login/src/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  right: 50, top: 100, bottom: 50, left: 150),
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: AutofillHints.countryCode,
                  fontWeight: FontWeight.w700,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: 350,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(29)),
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person_add_alt_1_rounded,
                        color: Colors.white,
                      ),
                      hintText: "Username",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: 350,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock_rounded,
                        color: Colors.white,
                      ),
                      hintText: "Password",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 350,
                height: 55,
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ReportLoginPage(
                            username: username.text, password: password.text)));
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ))),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an Account ? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RegisterPage(title: 'page2');
                      }));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
