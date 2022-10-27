import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 60),
            Text('Online Library management features', style: textTheme.headline2),
            const SizedBox(height: 20),

            // const SizedBox(height: 8),
            // Text(
            //   'the graphic elements of a document or visual presentation.',
            //   style: lead1,
            // ),
            const SizedBox(height: 48),
            Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    title: 'Easy Login',
                    description: 'Authentication of the user as\n'
                        'a student, admin or librarian. User need to\n '
                        'enter valid Email and password.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    title: 'Dashboard Panel',
                    description: 'shows the statistics and Analytics of the\n'
                        'portal according to the user.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    // icon: Image.asset(ImagePath.featureIcon3),
                    title: 'Books Management Panel',
                    description: 'can easily add, view, update, search\n'
                        'delete book as well as print the list in csv,\n'
                        ' excel and pdf format.',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    title: 'Transaction Panel',
                    description: 'can easily add, view, update, search\n'
                        'delete transaction as well as print the list\n'
                        ' in csv, excel and pdf format.',
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FeatureItem(
                    width: size.width / 4,
                    title: 'User Management',
                    description: 'admin can easily handle all privileges\n'
                        ' associated with users including\n'
                        ' permissions, roles, libraries.',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
          ],
        ),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    Key? key,
    required this.title,
    required this.description,
    this.width,
    this.height,
  }) : super(key: key);

  final String title;
  final String description;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 24),
          Text(title, style: textTheme.headline5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
