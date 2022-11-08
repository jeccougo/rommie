import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roomie/screens/profile_screen.dart';

class Recommended extends StatelessWidget  {
  const Recommended ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> text = [
      'Olaedo Okonkwo',
      'Royalty Nwosu',
      'Emma Okonjo',
      'Neo Musa',
      'Ugo Belu',
      'Ifunanya Nwosu',
      'Kelechi Ndubuisi',
      'Amhadu Hari',
      'Oluwadapo femi',
      'Kemi Adeyemi',
    ];

    List<String> Location = [
      'UNN Nsukka',
      'Unizik Awka',
      'Uniport Port Harcourt',
      'Coou Uli',
      'Ansu Igbariam',
      'Esut Enugu',
      'Igbinedion University Okada',
      'Imt Enugu',
      'Imsu Owerri',
      'Futo Owerri',
    ];


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
            'Recommended',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),),
        ),
        SizedBox(
          height: 170,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (context) => ProfileScreen()));
                        },
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(image[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                text[index],
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                Location[index],
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );

              },
            ),
          ),
        ),
      ],
    );


  }
}

