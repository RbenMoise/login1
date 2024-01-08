// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_button.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/square_tile.dart';

class login_page extends StatelessWidget {
  login_page({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(height: 50),
              // logo
              Icon(Icons.lock),

              SizedBox(height: 50),
              //welcomeback
              Text(
                'welcome Text',
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              SizedBox(height: 50),
              MyTextfield(
                controller: usernameController,
                hintText: 'UserName',
                obscureText: false,
              ),
              SizedBox(height: 5),
              MyTextfield(
                controller: passwordController,
                hintText: 'UserName',
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Mybutton(
                onTap: signUserIn,
              ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Or continuee With',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(thickness: 0.5, color: Colors.grey[400]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image.asset('lib/imgs/puzzle.jpg')
                  Column(
                    children: [
                      Column(
                        children: [
                          Text('email'),
                          SquareTiles(imagePath: 'lib/imgs/puzzle.jpg',
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  
                  Column(
                    children: [
                      Text('google'),
                      SquareTiles(imagePath: 'lib/imgs/gloden_Tech.jpg'),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Text('Not a member?'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
