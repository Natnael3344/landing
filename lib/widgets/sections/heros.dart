import 'package:adivid/values/values.dart';
import 'package:flutter/material.dart';

class Heros extends StatelessWidget {
  const Heros({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      color: const Color(0xFF2F2FA2),
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage(
      //       ImagePath.background,
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Column(
        children: [
          const SizedBox(height: 90),
          SizedBox(
            width: size.width * 0.8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(flex:2,child: _buildContent(textTheme)),
                Flexible(flex:2,child: Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: Image.asset(ImagePath.phoneMockup),
                ),),
              ],
            ),
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }

  Column _buildContent(TextTheme textTheme) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(height: 90),
        Text('Online Library', style: textTheme.headline1?.copyWith(color: Colors.white)),
        const SizedBox(height: 30),
        Text('Management System.', style: textTheme.headline1?.copyWith(color: Colors.white)),
        const SizedBox(height: 50),
        Container(
          decoration:  const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              gradient: LinearGradient(colors: [
                Color(0xFFF64C72),
                Colors.purple,
              ],
        )
          ),
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: AppColors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 24,
              ),

            ),
            child: Text(
              'Learn more',
              style: textTheme.subtitle2!.copyWith(color: AppColors.white),
            ),
          ),
        ),
        const SizedBox(height: 50),
        Image.asset(ImagePath.phoneMockup2,height: 500,),
      ],
    );
  }
}
