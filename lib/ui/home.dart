import 'package:flutter/material.dart';
import '../widget/gradient_text.dart';


class HomePage extends StatelessWidget {
  static const routeName  = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI ChatBot", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      //get colors from hex
                      Color.fromARGB(255, 8, 8, 8),
                      Color(0xFF7D96E6),
                    ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0, left: 16.0),
                          child: (
                            Text("Hi! You Can Ask Me", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white))
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: (
                              Text("Anything", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white))
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 16.0),
                          child: (
                            TextButton(
                              onPressed: (){
                                Navigator.pushNamed(context, '/chat');
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: GradientText(
                                  "Ask Now",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 187, 179, 212),
                                      Color.fromARGB(255, 47, 72, 153),
                                    ]
                                  ),
                                ),
                              )
                            )
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/icon.png"), fit: BoxFit.cover),
                      ),
                      child: SizedBox(height: 150, width: 150,),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0, left: 16.0),
              child: Text("Recent Chats", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}