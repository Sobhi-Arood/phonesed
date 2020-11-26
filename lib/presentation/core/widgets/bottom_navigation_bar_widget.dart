import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phonesed/application/chats/conversations_watcher/conversations_watcher_bloc.dart';
import 'package:phonesed/application/core/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:phonesed/constants.dart';
import 'package:kt_dart/collection.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        buildWhen: (p, c) => p.currentIndex != c.currentIndex,
        builder: (context, state) {
          return BottomAppBar(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomNavBarItem(
                  iconData: Icons.home_outlined,
                  activeIconData: Icons.home,
                  isActive: state.currentIndex == 0,
                  onPressed: () {
                    context
                        .read<BottomNavigationBloc>()
                        .add(const BottomNavigationEvent.pageChanged(0));
                  },
                ),
                BottomNavBarItem(
                  iconData: Icons.search_outlined,
                  activeIconData: Icons.search,
                  isActive: state.currentIndex == 1,
                  onPressed: () {
                    context
                        .read<BottomNavigationBloc>()
                        .add(const BottomNavigationEvent.pageChanged(1));
                  },
                ),
                BottomNavBarItem(
                  iconData: Icons.favorite_border_outlined,
                  activeIconData: Icons.favorite_outlined,
                  isActive: state.currentIndex == 2,
                  onPressed: () {
                    context
                        .read<BottomNavigationBloc>()
                        .add(const BottomNavigationEvent.pageChanged(2));
                  },
                ),
                BlocBuilder<ConversationsWatcherBloc,
                    ConversationsWatcherState>(
                  builder: (context, conState) {
                    return conState.map(initial: (_) {
                      return BottomNavBarItem(
                        iconData: Icons.chat_outlined,
                        activeIconData: Icons.chat,
                        isActive: state.currentIndex == 3,
                        onPressed: () {
                          context
                              .read<BottomNavigationBloc>()
                              .add(const BottomNavigationEvent.pageChanged(3));
                        },
                      );
                    }, loadInProgress: (_) {
                      return Container();
                    }, loadSuccess: (arr) {
                      if (arr.conversations.isNotEmpty()) {
                        final a = arr.conversations
                            .filter((con) => !con.recentMessageDidRead);
                        if (a.isNotEmpty()) {
                          return Stack(
                            children: [
                              BottomNavBarItem(
                                iconData: Icons.chat_outlined,
                                activeIconData: Icons.chat,
                                isActive: state.currentIndex == 3,
                                onPressed: () {
                                  context.read<BottomNavigationBloc>().add(
                                      const BottomNavigationEvent.pageChanged(
                                          3));
                                },
                              ),
                              Positioned(
                                  right: 0.0,
                                  top: 10.0,
                                  child: CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.redAccent,
                                  ))
                            ],
                          );
                        }
                        return BottomNavBarItem(
                          iconData: Icons.chat_outlined,
                          activeIconData: Icons.chat,
                          isActive: state.currentIndex == 3,
                          onPressed: () {
                            context.read<BottomNavigationBloc>().add(
                                const BottomNavigationEvent.pageChanged(3));
                          },
                        );
                      }
                      return BottomNavBarItem(
                        iconData: Icons.chat_outlined,
                        activeIconData: Icons.chat,
                        isActive: state.currentIndex == 3,
                        onPressed: () {
                          context
                              .read<BottomNavigationBloc>()
                              .add(const BottomNavigationEvent.pageChanged(3));
                        },
                      );
                    }, loadFailure: (_) {
                      return BottomNavBarItem(
                        iconData: Icons.chat_outlined,
                        activeIconData: Icons.chat,
                        isActive: state.currentIndex == 3,
                        onPressed: () {
                          context
                              .read<BottomNavigationBloc>()
                              .add(const BottomNavigationEvent.pageChanged(3));
                        },
                      );
                    });
                    // return BottomNavBarItem(
                    //   iconData: Icons.chat_outlined,
                    //   activeIconData: Icons.chat,
                    //   isActive: state.currentIndex == 3,
                    //   onPressed: () {
                    //     context
                    //         .read<BottomNavigationBloc>()
                    //         .add(const BottomNavigationEvent.pageChanged(3));
                    //   },
                    // );
                  },
                ),
                BottomNavBarItem(
                  iconData: Icons.person_outlined,
                  activeIconData: Icons.person,
                  isActive: state.currentIndex == 4,
                  onPressed: () {
                    context
                        .read<BottomNavigationBloc>()
                        .add(const BottomNavigationEvent.pageChanged(4));
                  },
                ),
              ],
            ),
          );
        });
  }
}

class BottomNavBarItem extends StatelessWidget {
  final IconData iconData;
  final IconData activeIconData;
  final bool isActive;
  final Function onPressed;
  const BottomNavBarItem(
      {Key key,
      @required this.iconData,
      @required this.activeIconData,
      @required this.isActive,
      @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        height: 60,
        child: Center(
          child: Icon(
            isActive ? activeIconData : iconData,
            color: isActive ? kPrimaryColor : kPrimaryDarkColor,
            size: 28,
          ),
        ),
      ),
    );
    // return Expanded(
    //   child: SizedBox(
    //     height: 60,
    //     child: Material(
    //       type: MaterialType.transparency,
    //       child: InkWell(
    //         onTap: () => {},
    //         child: Center(
    //           child: Icon(
    //             iconData,
    //             color: kPrimaryDarkColor,
    //             size: 32,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

// return BottomNavigationBar(
//         backgroundColor: Colors.white,
//         type: BottomNavigationBarType.fixed,
//         currentIndex: state.currentIndex,
//         onTap: (i) {
//           context
//               .read<BottomNavigationBloc>()
//               .add(BottomNavigationEvent.pageChanged(i));
//         },
//         items: [
//           const BottomNavigationBarItem(
//             label: '1',
//             icon: Icon(
//               Icons.home,
//             ),
//           ),
//           const BottomNavigationBarItem(
//             label: '2',
//             icon: Icon(
//               Icons.home,
//             ),
//           ),
//           const BottomNavigationBarItem(
//             label: '3',
//             icon: Icon(
//               Icons.home,
//             ),
//           ),
//           const BottomNavigationBarItem(
//             label: '4',
//             icon: Icon(
//               Icons.home,
//             ),
//           ),
//         ],
//       );
