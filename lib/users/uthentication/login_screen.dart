import 'package:clothes_app/users/uthentication/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formkey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(builder: (context, cons) {
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: cons.maxHeight),
          child: SingleChildScrollView(
            child: Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/images/photo_2024.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              //.........................login screen sign-in form..............
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 250),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.all(
                        Radius.circular(60),
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 8,
                            color: Colors.black26,
                            offset: Offset(0, -3))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 8),
                    child: Column(
                      children: [
                        Form(
                          key: formkey,
                          child: Column(
                            children: [
                              //................. ..............email...................... 
                              TextField(
                                controller: emailController,
                                groupId: (val) =>
                                    val == "" ? "please write email" : null,
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: Colors.black,
                                    ),
                                    hintText: "email...",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                          color: Colors.white60),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 6),
                                    fillColor: Colors.white,
                                    filled: true),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              //............................... password ..............................
                              Obx(() => TextField(
                                    controller: passwordController,
                                    obscureText: isObsecure.value,
                                    onChanged: (val) => val == ""
                                        ? "please write password"
                                        : null,
                                    decoration: InputDecoration(
                                        prefixIcon: const Icon(
                                          Icons.vpn_key_sharp,
                                          color: Colors.black,
                                        ),
                                        suffixIcon: Obx(() => GestureDetector(
                                              onTap: () {
                                                isObsecure.value =
                                                    !isObsecure.value;
                                              },
                                              child: Icon(
                                                isObsecure.value
                                                    ? Icons.visibility_off
                                                    : Icons.visibility,
                                                color: Colors.black,
                                              ),
                                            )),
                                        hintText: "password...",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide:
                                              const BorderSide(color: Colors.white60),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide:
                                            const BorderSide(color: Colors.white60),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide:
                                             const BorderSide(color: Colors.white60),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide:
                                             const BorderSide(color: Colors.white60),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 14, vertical: 6),
                                        fillColor: Colors.white,
                                        filled: true),
                                  )),
                              const SizedBox(
                                height: 18,
                              ),

                              /////...................... button Login...............
                              Material(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(30),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 28,
                                    ),
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        //// ...................dont have account...................
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Dont have an Account ?"),
                            TextButton(
                                onPressed: () {
                                        Get.to(() => SignUPScreen());
                                },
                                child: const Text("SignUp here"))
                          ],
                        ),
                        const Text(
                          "Or",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        ///////////// ...............Are you admin ? .
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Are you Admin ?"),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Click here"))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            // ],
          ),
        );
      }),
    );
  }
}
