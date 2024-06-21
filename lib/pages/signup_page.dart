import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Back_Arrow
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login_page');
                  },
                  child: Container(
                    height: 50.0,
                    width: double.infinity,
                    // color: Colors.amber,
                    alignment: Alignment.centerLeft,
                    child: const Icon(Icons.keyboard_arrow_left,
                      size: 50.0,
                      color: Colors.blue,
                    ),
                  ),
                ),

                //Create_Account
                Container(
                  height: 60.0,
                  width: 200.0,
                  // color: Colors.red,
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text('Create Account',
                        style: TextStyle(
                          fontSize: 28.0,
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.black.withOpacity(0.5),
                              offset: const Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                      const Text("Let's Fill your Inform Below")
                    ],
                  ),
                ),

                const SizedBox(height: 10.0),


                //Username
                const SizedBox(
                height: 100.0,
                width: double.infinity,
                // color: Colors.amber,
                child: Column(
                    children: [
                      SizedBox(
                        height: 30.0,
                        width: double.infinity,
                        // color: Colors.pink,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text("Username",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),

                //Email
                const SizedBox(
                height: 100.0,
                width: double.infinity,
                // color: Colors.amber,
                child: Column(
                    children: [
                      SizedBox(
                        height: 30.0,
                        width: double.infinity,
                        // color: Colors.pink,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text("Email",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),

                //Password
                const SizedBox(
                height: 100.0,
                width: double.infinity,
                // color: Colors.red,
                child: Column(
                    children: [
                      SizedBox(
                        height: 30.0,
                        width: double.infinity,
                        // color: Colors.pink,
                        child: Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text("Password",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10.0),

                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                

                const SizedBox(height: 50.0),
        
                SizedBox(
                height: 160.0,
                width: double.infinity,
                // color: Colors.amber,
                  child: Column(children: [
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 60.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text("Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 60.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: const Color.fromARGB(255, 215, 215, 215))
                          ),
                          child: const Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1024px-Google_%22G%22_logo.svg.png"),),
                                ),

                                SizedBox(width: 20.0),

                                Text("Sign up with google",
                                  style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
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

                SizedBox(
                  height: 50.0,
                  width: double.infinity,
                  // color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login_page');
                        }, 
                        child: const Text("Sign in here",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10.0)

              ],
            ),
          ),
        ),
      ),
    );
  }
}