import 'package:best_buy/pages/area_manager_dashboard.dart';
import 'package:best_buy/pages/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                          "Login",
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
                          const SizedBox(
                            height: 55.0,
                          ),
                          TextField(
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
                                "No account? ",
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
                                      context, MaterialPageRoute(builder: (context) => Register()));
                                },
                                child: Text(
                                  "Sign up",
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
                            height: 50.0,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff6C60E0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context, MaterialPageRoute(builder: (context) => areaManagerDashboard()));
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'Login',
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
