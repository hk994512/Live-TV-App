// import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:live_tv_app/models/providers/alert.dart';
import 'package:provider/provider.dart';
// import 'package:live_tv_app/models/widgets/animated_search_bar.dart';
import '/models/widgets/app_drawer.dart';
import '/models/widgets/channels.dart';
import '/models/widgets/sports.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _copy = Provider.of<AlertDialogBox>(context);
    // final p1 = Provider.of<AlertDialogBox2>(context);

    void _getCopyRight() {
      _copy.showAlertDialog(context);
    }

    // void _getIntro() {
    //   p1.showAlertDialog(context);
    // }

    List<Widget> screens = [
      Channels(
        copyright: _getCopyRight,
      ),
      Sports(
        search: _getCopyRight,
      ),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 1, 7, 43)),
        selectedItemColor: const Color.fromARGB(255, 1, 7, 43),
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Channels"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_cricket), label: "Sports"),
        ],
      ),
      drawer: const AppDrawer(),
      body: screens[_selectedIndex],
    );
  }
}


// import 'package:flutter/material.dart';
// import '/models/screens/cric.dart';
// import '../data/actions_list.dart';
// import '/models/widgets/title_row_set.dart';
// import '../widgets/sports.dart';
// import '/models/widgets/app_drawer.dart';
// import '../widgets/channels.dart';
// import '../variables/sys_variables.dart';
// enum Favorites { all, favorites }
// class TabScreen extends StatelessWidget {
//   const TabScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size;
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
          
//             drawer: const AppDrawer(),
//             appBar: AppBar(
//               toolbarHeight:height.height*0.10 ,
//               iconTheme: const IconThemeData(color: Colors.white),
//               backgroundColor: Theme.of(context).cardColor,
//               actions:const  [
//                 ActionList()
//                 ] , 
//               title:  const TitleRowSet() , 
//               bottom:   TabBar(
//                   mouseCursor: MaterialStateMouseCursor.clickable,
//                   indicatorColor: Colors.red,
//                   tabs: tabs),
//             ),
//             body: const TabBarView(children: [
//               Channels(), //0 index
//               Sports(), // 1 index
//             CricketPK() //2 index , 

//             ])));
//   }
// }