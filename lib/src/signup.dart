import 'package:flutter/material.dart';
import 'package:flutter_login/page/reportsignuppage.dart';
import 'package:flutter_login/src/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController email = new TextEditingController();
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  final fromKey = GlobalKey<FormState>();

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
                "Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
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
                    controller: email,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.email_rounded,
                        color: Colors.white,
                      ),
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
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
                        Icons.person_add,
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
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width: 350,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(29)),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.lock_open_outlined,
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
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29.0),
                      ))),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () async {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ReportSignupPage(
                            email: email.text,
                            name: username.text,
                            password: password.text)));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an Account ? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return LoginPage(title: 'page1');
                      }));
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
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
