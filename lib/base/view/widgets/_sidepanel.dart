import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({
    super.key,
    required this.colorScheme,
  });

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      height: 780,
      padding:
          EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
      margin: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          color: colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 2,
            color: colorScheme.primary.withOpacity(.2)
          )
          ),
      child: Column(
        children: [
          Container(
            height: 147,
            width: 150,
            decoration: BoxDecoration(
                // color: Colors.white.withOpacity(.2),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/kaium-al-limon.png',
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Kaium Al Limon',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.2),
                    borderRadius: BorderRadius.circular(5)),
                padding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Flutter Developer',
                  style: GoogleFonts.poppins(fontSize: 11,color: colorScheme.primary),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 2,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.05),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.email_outlined,
                  color: colorScheme.primary,
                  size: 17,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 9,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SelectableText(
                      'kalimon291@gmail.com',
                      // overflow: TextOverflow.ellipsis,
                      
                      style: GoogleFonts.poppins(fontSize: 11),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.phone,
                  color: colorScheme.primary,
                  size: 17,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone',
                      style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 9,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SelectableText(
                      '+8801738439423',
                      // overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(fontSize: 11),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.calendar_month_outlined,
                  color: colorScheme.primary,
                  size: 17,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Birthday',
                      style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 9,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SelectableText(
                      'May 05, 2002',
                      // overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(fontSize: 11),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.location_city_outlined,
                  color: colorScheme.primary,
                  size: 17,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lcoation',
                      style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(.3),
                          fontSize: 9,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SelectableText(
                      'Khilkhet, Dhaka-1129, Bangladesh',
                      // overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(fontSize: 11),
                    )
                  ],
                ),
              )
            ],
          ),
    
          const SizedBox(height: 30,),
          Row(
            children: [
              Expanded(child: Container(
                height: 2,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                  borderRadius: BorderRadius.circular(100)
                ),
              )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Social',style: GoogleFonts.poppins(
                  fontSize: 13,
                  color: Colors.white.withOpacity(.2)
                ),),
              ),
              Expanded(child: Container(
                height: 2,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.1),
                  borderRadius: BorderRadius.circular(100)
                ),
              ))
            ],
          ),
          const SizedBox(height: 20,),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: (){
    
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/icons/facebook.png',fit: BoxFit.cover,color: Colors.white.withOpacity(.5),),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: (){
    
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/icons/instagram.png',fit: BoxFit.cover,color: Colors.white.withOpacity(.5),),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: (){
    
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/icons/linkedin.png',fit: BoxFit.cover,color: Colors.white.withOpacity(.5),),
                  ),
                ),
              )
          ],)
    
        ],
      ),
    );
  }
}
