import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:smiles/BottomNavBar/Appointment/appointment.dart';
import 'package:smiles/BottomNavBar/Home/home.dart';
import 'package:smiles/BottomNavBar/Profile/profile.dart';
import 'package:smiles/BottomNavBar/chat/chat.dart';
import 'package:smiles/widgets/build_MenuSideMenuData.dart';

BuildContext testContext;

class RootPage extends StatefulWidget {
  final BuildContext menuScreenContext;
  RootPage({Key key, this.menuScreenContext}) : super(key: key);
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  final GlobalKey<SideMenuState> stateMenu = GlobalKey<SideMenuState>();

  List<Widget> _buildScreens() {
    return [
      Home(),
      ChatBox(),
      Appointment(),
      Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {},
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.chat),
        title: ("Chat Box"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {},
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.calendar_today),
        title: ("Appointment"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {},
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.supervised_user_circle),
        title: ("Profile"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: '/',
          routes: {},
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: stateMenu,
      background: Colors.blue[200],
      type: SideMenuType.shrikNRotate,
      menu: buildMenuSideMenuData(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.blue[200],
            ),
            onPressed: () {
              final state = stateMenu.currentState;
              state.openSideMenu();

              print('Drawer is pressed');
            },
          ),
          actions: [
            TopBar(stateMenu: stateMenu),
          ],
        ),
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
              ? 0.0
              : kBottomNavigationBarHeight,
          hideNavigationBarWhenKeyboardShows: true,
          margin: EdgeInsets.all(0.0),
          popActionScreens: PopActionScreensType.all,
          bottomScreenMargin: 0.0,
          onWillPop: (context) async {
            await showDialog(
              context: context,
              useSafeArea: true,
              builder: (context) => Container(
                height: 50.0,
                width: 50.0,
                color: Colors.white,
                child: ElevatedButton(
                  child: Text("Close"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            );
            return false;
          },
          selectedTabScreenContext: (context) {
            testContext = context;
          },
          hideNavigationBar: _hideNavBar,
          decoration: NavBarDecoration(
              colorBehindNavBar: Colors.indigo,
              borderRadius: BorderRadius.circular(20.0)),
          popAllScreensOnTapOfSelectedTab: true,
          itemAnimationProperties: ItemAnimationProperties(
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle:
              NavBarStyle.style8, // Choose the nav bar style with this property
        ),
      ),
    );
  }
}
