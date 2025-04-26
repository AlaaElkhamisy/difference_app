// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
// import 'package:playing_app/core/utilis/app_colors.dart';
// import 'package:playing_app/core/utilis/assets.dart';
// import 'package:playing_app/features/friends/presentation/view/friends.dart';
// import 'package:playing_app/features/game/presentation/views/game_view.dart';
// import 'package:playing_app/features/rooms/presentation/views/rooms_view.dart';
// import 'package:playing_app/features/store/presentation/views/store_view.dart';
// import 'package:svg_flutter/svg.dart';

// PersistentTabController _controller = PersistentTabController();

// class HomeNavBarWidget extends StatelessWidget {
//   const HomeNavBarWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView(context,
//         screens: _buildScreens(),
//         controller: _controller,
//         items: _navBarsItems(),
//         navBarStyle: NavBarStyle.style12,
//         //backgroundColor: AppColors.primary_color,
//         decoration: NavBarDecoration(
//           gradient: LinearGradient(colors: [
//             AppColors.navBarColor1,
//             AppColors.navBarColor2,
//             AppColors.navBarColor3,
//             AppColors.navBarColor4
//           ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
//           colorBehindNavBar: AppColors.appColor3,
//           //borderRadius: BorderRadius.only(
//           //topLeft: Radius.circular(10), topRight: Radius.circular(10))),
//         ));
//   }
// }

// List<Widget> _buildScreens() {
//   return [
//     const StoreView(),
//     const GameView(),
//     const RoomsView(),
//     const FriendsView(),
//   ];
// }

// List<PersistentBottomNavBarItem> _navBarsItems() {
//   return [
//     PersistentBottomNavBarItem(
//         title: Assets.gameText,
//         //textStyle: TextStyle(fontFamily: "29lt-bukra"),
//         inactiveIcon: Image.asset(Assets.storeIcon),
//         icon: Image.asset(
//           Assets.storeActiveIcon,
//           width: 101.96,
//           height: 89.89,
//         )),
//     PersistentBottomNavBarItem(
//         inactiveIcon: Image.asset(Assets.gameIcon),
//         icon: SvgPicture.asset(Assets.gameActiveIcon)),
//     PersistentBottomNavBarItem(
//         inactiveIcon: Image.asset(Assets.roomIcon),
//         icon: Image.asset(Assets.roomIcon)),
//     PersistentBottomNavBarItem(
//         //title: Assets.
//         inactiveIcon: Image.asset(Assets.inactiveFriend),
//         icon: SvgPicture.asset(Assets.friendActive))
//   ];
// }
import 'package:flutter/material.dart';
import 'package:playing_app/core/utilis/app_Strings.dart';
import 'package:playing_app/core/utilis/app_colors.dart';
import 'package:playing_app/core/utilis/app_text_styles.dart';
import 'package:playing_app/core/utilis/assets.dart';
import 'package:playing_app/features/friends/presentation/view/friends.dart';
import 'package:playing_app/features/game/presentation/views/game_view.dart';
import 'package:playing_app/features/rooms/presentation/views/rooms_view.dart';
import 'package:playing_app/features/store/presentation/views/store_view.dart';

class HomeNavBarWidget extends StatefulWidget {
  const HomeNavBarWidget({super.key});

  @override
  State<HomeNavBarWidget> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBarWidget> {
  int currentIndex = 0;
  final List<Widget> pages = [
    StoreView(),
    GameView(),
    RoomsView(),
    FriendsView()
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      pages[currentIndex],
      Container(
        alignment: FractionalOffset.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 35),
        margin: EdgeInsets.only(top: 775),
        width: double.infinity,
        height: 71,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              AppColors.navBarColor1,
              AppColors.navBarColor2,
              AppColors.navBarColor3,
              AppColors.navBarColor4,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            boxShadow: [
              BoxShadow(
                  blurRadius: 64.9,
                  spreadRadius: 0,
                  offset: Offset(0, 0),
                  color: Colors.black.withOpacity(0.39))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.store,
              style: AppTextStyles.mainTextStyle.copyWith(fontSize: 16),
            ),
            Text(
              AppStrings.game,
              style: AppTextStyles.mainTextStyle.copyWith(fontSize: 16),
            ),
            Text(
              AppStrings.rooms,
              style: AppTextStyles.mainTextStyle.copyWith(fontSize: 16),
            ),
            Text(
              AppStrings.friends,
              style: AppTextStyles.mainTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
      Container(
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _navBarItem(Assets.storeIcon, 0),
            _navBarItem(Assets.gameIcon, 1),
            _navBarItem(Assets.roomIcon, 2),
            _navBarItem(Assets.inactiveFriend, 3)
          ],
        ),
      )
    ]);
  }

  _navBarItem(String image, int i) {
    bool isSelected = currentIndex == i;
    final Map<int, double> unselectedHeights = {
      0: 54.18, // Store
      1: 50.37, // Game - slightly taller
      2: 54.6, // Rooms - slightly shorter
      3: 36.36, // Friends
    };

    final Map<int, double> selectedHeights = {
      0: 89.89, // Store
      1: 93.36, // Game - pops higher
      2: 85.0, // Rooms - pops less
      3: 67.36, // Friends
    };

    final height =
        isSelected ? selectedHeights[i] ?? 89.89 : unselectedHeights[i] ?? 54.6;

    // Different vertical translation for each index
    final translateY = isSelected
        ? [-20.0, -25.0, -15.0, -20.0][i] // Different pop-up amounts
        : 0.0;

    final Map<int, double> unselectedWidths = {
      0: 54.18, // Store
      1: 54.61, // Game - slightly taller
      2: 54.6, // Rooms - slightly shorter
      3: 36.99, // Friends
    };

    final Map<int, double> selectedWidths = {
      0: 101.96, // Store
      1: 101.22, // Game - pops higher
      2: 85.0, // Rooms - pops less
      3: 83.49, // Friends
    };

    // Get heights based on index and selection state
    final width = isSelected
        ? selectedHeights[i] ?? 89.89 // Default if index not found
        : unselectedHeights[i] ?? 54.6;

    // Different vertical translation for each index

    return GestureDetector(
      onTap: () => setState(() => currentIndex = i),
      child: AnimatedContainer(
        padding: EdgeInsets.all(0),
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOutBack,
        transform: Matrix4.identity()
          ..translate(
            0.0,
            isSelected ? -20.0 : 0.0, // Move up when selected
          ),
        child: Image.asset(
          image,
          width: width,
          height: height, // Increase size when selected
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
