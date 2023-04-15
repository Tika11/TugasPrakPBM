import 'package:flutter/material.dart';
import 'package:tugasprakpbm/registrasi.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  TextEditingController beratbadan = new TextEditingController();
  TextEditingController tinggibadan = new TextEditingController();

  double? _result;
  String? status;

  void calculatorBMI(){
    double tinggi = double.parse(tinggibadan.text)/100;
    double berat = double.parse(beratbadan.text);

    double tinggikeseluruhan = tinggi* tinggi;
    double result = berat/tinggikeseluruhan;
    _result = result;
    
    setState(() {
      if(_result!<18){
        status='Underwight';
      }
      else if(_result!<26)
      {
        status="Normal";
      }
      else{
        status="Overwight";
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu,
        color: Color.fromARGB(255, 237, 120, 200)
        ),
        actions: [
          Padding(padding: const EdgeInsets.only(right: 20),
          child: Icon(Icons.notifications,
          color: Color.fromARGB(255, 237, 120, 200)
            )
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Color.fromARGB(255, 237, 120, 200),),
          label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: '')
        ]
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 110),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text("Perhitungan BMI",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                ),

                SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text("Haloo $myusername",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 237, 120, 200)
                    ),
                  )
                ),
                SizedBox(height: 20),
                Text(
                  _result == null? "Masukkan Nilainya" : "Hasil : ${_result!.floor().toString()}",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 8),
                Text("Kategori : $status",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 18
                ),),

                SizedBox(height: 30),
                Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: beratbadan,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                      
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                      
                    hintText: "Masukkan berat badan",
                    hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 13,),
                    labelText: 'Berat Badan (kg)',
                    labelStyle: TextStyle(fontFamily: "Poppins", fontSize: 13,color: Color.fromARGB(255, 237, 120, 200)
                    ),
                  )
                )
              ),

              SizedBox(height: 5),
              Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: TextField(
                controller: tinggibadan,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                    
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 237, 120, 200)),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                    
                  hintText: "Masukkan tinggi badan",
                  hintStyle: TextStyle(fontFamily: "Poppins", fontSize: 13,),
                  labelText: 'Tinggi Badan (cm)',
                  labelStyle: TextStyle(fontFamily: "Poppins", fontSize: 13, color: Color.fromARGB(255, 237, 120, 200)
                  ),
                )
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
                    child: const Text("Hitung", 
                    style: TextStyle( 
                      fontFamily: "Poppins",
                      fontSize: 15
                      ),
                    ),
                    onPressed: () {
                      calculatorBMI();
                    },
                  )
                ),

                Row(
                children: [
                  TextButton(
                    child: const Text("Logout",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                      color: Color.fromARGB(255, 237, 120, 200)
                    ),
                  ),
                  onPressed: () {
                   Navigator.pushNamed(context, "/login");
                  },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}