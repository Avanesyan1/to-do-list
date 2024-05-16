// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  LoginPage({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
              const SizedBox(height:10),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [ 
                    Text('Log in',style:Theme.of(context).textTheme.headline1),
                    const SizedBox(height: 10,),
                    Text('Welcome back! Login to continue',style:Theme.of(context).textTheme.bodyText1),
                    SizedBox(height:300, width: 300, child:  Lottie.asset('assets/animation/login.json')),],),
          
              Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, left: 40, right: 40),
                      child: TextField(style:Theme.of(context).textTheme.headline2,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 74, 20, 140))),
                                hintText: 'Email',hintStyle: Theme.of(context).textTheme.bodyText1),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, left: 40, right: 40),
                      child: TextField(style: Theme.of(context).textTheme.headline2,
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(255, 74, 20, 140))),
                              hintText:'Password',hintStyle: Theme.of(context).textTheme.bodyText1),),
                    ),
                    const SizedBox(height:20),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.purple[900])),
                          onPressed: (){Navigator.pushNamed(context, 'task_list') ;}, 
                          child: Text('Log in',style: Theme.of(context).textTheme.headline4))
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('New user?',style: Theme.of(context).textTheme.bodyText1,), 
                        TextButton(onPressed: (){Navigator.pushNamed(context, 'signup');}, child: const Text('Sign up',style: TextStyle(fontFamily: 'PoetsenOne',fontSize: 16 ),))],),],),
        ],),
      );
  }
}

 