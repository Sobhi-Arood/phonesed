import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phonesed/constants.dart';
import 'package:phonesed/domain/entities/user.dart';
import 'package:intl/intl.dart';
import 'package:phonesed/presentation/routes/router.gr.dart';

class ProfileDetailsPage extends StatelessWidget {
  final User user;
  const ProfileDetailsPage({Key key, @required this.user}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile Information',
          style: TextStyle(color: kPrimaryDarkColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _valueDisplayWidget(
                  'Username',
                  user.name.value.fold((l) => 'Error', (r) => r),
                ),
                const SizedBox(height: 28),
                _valueDisplayWidget(
                  'Email',
                  user.email.value.fold((l) => 'Error', (r) => r),
                ),
                const SizedBox(height: 28),
                _valueDisplayWidget(
                  'Join date',
                  DateFormat('yMMMMd').format(user.joinDate),
                ),
                const SizedBox(height: 28),
                Text(
                  'Posts',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: kSecondaryLightColor,
                  ),
                ),
                ListTile(
                  enabled: user.numOfPublishedPosts != 0,
                  title: Text(
                    'Your Posts (${user.numOfPublishedPosts})',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: user.numOfPublishedPosts != 0
                          ? kPrimaryDarkColor
                          : Colors.grey,
                    ),
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () =>
                      ExtendedNavigator.of(context).pushMyPostsWatcherPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _valueDisplayWidget(String name, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          name,
          style: GoogleFonts.lato(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: kSecondaryLightColor,
          ),
          // style: const TextStyle(
          //     fontSize: 18,
          //     fontWeight: FontWeight.w500,
          //     color: kSecondaryLightColor),
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            value,
            style: GoogleFonts.lato(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: kPrimaryDarkColor,
            ),
          ),
        )
      ],
    );
  }
}
