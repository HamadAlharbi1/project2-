import 'package:flutter/material.dart';

import '../pages/Cart.dart';
import '../pages/Listen.dart';
import '../pages/discover_page.dart';
import '../pages/sections.dart';
import '../pages/subscribe.dart';

class navigationBar extends StatefulWidget {
  const navigationBar({super.key});
  @override
  State<navigationBar> createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  var currentIndex = 0;
  static const MyIconcolor = Colors.white38;

  @override
  Widget build(BuildContext context) {
    Widget body;
    var pages = [
      const DiscoverPage(),
      const sections(),
      const Listen(),
      const favorate(),
      const subscribe(),
    ];

    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الصفحة الرئيسيه'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'اقتباسات'),
          BottomNavigationBarItem(icon: Icon(Icons.headphones), label: 'الكتب المسموعه'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'المفضله'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'اشترك معنا'),
        ],
        onTap: (newIndex) {
          currentIndex = newIndex;
          setState(() {});
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 0, 76, 89),
        selectedItemColor: const Color.fromARGB(255, 249, 124, 0),
        showUnselectedLabels: false,
        selectedFontSize: 10,
        unselectedItemColor: const Color.fromARGB(255, 230, 233, 236),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import '../pages/Cart.dart';
// import '../pages/discover_page.dart';
// import '../pages/playpage.dart';
// import '../pages/sections.dart';
// import '../pages/subscribe.dart';

// class navigationBar extends StatefulWidget {
//   final int currentIndex;
//   const navigationBar({required Key key, required this.currentIndex}) : super(key: key);

//   @override
//   _navigationBarState createState() => _navigationBarState();
// }

// class _navigationBarState extends State<navigationBar> {
//   var _currentIndex;

//   @override
//   void initState() {
//     _currentIndex = widget.currentIndex;
//     super.initState();
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         selectedItemColor: Theme.of(context).accentColor,
//         unselectedItemColor: Theme.of(context).canvasColor,
//         type: BottomNavigationBarType.fixed,
//         elevation: 0,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//               ),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.book,
//               ),
//               label: ''),
//           BottomNavigationBarItem(icon: Icon(Icons.headphones, color: Colors.white38), label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.favorite,
//               ),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.payment,
//               ),
//               label: ''),
//         ],
//         currentIndex: _currentIndex,
//         onTap: _onItemTapped,
//       ),
//       body: IndexedStack(
//         index: _currentIndex,
//         children: [
//           sections(),
//           DiscoverPage(),
//           Playpage(),
//           cart(),
//           subscribe(),
//         ],
//       ),
//     );
//   }
// }
