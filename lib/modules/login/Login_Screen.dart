import 'package:flutter/material.dart';
import 'package:thenewone/shared/colors/colorsP.dart';

import '../../shared/components/components.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget
{
  var emailController = TextEditingController();
  var passwordController = TextEditingController();



  @override
  Widget build(BuildContext context)
  {
    return Scaffold(


      body: Container(
        color: colorOffWhite,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                     style: TextStyle(
                       color: colorDarkBlue,
                       fontSize: 40.0,
                       fontWeight: FontWeight.bold,
                     ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value){
                          print(value);
                    },
                    onChanged: (String value){
                      print(value);

                    },
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    onChanged: (String value){
                      print(value);

                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  defaultButton(
                    text: "login",
                    width: double.infinity,
                    function: (){
                      print(emailController.text);
                      print(passwordController.text);
                    },

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ? '
                      ),
                      TextButton(onPressed: (){},
                        child: Text(
                        'Register now',
                          style: TextStyle(
                            color: colorRed,
                          ),
                      ),
                      ),

                    ],
                  ),

                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
