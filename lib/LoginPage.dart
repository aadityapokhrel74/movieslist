import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieslist/SignupPage.dart';

import 'BottomNavigationBar.dart';
import 'movie-detail.dart';
import 'movie-list.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    Icon(Icons.login_rounded),
                    Text("Login",style: TextStyle(

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
                    CupertinoButton(child: Text("Login",style: TextStyle(
                      fontSize: 16,
                    ),),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return MyNavigationBar();;
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
            Text("Dont have an account",style: TextStyle(
              fontSize: 16,
            ),),
            CupertinoButton(child: Text("sign up",style: TextStyle(
              fontSize: 16,
            ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SignupPage();
                  },),);
                }
            )
          ],
        ),
      ),

    );
  }
}
