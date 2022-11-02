import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Welcome Home Page"),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome",style: TextStyle(color: Colors.purple[300]),),
              SizedBox(
                height: 20,
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
                  onPressed: () {
                    Navigator.pushNamed(context, "/Login");
                  },
                  child: const Text('Login'),
                ),
              ),
              SizedBox(
                height: 20,
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
                  onPressed: () {
                    Navigator.pushNamed(context, "/SingUp");

                  },
                  child: const Text('SingUp'),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
