import 'package:http/http.dart' as http;
import 'package:best_buy/pages/login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController showroom_code = TextEditingController();
  TextEditingController staff_id = TextEditingController();
  TextEditingController user_name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future register() async{
    var url = 'https://bbsapp.000webhostapp.com/android/register.php';
    var response = await http.post(Uri.parse(url), body:{
      "showroom_code": showroom_code.text,
      "staff_id": staff_id.text,
      "user_name": user_name.text,
      "email": email.text,
      "password": password.text,

    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            decoration: const BoxDecoration(
              color: Color(0xff6C60E0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 36.0, horizontal: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Wellcome to Best Buy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Color(0xffF8F8FF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextField(
                            controller: showroom_code,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: const Color(0xffE7E4FF),
                                hintText: "SW- ID",
                                prefixIcon: Icon(
                                  Icons.store,
                                  color: Colors.grey[500],
                                )),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            controller: staff_id,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: const Color(0xffE7E4FF),
                                hintText: "Staff- ID",
                                prefixIcon: Icon(
                                  Icons.numbers,
                                  color: Colors.grey[500],
                                )),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            controller: user_name,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: const Color(0xffE7E4FF),
                                hintText: "Name",
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.grey[500],
                                )),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: const Color(0xffE7E4FF),
                                hintText: "E-mail",
                                prefixIcon: Icon(
                                  Icons.email_rounded,
                                  color: Colors.grey[500],
                                )),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          TextField(
                            controller: password,
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              fillColor: const Color(0xffE7E4FF),
                              hintText: "Password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Already have an account?",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.blue[800],
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                },
                                child: Text(
                                  "Login",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.blue[800],
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff6C60E0),
                                ),
                                onPressed: () {
                                  register();
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                )),
                          )
                          //Rised Button hobe - https://www.youtube.com/watch?v=AUM4q2pHTpA  5.58min
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
