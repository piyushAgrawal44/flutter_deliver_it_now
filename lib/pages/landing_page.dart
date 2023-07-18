import 'package:delivery_on_wheels/pages/components/custom_shimmer.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
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

  @override
  bool onClick = true;
  Widget build(BuildContext context) {
    double dH = MediaQuery.of(context).size.height;
    double dW = MediaQuery.of(context).size.width;
    return _isLoading
        ? PageShimmer()
        : Scaffold(
            body: Container(
              height: dH,
              width: dW,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff606be3), Color(0xff5d67ea)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('asset/images/landingpage.png'),
                          fit: BoxFit.contain,
                        ),
                        const Text(
                          "Delivery by Verified Transporter",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.5,
                            fontFamily: "Signika_MainFont",
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "More than 200 verified transporter..",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.7),
                            decoration: TextDecoration.none,
                            fontFamily: "Signika_MainFont",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: dW,
                    child: Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                onClick = false;
                              });

                              Navigator.pushNamed(context, "/login");
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: !onClick
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: !onClick ? Colors.black : Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Signika_MainFont",
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                onClick = true;
                              });
                              Navigator.pushNamed(context, "/register");
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color:
                                    onClick ? Colors.white : Colors.transparent,
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                ),
                              ),
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: onClick ? Colors.black : Colors.white,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Signika_MainFont",
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
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
    return Column(
      children: [
        const Expanded(
          child: Center(
            child: ShimmerWidget(
              sBR: 150,
              sH: 300,
              sW: 300,
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ShimmerWidget(
                  sBR: 2, sH: 40, sW: MediaQuery.of(context).size.width),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ShimmerWidget(
                  sBR: 2, sH: 40, sW: MediaQuery.of(context).size.width),
            ),
          ],
        )
      ],
    );
  }
}
