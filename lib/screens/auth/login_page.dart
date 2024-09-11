import 'package:flutter/material.dart';
import 'package:flutter_tutorial/constant/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';
import '../start_up/buttom_nav.dart';

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
            const Center(
              child: CustomText(
                title: 'Log In to Continue Buying and selling',
                color: AppColors.primaryGrey,
                size: 14,
                fontWeight: FontWeight.w600,
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
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(color: AppColors.primaryOrange)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              cursorColor: AppColors.primaryOrange,
              decoration: InputDecoration(
                focusColor: AppColors.primaryOrange,
                fillColor: AppColors.primaryOrange,
                prefixIcon: const Icon(
                  Icons.lock_clock_outlined,
                  color: AppColors.primaryGrey,
                ),
                suffixIcon: const Icon(
                  Icons.visibility,
                  color: AppColors.primaryGrey,
                ),
                hintText: "Password",
                hintStyle: const TextStyle(color: AppColors.primaryGrey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColors.primaryGrey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColors.primaryOrange),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              buttonTitle: 'Log In',
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BottonNavbar()));
              },
              textColor: AppColors.primaryWhite,
              textWeight: FontWeight.w600,
              textSize: 14,
              buttonHeight: 51,
            )
          ],
        ),
      ),
    );
  }
}
