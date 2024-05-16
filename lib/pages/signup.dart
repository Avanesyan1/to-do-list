// ignore_for_file: deprecated_member_use, camel_case_types
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      resizeToAvoidBottomInset:true,
      body: SingleChildScrollView(child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          const SizedBox(height: 10,),
          Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                           Text('Sign up',style:Theme.of(context).textTheme.headline1),
                           const SizedBox(height: 10,),
                           Text('Fill details to countinue',style:Theme.of(context).textTheme.bodyText1),
                           SizedBox(height:300, width: 300, child:  Lottie.asset('assets/animation/login.json'))]),
          
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 40, right: 40),
            child: TextField(style:Theme.of(context).textTheme.headline2,
                      decoration: InputDecoration(border: const OutlineInputBorder(borderSide: BorderSide()),
                                                  hintText: 'UserName',hintStyle: Theme.of(context).textTheme.bodyText1),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 40, right: 40),
            child: TextField(style: Theme.of(context).textTheme.headline2,
                      decoration: InputDecoration(border: const OutlineInputBorder(borderSide: BorderSide()),
                      hintText:'Email',hintStyle: Theme.of(context).textTheme.bodyText1),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 40, right: 40),
            child: TextField(style: Theme.of(context).textTheme.headline2,
                      decoration: InputDecoration(border: const OutlineInputBorder(borderSide: BorderSide()),
                      hintText:'Password',hintStyle: Theme.of(context).textTheme.bodyText1),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 40, right: 40),
            child: TextField(style: Theme.of(context).textTheme.headline2,
                      decoration: InputDecoration(border: const OutlineInputBorder(borderSide: BorderSide()),
                      hintText:'Confirm password',hintStyle: Theme.of(context).textTheme.bodyText1),),
          ),   
          SizedBox(
              height: 50,
              width: 300,
              child: TextButton(style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(Colors.purple[900])),
                                            onPressed: (){}, 
                                            child: Text('Sign up',style: Theme.of(context).textTheme.headline4,))),
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                     Text('Already have an account?',style: Theme.of(context).textTheme.bodyText1,), 
                     TextButton(onPressed: (){Navigator.pushNamed(context, 'login');}, child: const Text('log in',style: TextStyle(fontFamily: 'PoetsenOne',fontSize: 16 )))],),
        ],),
        ]
      ),
    ));
  }
}