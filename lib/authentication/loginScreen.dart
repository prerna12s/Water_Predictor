import 'package:flutter/material.dart';
import 'package:water_level_01/common_widgets/CustomButton.dart';

import '../common_widgets/CustomTextForm.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
           key: _formKey,
          child: Padding(
            padding:
            const EdgeInsets.only(top:200,left:10,right:10),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Text("Log in",style: TextStyle(
                   fontSize: 35,
                   fontWeight: FontWeight.w800,
                   color: Color(0xFF1E6091),
                 ),),
              const SizedBox(
                height:34,
              ),
              const Text('Email address',
                style: TextStyle(
                  fontSize: 16,
                   fontWeight: FontWeight.w400,
                   color:Color(0xFF1E6091),
                ),
              ),
              CustomTextFormField(
                controller: emailController,
                labelText: "helloworld@gmail.com",
                keyboardType: TextInputType.emailAddress ,
                validator: (value){
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                    return "Enter a valid email address";
                  }
                  return null;

                },
              ),
              //sizedbox
                 const SizedBox(
                   height: 25,
                 ),
              const Text('Password', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color:Color(0xFF1E6091),
              ),),
                 CustomTextFormField(
                   controller: passwordController,
                   labelText: " ......",
                   labelStyle: const TextStyle(
                     color: Color(0xFFBED1DF),
                     fontSize: 20,
                     height: 19
                   ),
                   keyboardType: TextInputType.emailAddress ,
                   validator: (value){
                     if (value == null || value.isEmpty) {
                       return "Please enter a password";
                     } else if (value.length < 8) {
                       return "Password must be at least 8 characters long";
                     }
                     return null;
                   },
                 ),
                 Align(
                   alignment: Alignment.centerRight,
                   child: TextButton(
                     onPressed: () {
                     },
                     child: const Text(
                       'Forgot Password?',
                       style: TextStyle(color: Color(0xFF1E6091)),
                     ),
                   ),
                 ),
                 const SizedBox(
                   height:70,
                 ),
                 const Custombutton(text: 'Log in '),
                 const SizedBox(
                   height:15,
                 ),
                 Align(
                   alignment: Alignment.centerRight,
                   child: TextButton(onPressed:(){}, child: const Text('Don\'t have an account ? Sign Up')
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
