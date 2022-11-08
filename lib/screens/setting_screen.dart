import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roomie/widgets/profile_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  static const routeName = '/setting';


  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 20,
          ),
          ProfileWidget(
            imagePath: 'assets/images/m,.jpg',
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          // buildName(user),

          //NumbersWidget(),
          const SizedBox(height: 48),
          // buildAbout(user),
        ],
      ),
    );

  }
}


AppBar buildAppBar(BuildContext context) {
  final icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.orangeAccent,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(icon),
        onPressed: () {},
      ),
    ],
  );
}


