import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../constants.dart';

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;
  final String title;
  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.white.withOpacity(0.9) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SpinKitFadingFour(
                color: kPrimaryColor,
              ),
              // const CircularProgressIndicator(),
              // const CupertinoActivityIndicator(),
              const SizedBox(height: 8),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: kPrimaryDarkColor,
                      fontSize: 16,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
