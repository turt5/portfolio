import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/base/provider/_page_controller.dart';
import 'package:portfolio/base/view/pages/_aboutme.dart';
import 'package:portfolio/base/view/pages/_blogspage.dart';
import 'package:portfolio/base/view/pages/_portfoliopage.dart';
import 'package:portfolio/base/view/pages/_resumepage.dart';
import 'package:portfolio/base/view/widgets/_sidepanel.dart';

class MainPage extends ConsumerWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final pageSwitchModel = ref.watch(pageController);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            // Desktop screen
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SidePanel(colorScheme: colorScheme),
                const SizedBox(width: 20),
                Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 50),
                  padding: const EdgeInsets.all(30),
                  width: 900,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: colorScheme.primary.withOpacity(.2),
                      width: 2,
                    ),
                    color: colorScheme.surfaceContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AnimatedBuilder(
                                animation: pageSwitchModel,
                                builder: (context, _) {
                                  return Text(
                                    pageSwitchModel.selectedIndex == 0
                                        ? 'About Me'
                                        : pageSwitchModel.selectedIndex == 1
                                            ? 'Resume'
                                            : pageSwitchModel.selectedIndex == 2
                                                ? 'Portfolio'
                                                : 'Blog',
                                    style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 20),
                              Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: colorScheme.primary,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ],
                          ),
                          Transform.translate(
                            offset: const Offset(27, -30),
                            child: Container(
                              width: 300,
                              height: 60,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.2),
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  topRight: Radius.circular(18),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  buildMenuItem(
                                    context,
                                    ref,
                                    'About',
                                    0,
                                    colorScheme,
                                  ),
                                  buildMenuItem(
                                    context,
                                    ref,
                                    'Resume',
                                    1,
                                    colorScheme,
                                  ),
                                  buildMenuItem(
                                    context,
                                    ref,
                                    'Portfolio',
                                    2,
                                    colorScheme,
                                  ),
                                  buildMenuItem(
                                    context,
                                    ref,
                                    'Blog',
                                    3,
                                    colorScheme,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        child: AnimatedBuilder(
                          animation: pageSwitchModel,
                          builder: (context, _) {
                            switch (pageSwitchModel.selectedIndex) {
                              case 0:
                                return AboutMePage(colorScheme: colorScheme);
                              case 1:
                                return ResumePage();
                              case 2:
                                return PortfolioPage();
                              case 3:
                                return BlogPage();
                              default:
                                return Container(); // Return default state or handle other cases
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          } else if (constraints.maxWidth < 1100 &&
              constraints.maxWidth > 600) {
            return Center(child: Text('Medium Screen'));
          } else {
            return Center(child: Text('Small Screen'));
          }
        },
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, WidgetRef ref, String title,
      int index, ColorScheme colorScheme) {
    final pageSwitchModel = ref.watch(pageController);

    return MouseRegion(
      onEnter: (_) => ref.read(pageController).hoveredIndex = index,
      onExit: (_) => ref.read(pageController).hoveredIndex = -1,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => ref.read(pageController).selectedIndex = index,
        child: AnimatedBuilder(
          animation: pageSwitchModel,
          builder: (context, _) {
            return AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 200),
              style: GoogleFonts.poppins(
                color: pageSwitchModel.selectedIndex == index
                    ? colorScheme.primary
                    : pageSwitchModel.hoveredIndex == index
                        ? CupertinoColors.activeGreen
                        : Colors.white,
              ),
              child: Text(
                title,
              ),
            );
          },
        ),
      ),
    );
  }
}
