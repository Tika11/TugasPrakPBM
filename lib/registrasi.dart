import 'package:flutter/material.dart';

String myusername= "tika";
String myemail = "tika@gmail.com";
String mypass = "123456";

class registrasi extends StatefulWidget {
  const registrasi({super.key});

  @override
  State<registrasi> createState() => _registrasiState();
}

class _registrasiState extends State<registrasi> {
  
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  final GlobalKey<FormState> key = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: key,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image(
                  image: AssetImage("images/regis.png"),
                  height: 300,
                )
              ],
            ),

            SizedBox(height: 10), 
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                  child: const Text("Create Account!!",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20
                  ),
                )
              )
            ),

            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextFormField(
                controller: username,
                decoration: InputDecoration(
                   prefixIcon: Icon(Icons.person, size: 18, color: Color.fromARGB(255, 237, 120, 200)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                
                  hintText: "Masukkan Username",
                  hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 13,),
                  labelText: 'Username',
                  labelStyle: TextStyle(fontFamily: "Poppins", fontSize: 13, color: Color.fromARGB(255, 237, 120, 200)
                  ),
                ),
                onSaved: (value){
                  myusername = value!;
                },
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter Username';
                  }
                  return null;
                },
              )
            ),
    
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextFormField(
                controller: email,
                decoration: InputDecoration(
                   prefixIcon: Icon(Icons.email, size: 18, color: Color.fromARGB(255, 237, 120, 200)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                    
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                    
                  hintText: "Masukkan Email",
                  hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 13,),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontFamily: "Poppins", fontSize: 13, color: Color.fromARGB(255, 237, 120, 200)
                  ),
                ),
                onSaved: (value){
                  myemail = value!;
                },
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter Email';
                  }
                  return null;
                },
              )
            ),

             Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextFormField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                   prefixIcon: Icon(Icons.lock, size: 18, color: Color.fromARGB(255, 237, 120, 200)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                    
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                    
                  hintText: "Masukkan Password",
                  hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 13,),
                  labelText: 'Password',
                  labelStyle: TextStyle(fontFamily: "Poppins", fontSize: 13, color: Color.fromARGB(255, 237, 120, 200)
                  ),
                ),
                onSaved: (value){
                  mypass = value!;
                },
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter Password';
                  }else if(value.length < 6){
                    return 'Password manimal 6 digit';
                  }
                  return null;
                },
              )
            ),
            
            SizedBox(height: 5),
              Container(
                height: 55,
                width: 470,
                padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    backgroundColor: Color.fromARGB(255, 237, 120, 200)),
                    child: const Text("Sign Up", 
                    style: TextStyle( 
                      fontFamily: "Poppins",
                      fontSize: 16
                      ),
                    ),
                    onPressed: () {
                      if(key.currentState!.validate()){
                        Navigator.pushNamed(context, "/login");
                      }
                    },
                  )
                ),
              ]
            ),
          ),
        ),
    ));
  }
}