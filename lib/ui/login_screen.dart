import 'package:coffee_shop_ui/ui/coffee_shop_home_screen.dart';
import 'package:coffee_shop_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: 90,
                child: Image.asset("assets/images/logo.png"),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "SKDEV",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const Text(
                "Coffee Shop",
                style: TextStyle(
                  height: 0.7,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //on click to page coffee shop
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CoffeeShopHomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonColor),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: buttonColor),
                    ),
                    child: const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              socialIconButton(
                Colors.white,
                "https://cdn.freebiesupply.com/logos/large/2x/google-icon-logo-png-transparent.png",
                "Connect with Googel",
                Colors.black,
              ),
              const SizedBox(height: 20),
              socialIconButton(
                facebookButtondColor,
                "https://static.vecteezy.com/system/resources/previews/021/495/960/original/facebook-logo-icon-free-png.png",
                "Connect with Googel",
                Colors.white,
              ),
              const SizedBox(height: 25),
              Expanded(
                child: Image.asset("assets/images/LoginCoffee.png"),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Container socialIconButton(color, image, title, textcolor) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Row(
        children: [
          const SizedBox(width: 55),
          Image.network(
            image,
            height: 25,
          ),
          const SizedBox(width: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: textcolor,
            ),
          )
        ],
      ),
    );
  }
}
