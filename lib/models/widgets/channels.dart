import 'package:flutter/material.dart';
import '/models/widgets/app_drawer.dart';
import '/models/widgets/channel_count.dart';
import '/models/widgets/gridview_channels.dart';
import 'package:provider/provider.dart';
import '../providers/channels_list.dart';

class Channels extends StatelessWidget {
  const Channels({super.key, required this.copyright});
  final void Function() copyright;
  @override
  Widget build(BuildContext context) {
    final pro1 = Provider.of<ChannelsList>(context);
    String title = "Channels";
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 1, 7, 43),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).canvasColor),
              ),
              IconButton(
                  onPressed: copyright, icon: const Icon(Icons.copyright))
            ],
          ),
        ),
        drawer: AppDrawer(
          title: title,
        ),
        body: GridViewItems(
            itemCount: pro1.items.length,
            function: () => (c, index) => ChannelsCount(
                title: pro1.items[index].title,
                iconUrl: pro1.items[index].image,
                vUrl: pro1.items[index].videoUrl)));
  }
}
