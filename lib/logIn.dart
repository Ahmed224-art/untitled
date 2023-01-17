
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  var phoneController=TextEditingController();
  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(image: AssetImage('assets/images/image1.png'),
            width: double.infinity,
              height: double.infinity,
             fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.keyboard_arrow_left,color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                padding: EdgeInsetsDirectional.only(start: 20.0,end: 20.0),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(25.0),topEnd: Radius.circular(25.0)),
                color: Colors.white,

                ),
                child: Form(
                  key:formkey ,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        onFieldSubmitted: (value) {
                          print(value.toString());
                        },
                        onChanged: (value) {
                          print(value.toString());
                        },
                        validator: (value) {
                         if(value!.isEmpty){
                           return 'phone number must not be empty';
                         }
                         return null;
                        },
                        decoration: InputDecoration(
                          hintText:' Phone Number',
                          prefixText: '+966 |',
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
                              if(formkey.currentState!.validate()){
                                print(phoneController.text);
                              }
                        },
                          child: Text("Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          //shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
