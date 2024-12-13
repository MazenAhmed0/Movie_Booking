import 'package:flutter/material.dart';
import './home_screen.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('images/background.jpeg'),
              fit: BoxFit.cover,
              opacity: 0.4,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "DP Cineplex",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                )
              ),
              const SizedBox(height: 30,),
              const Text(
                "Grab your tickets now",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize:20,
                  fontWeight:FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50,),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                  color: const Color(0XFFF7D300),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const Text(
                  "Get Started",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize:20,
                    fontWeight: FontWeight.bold
                  )
                ),
              ) ,
              ),
            ],
          ),
      ),
    );
  }
}















          