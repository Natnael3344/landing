import 'package:flutter/material.dart';
import 'package:landify/values/values.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 72.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Logo(),
          const SizedBox(width: 30.0),
          Flexible(child: _buildItems(textTheme)),
          // const Flexible(child: ImageLinks()),
        ],
      ),
    );
  }

  Row _buildItems(TextTheme textTheme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Home', style: textTheme.bodyText2?.copyWith(color: Colors.white)),
        const SizedBox(width: 30.0),
        Text('About', style: textTheme.bodyText2?.copyWith(color: Colors.white)),
        const SizedBox(width: 30.0),
        Text('Contact', style: textTheme.bodyText2?.copyWith(color: Colors.white)),
        const SizedBox(width: 30.0),
        Text('Resources', style: textTheme.bodyText2?.copyWith(color: Colors.white)),
        const SizedBox(width: 30.0),
        Flexible(child: _buildMore(textTheme)),
      ],
    );
  }

  Row _buildMore(TextTheme textTheme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Login', style: textTheme.bodyText2?.copyWith(color: Colors.white)),
        const Padding(
          padding: EdgeInsets.only(bottom: 4.0),
          child: Icon(Icons.expand_more, size: 20.0,color: Colors.white,),
        ),
      ],
    );
  }
}

class ImageLinks extends StatelessWidget {
  const ImageLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(ImagePath.googlePlay),
        const SizedBox(width: 12.0),
        Image.asset(ImagePath.appStore),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(ImagePath.logo),
        const SizedBox(width: 10.0),
        Text('Advid', style: textTheme.subtitle1?.copyWith(color: Colors.white)),
      ],
    );
  }
}
