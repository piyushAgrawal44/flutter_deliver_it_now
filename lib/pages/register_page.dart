import 'package:delivery_on_wheels/pages/components/custom_shimmer.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  bool _isLoading = true;
  void initState() {
    setState(
      () {
        _isLoading = true;
      },
    );

    Future.delayed(
      const Duration(seconds: 2),
      () {
        setState(() {
          _isLoading = false;
        });
      },
    );
  }

  Widget build(BuildContext context) {
    double dH = MediaQuery.of(context).size.height;
    double dW = MediaQuery.of(context).size.width;
    TextEditingController emailTextController = TextEditingController();
    TextEditingController phoneTextController = TextEditingController();
    TextEditingController passwordTextController = TextEditingController();
    TextEditingController nameTextController = TextEditingController();
    TextEditingController roleTextController = TextEditingController();
    return _isLoading
        ? PageShimmer()
        : Scaffold(
            body: SafeArea(
              child: Container(
                width: dW,
                decoration: const BoxDecoration(
                  color: Color(0xff5d67ea),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Text(
                        "Register Page",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        width: (dW > 500) ? 500 : dW,
                        margin: EdgeInsets.only(
                            left: (dW > 500) ? (dW - 500) / 2 : 0),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffc5c5c5).withOpacity(0.8),
                              offset: const Offset(0, 1),
                              blurRadius: 2,
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(
                          top: 40,
                          left: 20,
                          right: 20,
                          bottom: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Create Account by simple step",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff5d67ea),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Expanded(
                              child: Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TextField(
                                        controller: nameTextController,
                                        decoration: InputDecoration(
                                          hintText: "Name",
                                          hintStyle:
                                              const TextStyle(fontSize: 16),
                                          prefixIcon: const Icon(
                                            Icons.person,
                                            size: 18,
                                            color: Colors.black,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      TextField(
                                        controller: emailTextController,
                                        decoration: InputDecoration(
                                          hintText: "Email",
                                          hintStyle:
                                              const TextStyle(fontSize: 16),
                                          prefixIcon: const Icon(
                                            Icons.email,
                                            size: 18,
                                            color: Colors.black,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      TextField(
                                        controller: phoneTextController,
                                        decoration: InputDecoration(
                                          hintText: "Phone",
                                          hintStyle:
                                              const TextStyle(fontSize: 16),
                                          prefixIcon: const Icon(
                                            Icons.phone_android,
                                            size: 18,
                                            color: Colors.black,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      TextField(
                                        controller: passwordTextController,
                                        decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle:
                                              const TextStyle(fontSize: 16),
                                          prefixIcon: const Icon(
                                            Icons.password_rounded,
                                            size: 18,
                                            color: Colors.black,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontSize: 16,
                                        ),
                                        obscureText: true,
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          width: dW,
                                          padding: const EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                            color: const Color(0xff5d67ea),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: const Text(
                                            "Register",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
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
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}

class PageShimmer extends StatelessWidget {
  const PageShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double dH = MediaQuery.of(context).size.height;
    double dW = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: dW,
        height: dH,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerWidget(
              sBR: 0,
              sH: 10,
              sW: 25,
            ),
            SizedBox(
              height: 20,
            ),
            ShimmerWidget(
              sBR: 12,
              sH: 15,
              sW: 50,
            ),
            SizedBox(
              height: 30,
            ),
            ShimmerWidget(
              sBR: 12,
              sH: dW,
              sW: dH,
            ),
          ],
        ),
      ),
    );
  }
}
