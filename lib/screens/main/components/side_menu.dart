import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screens/main/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../components/animated_progress_indicator.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledges.dart';
import 'my_info.dart';

final Uri _urlGitHub = Uri.parse('https://github.com/Koala0CE');
final Uri _urlLinkedIn = Uri.parse('https://www.linkedin.com/in/cgiuroiu/');

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Residence",
                      text: "United Kingdom",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Preston",
                    ),
                    const Skills(),
                    const SizedBox(height: defaultPadding),
                    const Coding(),
                    const Knowledges(),
                    const Divider(),
                    const SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: const Color(0xFF24242E),
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            onPressed: _launchUrlLinkedIn,
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                            tooltip:
                                "You need to be logged in to see my profile.",
                          ),
                          IconButton(
                            onPressed: _launchUrlGitHub,
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: null,
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrlGitHub() async {
  if (!await launchUrl(_urlGitHub)) {
    throw 'Could not launch $_urlGitHub';
  }
}

Future<void> _launchUrlLinkedIn() async {
  if (!await launchUrl(_urlLinkedIn)) {
    throw 'Could not launch $_urlLinkedIn';
  }
}
