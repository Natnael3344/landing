import 'package:adivid/values/values.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
        Flexible(child: _buildMore(textTheme)),
      ],
    );
  }

  Row _buildMore(TextTheme textTheme) {

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Login', style: textTheme.bodyText2?.copyWith(color: Colors.white)),
         Padding(
          padding: const EdgeInsets.only(bottom: 4.0),

          child: PopupMenuButton<Menu>(
            icon: const Icon(Icons.expand_more, size: 20.0,color: Colors.white,),
            position: PopupMenuPosition.under,
            onSelected: (Menu item) {
              setState(() {
                if(item.name=='student'){
                  // Navigator.push(context,
                  //   MaterialPageRoute (
                  //     builder: (BuildContext context) => const MyPage(),
                  //   ),
                  // );
                }
                if(item.name=='admin'){
                  // Navigator.push(context,
                  //   MaterialPageRoute (
                  //     builder: (BuildContext context) => const MyPage(),
                  //   ),
                  // );
                }
                if(item.name=='librarian'){
                  // Navigator.push(context,
                  //   MaterialPageRoute (
                  //     builder: (BuildContext context) => const MyPage(),
                  //   ),
                  // );
                }
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
          const PopupMenuItem<Menu>(
            value: Menu.student,
            child: Text('Student'),
          ),
          const PopupMenuItem<Menu>(
            value: Menu.admin,
            child: Text('Admin'),
          ),
          const PopupMenuItem<Menu>(
            value: Menu.librarian,
            child: Text('Librarian'),
          ),

        ]
        ),
         )
      ],

    );
  }
}

enum Menu { student, admin, librarian}


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
        Image.asset(ImagePath.logo,width: 45,height: 45,),
        const SizedBox(width: 10.0),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Adivid', style: textTheme.subtitle1?.copyWith(color: Colors.white)),
        ),
      ],
    );
  }
}
