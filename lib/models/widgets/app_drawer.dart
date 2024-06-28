import 'package:flutter/material.dart';
import '/models/providers/alert.dart';
import '/models/screens/tab_bar.dart';
import 'package:provider/provider.dart';
import '../data/sports_channels.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
    this.title = "",
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    final sportsChannelsList = Provider.of<SportsChannelsList>(context);
    final _p2 = Provider.of<AlertDialogBox2>(context);
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.movie_rounded,
                  size: 40,
                  color: Colors.white,
                ),
                const SizedBox(width: 18),
                Text(
                  "5 Streamz TV",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.tv_sharp,
              size: 26,
              color: Colors.indigo,
            ),
            title: Text(
              "Channels",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            onTap: () {
              if (title == "Channels") {
                Navigator.pop(context);
              } else {
                Navigator.of(context).push(MaterialPageRoute(
                    settings: RouteSettings(arguments: title),
                    builder: (c) => const TabsScreen()));
              }
            },
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(
              Icons.add_business_outlined,
              size: 26,
              color: Color.fromARGB(255, 6, 168, 90),
            ),
            title: Text(
              "WhatsApp",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            onTap: () =>
                sportsChannelsList.lauchUrl("https://wa.me/+923081736926"),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(
              Icons.facebook,
              size: 26,
              color: Colors.blue,
            ),
            title: Text(
              "Facebook",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            onTap: () => sportsChannelsList.lauchUrl(
                "https://www.facebook.com/profile.php?id=100093588376075"),
          ),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(
              Icons.telegram,
              color: Color.fromARGB(255, 50, 88, 155),
            ),
            title: Text(
              "Developer",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            onTap: () {
              _p2.showAlertDialog(context);
            },
          ),
          const Divider(
            height: 1,
          ),
          ListTile(
            leading: const Icon(
              Icons.android,
              size: 26,
              color: Colors.green,
            ),
            title: Text(
              "Version",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              "1.1.0",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
