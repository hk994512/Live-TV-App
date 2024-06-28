import 'package:flutter/material.dart';
import '../variables/sys_variables.dart';

class AlertDialogBox with ChangeNotifier {
  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            content: Text(
              s1,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).cardColor,
                  ),
            ),
            title: Center(
              child: Text("Disclaimer",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).cardColor,
                      )),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).cardColor,
                          ))),
            ],
          );
        });
  }
}

class AlertDialogBox2 with ChangeNotifier {
  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            content: Text(s2,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground)),
            title: Text(
                textAlign: TextAlign.center,
                "Developer Introduction",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    )),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground))),
            ],
          );
        });
  }
}

void alertDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
            title: const Center(
              child: Text("Privacy Policy", style: styleBold),
            ),
            content: const Text(s3, style: styleX),
            actions: [
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("OK", style: styleBold)),
              )
            ],
          ));
}
