import 'package:flutter/material.dart';
import 'package:pizza_delivery/screen/doubbleeql/doubbleeql_page.dart';
import 'package:pizza_delivery/screen/home/home_page.dart';
import 'package:pizza_delivery/screen/person/person_page.dart';
import 'package:pizza_delivery/screen/save/save_page.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;

  // list of screens to show based on the selected index
  final List<Widget> screens = [
    HomePage(),
    DoubbleeqlPage(),
    SavePage(),
    PersonPage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.98),
      body: screens[_selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        // bottomnavbar height!
        child: SizedBox(
          height: 95,
        // bottomnavbar height!
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: const Color.fromARGB(129, 10, 112, 202),
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: const TextStyle(
              color: Color.fromARGB(129, 10, 112, 202),
              fontSize: 14,
            ),
            items: [
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/image01.png',
                      height: 25,
                      width: 25,
                      color: _selectedIndex == 0
                          ? const Color.fromARGB(129, 10, 112, 202)
                          : Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // lebel visibility starts here!!
                    Visibility(
                      visible: _selectedIndex == 0,
                      child: Container(
                        margin: const EdgeInsets.only(top: 2),
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(129, 10, 112, 202),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    // lebel visibility end here!!
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/image02.png',
                      height: 25,
                      width: 25,
                      color: _selectedIndex == 1
                          ? const Color.fromARGB(129, 10, 112, 202)
                          : Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: _selectedIndex == 1,
                      child: Container(
                        margin: const EdgeInsets.only(top: 2),
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(129, 10, 112, 202),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/image03.png',
                      height: 25,
                      width: 25,
                      color: _selectedIndex == 2
                          ? const Color.fromARGB(129, 10, 112, 202)
                          : Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: _selectedIndex == 2,
                      child: Container(
                        margin: const EdgeInsets.only(top: 2),
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(129, 10, 112, 202),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/image04.png',
                      height: 25,
                      width: 25,
                      color: _selectedIndex == 3
                          ? const Color.fromARGB(129, 10, 112, 202)
                          : Colors.grey,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: _selectedIndex == 3,
                      child: Container(
                        margin: const EdgeInsets.only(top: 2),
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(129, 10, 112, 202),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
