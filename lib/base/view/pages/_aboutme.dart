import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key, required this.colorScheme});
  final ColorScheme colorScheme;
  final String details =
      "Hi there, I'm Kaium Al Limon, a fullstack flutter developer from Dhaka, Bangladesh studying Computer Science and Engineering at United International University. I enjoy turing complex problems into simple. As a flutter developer, I can build responsive apps for all the platforms. My aim is to build user-friendly & attractive applications.";

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  details,
                  textAlign: TextAlign.justify,
                  maxLines: null,
                  softWrap: true,
                  style: TextStyle(color: colorScheme.onSurface),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: colorScheme.primary.withOpacity(.2),
                          width: 2)),
                  child: Row(
                    children: [
                      Text(
                        '1.5 +',
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.bold,color: colorScheme.primary),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Years Experience',
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: colorScheme.primary.withOpacity(.2),
                          width: 2)),
                  child: Row(
                    children: [
                      Text(
                        '20 +',
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.bold,color: colorScheme.primary),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Projects',
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: colorScheme.primary.withOpacity(.2),
                          width: 2)),
                  child: Row(
                    children: [
                      Text(
                        '3',
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.bold,color: colorScheme.primary),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Full-Stack Projects',
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: colorScheme.primary.withOpacity(.2),
                          width: 2)),
                  child: Row(
                    children: [
                      Text(
                        '2',
                        style: GoogleFonts.poppins(
                            fontSize: 22, fontWeight: FontWeight.bold,color: colorScheme.primary),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Honors & Awards',
                        style: GoogleFonts.poppins(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "What I'm Doing",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 150,
                    padding: EdgeInsets.all(35),
                    decoration: BoxDecoration(
                        // color: Colors.white.withOpacity(.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: colorScheme.primary.withOpacity(.2))),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.android_outlined,
                            color: colorScheme.primary,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile Development",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "I can build mobile applications for both Android and iOS using Flutter.",
                                style: GoogleFonts.poppins(
                                    fontSize: 13, color: Colors.grey),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Container(
                    height: 150,
                    padding: EdgeInsets.all(35),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: colorScheme.primary.withOpacity(.2))),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.web_outlined,
                            color: colorScheme.primary,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Web Development",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "I can build responsive web applications using Flutter. ",
                                style: GoogleFonts.poppins(
                                    fontSize: 13, color: Colors.grey),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 170,
                    padding: EdgeInsets.all(35),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: colorScheme.primary.withOpacity(.2))),
                    child: Row(
                      children: [
                        Container(
                          height: 170,
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            'assets/icons/app.png',
                            width: 30,
                            height: 30,
                            color: colorScheme.primary,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PHP Restful APIs",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "I can build restful apis in php to work as a fullstack system alongside with flutter apps.",
                                style: GoogleFonts.poppins(
                                    fontSize: 13, color: Colors.grey),
                              )
                            ],
                          ),
                        ))
                      ],
                    ),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Container())
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Education",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        color: colorScheme.primary.withOpacity(.3),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: colorScheme.primary, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'United International University',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text(
                      'Computer Science & Engineering',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text(
                      '2022 - Present',
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        color: colorScheme.primary.withOpacity(.3),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: colorScheme.primary, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Safiuddin Sarker Academy and College',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text(
                      'Higher Secondary School',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text(
                      '2018 - 2020',
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text(
                      'Grade: 5.00',
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                        color: colorScheme.primary.withOpacity(.3),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: colorScheme.primary, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Daudpur Putina High School',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text(
                      'Secondary School',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text(
                      '2012 - 2018',
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 33),
                child: Row(
                  children: [
                    Text(
                      'Grade: 5.00',
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
