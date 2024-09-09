import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Log In to Continue',
          style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryBlack),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Log In to Continue Buying and selling',
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryGrey),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.person_2_outlined,
                      color: AppColors.primaryGrey,
                    ),
                    hintText: "Name",
                    hintStyle: const TextStyle(color: AppColors.primaryGrey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)))),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              cursorColor: AppColors.primaryOrange,
              decoration: InputDecoration(
                  focusColor: AppColors.primaryOrange,
                  fillColor: AppColors.primaryOrange,
                  prefixIcon: const Icon(Icons.lock_clock_outlined,
                      color: AppColors.primaryGrey),
                  suffixIcon: const Icon(Icons.visibility,
                      color: AppColors.primaryGrey),
                  hintText: "Password",
                  hintStyle: const TextStyle(color: AppColors.primaryGrey),
                  border: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.primaryOrange),
                      borderRadius: BorderRadius.circular(8))),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 51,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.primaryOrange,
                  borderRadius: BorderRadius.circular(8)),
              alignment: Alignment.center,
              child: Text(
                'Log In',
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryWhite),
              ),
            )
          ],
        ),
      ),
    );
  }
}
