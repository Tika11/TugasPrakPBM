import 'package:flutter/material.dart';
import 'package:tugasprakpbm/registrasi.dart';

class loginpage extends StatefulWidget {
   loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

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
            children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Image(
                  image: AssetImage("images/loginn.png"),
                  height: 300,
                )
              ],
            ),
            
            SizedBox(height: 10),
             Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                  child: const Text("Welcome Back!!",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    color: Color.fromARGB(255, 63, 57, 57)
                  ),
                )
              )
            ),

            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextFormField(
                cursorColor: Color.fromARGB(255, 237, 120, 200),
                cursorWidth: 2,
                controller: email,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, size: 18, color: Color.fromARGB(255, 237, 120, 200),),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromRGBO(237, 120, 200, 1)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                
                  hintText: "Masukkan Email",
                  hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 13,),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontFamily: "Poppins", fontSize: 13, color: Color.fromARGB(255, 237, 120, 200)
                  ),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter Email';
                  }else if(value != myemail){
                    return 'Username salah';
                  }
                  return null;
                },
              )
            ),
    
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextFormField(
                cursorColor: Color.fromARGB(255, 237, 120, 200),
                cursorWidth: 2,
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
                validator: (value) {
                  if(value == null || value.isEmpty){
                    return 'Please Enter Password';
                  }else if(value != mypass){
                    return 'Password salah';
                  }
                  return null;
                }
              )
            ),
            
            SizedBox(height: 7),
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
                    child: const Text("login", 
                    style: TextStyle( 
                      fontFamily: "Poppins",
                      fontSize: 16
                      ),
                    ),
                    onPressed: () {
                        if(key.currentState!.validate()){
                          Navigator.pushNamed(context, "/homepage");
                        }
                      },
                   )
                 ),
              
              Row(
                children: [
                  const Text("Belum punya akun?",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 13
                    ),
                  ),
                  TextButton(
                    child: const Text("Sign Up",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 13,
                      color: Color.fromARGB(255, 237, 120, 200)
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/register");
                  },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
            ]
          ),
        ),
        ),
      )
    );
  }
}