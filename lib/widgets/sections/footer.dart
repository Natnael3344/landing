import 'package:adivid/values/values.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      color: AppColors.black,
      child: Center(
        child: SizedBox(
          width: size.width * 0.7,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 56),
            child: DefaultTextStyle.merge(
              style: textTheme.bodyText1!.copyWith(color: AppColors.white),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          const SizedBox(height: 24),
                          const Text('Contact'),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.email,color: Colors.white,),
                              SizedBox(width: 24),
                              Text('info@adivid.com'),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(Icons.phone,color: Colors.white,),
                              SizedBox(width: 24),
                              Text('0744-3500037'),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children:  const [
                              Icon(Icons.location_on_sharp,color: Colors.white,),
                              SizedBox(width: 24),
                              Text('C-8/1, A-Road'),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text('NICE Area, Satpur MIDC'),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text('Near SBI Administrative Branch'),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text('Nashik, India - 422007'),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children:  const [
                              Icon(Icons.location_on_sharp,color: Colors.white,),
                              SizedBox(width: 24),
                              Text('267, Rajeev Gandhi Nagar'),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text('Kota, Rajasthan, India - 324005'),
                          ),
                          // Row(
                          //   mainAxisSize: MainAxisSize.min,
                          //   children: const [
                          //     Text('About'),
                          //     SizedBox(width: 24),
                          //     Text('Features'),
                          //     SizedBox(width: 24),
                          //     Text('Pricing'),
                          //     SizedBox(width: 24),
                          //     Text('Careers'),
                          //     SizedBox(width: 24),
                          //     Text('Help'),
                          //     SizedBox(width: 24),
                          //     Text('Privacy Policy'),
                          //   ],
                          // ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Get the App',
                            style: textTheme.subtitle2!.copyWith(
                              color: AppColors.gray.shade300,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Image.asset(ImagePath.appStore),
                          const SizedBox(height: 16),
                          Image.asset(ImagePath.googlePlay),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 60),
                  Center(
                    child: Text(
                      'Privacy Policy | Copyright © 2022 Adivid Technologies Pvt Ltd',
                      style: textTheme.bodyText2!.copyWith(
                        color: AppColors.gray.shade300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
