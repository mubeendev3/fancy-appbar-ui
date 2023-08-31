import 'package:flutter/material.dart';

void main() {
  runApp(const FancyAppBarUI());
}

class FancyAppBarUI extends StatelessWidget {
  const FancyAppBarUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // If you wanted to use Material 3 Design Styles then Uncomment the Below Statements
      // theme: ThemeData(
      //   useMaterial3: true,
      //   appBarTheme: const AppBarTheme(foregroundColor: Colors.white),
      //   tabBarTheme: const TabBarTheme(
      //     labelColor: Colors.white,
      //     unselectedLabelColor: Colors.white54,
      //   ),
      // ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.deepPurple,
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Fancy App Bar"),
            titleSpacing: 0,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
            elevation: 30,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: const TabBar(
              labelStyle: TextStyle(),

              // labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: "Feed",
                ),
                Tab(
                  icon: Icon(Icons.face),
                  text: "Profile",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Settings",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              buildPage("Home Page"),
              buildPage("Feed Page"),
              buildPage("Profile Page"),
              buildPage("Settings Page"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPage(String text) => Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.red],
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(5, 5),
                          blurRadius: 30),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Made by Mubeen",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    wordSpacing: 5,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
