import 'package:flutter/material.dart';

 void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp ({super. key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF42A5F),
        body: Center( 
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(46)),
            color: Colors.white60,
            margin: EdgeInsets.only(top:20),
            child: SizedBox(
              width: 390.2,
              height: 630,
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 66.0,backgroundColor: Colors.grey,backgroundImage: NetworkImage("http://www.senkitoys.com/1960-home_default/atom-real-steel-sixth-scale-figure-by-threea-toys.jpg"),),
                  Divider(thickness: 1.5, color: Colors.white12),
                Card(
                  margin: EdgeInsets.all(15.0),
                  elevation: 55.0,
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                          hintText: 'Correo@example.com',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                      ),
                      const SizedBox (height: 20,),
                      TextField(
                          decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black)
                            ), 
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        obscureText: true, 
                      ),
                      SizedBox(height: 20,),
                       Card(
                         child: Container(
                            margin: const EdgeInsets.all(10),
                            child: ElevatedButton(onPressed: () {}, child: Text("LOGIN"),
                            style:ElevatedButton.styleFrom(minimumSize:Size(350,40)),)
                         ),
                         shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(40),
                        ),
                       ),
                       SizedBox(height: 20,),
                       Container(
                        padding: EdgeInsets.only(left: 1.0,right: 1.0),
                        alignment: Alignment.bottomLeft,
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        Text("Signup"),
                        Text("Forgot Password?"),
                       ],
                            )
                       )
                    ], 
                  )
                )
                ],
              ),
             ),
          ),
        )
      ),
    );
  }
}