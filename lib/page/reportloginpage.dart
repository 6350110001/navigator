import 'package:flutter/material.dart';

class ReportLoginPage extends StatelessWidget {
  String username, password;

  ReportLoginPage({Key? key, required this.username, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 5),
              child: Text(
                "$username",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                'Username : $username',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                'Password : $password',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 250,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  child: Text(
                    "Back",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.pop(context, "Hello");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
