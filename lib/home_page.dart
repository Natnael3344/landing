import 'package:adivid/values/values.dart';
import 'package:adivid/widgets/navbar.dart';
import 'package:adivid/widgets/sections/features.dart';
import 'package:adivid/widgets/sections/footer.dart';
import 'package:adivid/widgets/sections/heros.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      extendBodyBehindAppBar: true,
      appBar:  PreferredSize(
        preferredSize: const Size.fromHeight(72.0),
        child: Container(
            color: const Color(0xFF2F2FA2),
          child: const Padding(
            padding: EdgeInsets.only(right: 45,left: 45),
            child: NavBar(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Heros(),
            // LogosList(),
            Features(),
            // Testimonials(),
            // Stats(),
            // Single5(),
            // Single6(),
            // Cta(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
