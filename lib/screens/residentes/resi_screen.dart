import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'feed_resi_screen.dart';
import 'historial_visitas_resi_screen.dart';
import 'nueva_visita_screen.dart';
import 'notificaciones_screen.dart';

class ResiScreen extends StatefulWidget {
  const ResiScreen({super.key});

  @override
  State<ResiScreen> createState() => _ResiScreenState();
}

class _ResiScreenState extends State<ResiScreen> {
  int _currentIndex = 0;  
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: const [
              FeedResiScreen(),
              HistorialVisitasResiScreen(),
              NuevaVisitaScreen(),
              NotificacionesScreen(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CircleNavBar(
              shadowColor: Colors.black.withOpacity(0.1),
              activeIcons: const [
                Icon(Icons.feed, color: Colors.black),
                Icon(Icons.history, color: Colors.black),
                Icon(Icons.add, color: Colors.black),
                Icon(Icons.notifications, color: Colors.black),
              ],
              inactiveIcons: const [
                Text("Feed"),
                Text("Historial"),
                Text("Nueva"),
                Text("Notifs"),
              ],
              color: Colors.transparent, 
              circleColor: Colors.transparent,
              height: 60,
              circleWidth: 60,
              activeIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
