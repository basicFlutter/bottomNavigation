import 'package:bottom_navigation/ui/dashboard.dart';
import 'package:bottom_navigation/ui/profile.dart';
import 'package:bottom_navigation/ui/setting.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {


  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: screenWidth * 0.042,
              height: screenHeight * 0.042,
              child: SvgPicture.asset("assets/images/insta.svg",
                  color: Colors.grey),
            ),
            SizedBox(
              width:screenWidth*0.02,
            ),
            const Text("basic_flutter",style: TextStyle(color: Colors.grey),),
          ],
        ),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            // _pageController.jumpToPage(index);
            // _pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve:Curves.easeOutCirc ).then((value) =>);
            setState(() {
              _currentIndex = index;
            });
          },
          children:const <Widget>[

            Dashboard(),
            Profile(),
            Setting()

          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        // backgroundColor: Colors.blueGrey[900],
        selectedIndex: _currentIndex,

        showElevation: true,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        onItemSelected: (index) {
          _pageController.jumpToPage(index);
          setState(() => _currentIndex = index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(

            title: const Text('Dashboard',style: TextStyle(color: Colors.green)),
            icon:  Icon(Icons.apps,color:_currentIndex ==0? Colors.green : Colors.white70,),
            activeColor: Colors.white70,
            inactiveColor: Colors.grey,
            textAlign: TextAlign.center,

          ),
          BottomNavyBarItem(
              title: const Text('Profile',style: TextStyle(color: Colors.green)),
              icon: Icon(Icons.account_circle,color:_currentIndex ==1? Colors.green : Colors.white70,),
              activeColor: Colors.white70,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center
          ),
          BottomNavyBarItem(
              title:const Text('Setting',style: TextStyle(color: Colors.green),),
              icon: Icon(Icons.settings,color:_currentIndex ==2? Colors.green : Colors.white70,),
              activeColor: Colors.white70,
              inactiveColor: Colors.grey,
              textAlign: TextAlign.center

          ),
        ],
      ),
    );
  }
}
