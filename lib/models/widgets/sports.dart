import 'package:flutter/material.dart';
import '/models/widgets/app_drawer.dart';
import '/models/widgets/channel_count.dart';
import '/models/widgets/gridview_channels.dart';
import '../data/sports_channels.dart';
import 'package:provider/provider.dart';

class Sports extends StatelessWidget {
  const Sports({super.key, required this.search});
  final void Function() search;

  @override
  Widget build(BuildContext context) {
    final pr2 = Provider.of<SportsChannelsList>(context);
    return Scaffold(
      drawer: const AppDrawer(
        title: "Sports",
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 1, 7, 43),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sports",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).canvasColor),
            ),
            IconButton(onPressed: search, icon: const Icon(Icons.copyright))
          ],
        ),
      ),
      body: GridViewItems(
        itemCount: pr2.sItems.length,
        function: () => (ctx, index) => ChannelsCount(
              title: pr2.sItems[index].title,
              iconUrl: pr2.sItems[index].imageUrl,
              vUrl: pr2.sItems[index].videoUrl,
            ),
      ),
    );
  }
}
