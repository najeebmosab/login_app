import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: Colors.purple[300],
          child: Icon(Icons.home),
        ),
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
          backgroundColor: Colors.purple[300],
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 222,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(50)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email: ",
                      icon: Icon(Icons.email),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 222,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(50)),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password: ",
                      icon: Icon(Icons.lock),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 222,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple[300]),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 60, vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                    ),
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
