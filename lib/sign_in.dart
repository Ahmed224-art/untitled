import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration:BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/index1.png'),
                      fit: BoxFit.fitWidth) ) ,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:
                  Column(
                    children: [
                      // hand + wellcom
                      Row(
                        children: [
                          Icon(Icons.waving_hand,
                          color: Colors.amber),
                          SizedBox(width: 10.0),
                          Text('Wellcom Back!',
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      Text(' i am so happy to see you can contain to login for magange our orders',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                     TextFormField(
                       decoration: InputDecoration(
                         hintText:' Phone Number',
                         prefixText: '+966',
                         border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
                       ),
                     ),
                      SizedBox(height: 20.0,),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                          color: Colors.indigo[900],
                        ),
                        width: double.infinity,
                        child: MaterialButton(onPressed: () {

                        },
                          child: Text("Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
