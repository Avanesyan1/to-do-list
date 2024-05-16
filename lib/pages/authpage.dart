// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class MainauthPage extends StatelessWidget {
  const MainauthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Lottie.asset("assets/animation/list.json"),
              Text('     Welcome to To-Do List app!\nPlease authenticate to continue',style: Theme.of(context).textTheme.headline3,),],),
         
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                   SizedBox(
                          height: 50,
                          width: 400,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.purple[900])),
                              onPressed: (){Navigator.pushNamed(context, 'login');}, 
                              child: Text('Log in',style:Theme.of(context).textTheme.headline4)),
                          ),
            const SizedBox(height: 20),
                  SizedBox(
                          height: 50,
                          width: 400,
                          child: TextButton(
                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple[900])),
                            onPressed: (){Navigator.pushNamed(context, 'signup');}, 
                            child: Text('Sign up',style:Theme.of(context).textTheme.headline4)),
                        )
              ],
          ),],
        )
    );
  }
}