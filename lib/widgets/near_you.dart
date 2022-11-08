import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NearYou extends StatelessWidget {
  const NearYou({Key? key}) : super(key: key);

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
      'Oluwadapo Oluwafemi',
      'Kemi Adeyemi',
    ];
    List<String> distance = [
      '15km away',
      '23km away',
      '14km away',
      '8km away',
      '100km away',
      '2km away',
      '1km away',
      '15km away',
      '5km away',
      '4km away',
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



    return SizedBox(
      height: 700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 50,5),
            child: Text(
              'Near You',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( left: 10),
                        child: Container(
                          height: 110,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(image[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text[index],
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ),
                          SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.location_on, color: Colors.grey.shade500,),
                              Text(
                                distance[index],
                                style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
