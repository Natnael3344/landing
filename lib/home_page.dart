import 'package:flutter/material.dart';
import 'package:landify/values/values.dart';
import 'package:landify/widgets/navbar.dart';
import 'package:landify/widgets/sections/cta.dart';
import 'package:landify/widgets/sections/features.dart';
import 'package:landify/widgets/sections/footer.dart';
import 'package:landify/widgets/sections/heros.dart';
import 'package:landify/widgets/sections/logos_list.dart';
import 'package:landify/widgets/sections/singles.dart';
import 'package:landify/widgets/sections/stats.dart';
import 'package:landify/widgets/sections/testimonials.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(72.0),
        child: Padding(
          padding: EdgeInsets.only(right: 45,left: 45),
          child: SizedBox(
              // width: size.width * 0.7,
              child: NavBar()),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Heros(),
            LogosList(),
            Features(),
            Testimonials(),
            Stats(),
            Single5(),
            Single6(),
            Cta(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
