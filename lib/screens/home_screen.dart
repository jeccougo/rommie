import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomie/screens/home_body.dart';
import 'package:roomie/widgets/near_you.dart';
import 'package:roomie/widgets/recommended.dart';
import 'package:roomie/widgets/request.dart';
import 'package:roomie/widgets/room_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/home';


  @override
  Widget build(BuildContext context) {
   MediaQueryData queryData;
   return Scaffold(
     appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,
            color: Colors.grey,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/explore');
              },
              child: Icon(Icons.explore,
              color: Colors.grey,
              ),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Icon(Icons.settings,
              color: Colors.grey,
              ),
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
      ),


      body: ListView(
        children: [
          HomeBody(),
          SizedBox(
            height: 50,
          ),
          Recommended(),
          SizedBox(
            height: 20,
          ),
          Request(),
          NearYou(),

        ],
      ),

    );


  }

 AppBar buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.blue.shade800,
      elevation: 0,
      automaticallyImplyLeading: false,
      //foregroundColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/setting');
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/m,.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              radius: 20,
              backgroundColor: Colors.black,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              'Roomie',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
              size: 30,
            ),
          ],
        ),

    );
  }
 }

