import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Request extends StatelessWidget {
  const Request({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> image = [
      'assets/images/m,.jpg',
      'assets/images/man1.jpg',
      'assets/images/woman1.jpg',
      'assets/images/man1.jpg',
      'assets/images/woman1.jpg',
      'assets/images/woman1.jpg',
      'assets/images/man1.jpg',
      'assets/images/man1.jpg',
      'assets/images/woman1.jpg',
      'assets/images/woman1.jpg',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Request',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image[index]),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    radius: 25,
                    backgroundColor: Colors.black,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
