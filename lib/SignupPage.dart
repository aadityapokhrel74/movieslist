import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';
class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: Center(
        child: SingleChildScrollView(


          child: Padding(


            padding: const EdgeInsets.symmetric(horizontal: 50,),

            child: Container(
              child: Center(
                child: Column(
                  children: [
                    Text("Sign Up",style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),),
                    TextField(

                      decoration: InputDecoration(
                          hintText: "Email"

                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(

                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password"

                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(

                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "ConfirmPassword"

                      ),
                    ),
                    SizedBox(height: 10,),
                    CupertinoButton(child: Text("sign up",style: TextStyle(
                      fontSize: 16,
                    ),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return LoginPage();
                          },),);
                        }
                    )

                  ],

                ),

              ),
            ),
          ),
        ),


      ),
      bottomNavigationBar:Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account",style: TextStyle(
              fontSize: 16,
            ),),
            CupertinoButton(child: Text("log in",style: TextStyle(
              fontSize: 16,
            ),),
                onPressed: (){
                  Navigator.pop(context);
                }
            )
          ],
        ),
      ),

    );
  }
}
