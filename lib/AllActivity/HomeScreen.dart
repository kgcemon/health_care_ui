import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
        BottomNavigationBarItem(icon: Image.asset("assets/home.png"),label: "home"),
        BottomNavigationBarItem(icon: Image.asset("assets/Icon.png",height: 20),label: "home"),
        BottomNavigationBarItem(icon: Image.asset("assets/calendar.png",height: 30),label: "home"),
        BottomNavigationBarItem(icon: Image.asset("assets/user.png",height: 30),label: "home"),
      ]),
      backgroundColor: Colors.white,
      appBar:
          AppBar(elevation: 0, toolbarHeight: 0, backgroundColor: Colors.white),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myappbar(),
              CustomScrollandallitems(),
            ]),
      ),
    );
  }
}

class myappbar extends StatelessWidget {
  const myappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/logo.png", height: 40),
        const Icon(
          Icons.notifications_none,
          size: 30,
        )
      ],
    );
  }
}

class CustomScrollandallitems extends StatelessWidget {
  const CustomScrollandallitems({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const welcomeBar(),
              const reactionBar(),
              const gridbar(),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 80,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xffF9F5FF)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(children: [
                        Image.asset(
                          "assets/head.png",
                          height: 30,
                        ),
                        const Text(" Relaxation",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ]),
                    ),
                  );
                },
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class welcomeBar extends StatelessWidget {
  const welcomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 25),
        Row(
          children: [
            Text("Hello, ", style: TextStyle(fontSize: 20)),
            Text(
              'Sara Rose',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
        SizedBox(height: 8),
        Text("How are you feeling today ?"),
        SizedBox(height: 15),
      ],
    );
  }
}

class reactionBar extends StatelessWidget {
  const reactionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 15,
          childAspectRatio: 5 / 6),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Image.asset(
              "assets/love.png",
              height: 55,
            ),
            const SizedBox(
              height: 3,
            ),
            const Text("Love"),
          ],
        );
      },
    );
  }
}

class gridbar extends StatelessWidget {
  const gridbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Feature",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Image.asset("assets/Button.png"),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Color(0xFFECFDF3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Positive vibes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text("Boost your mood with\n positive vibes"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, top: 10),
                      child: Row(
                        children: [
                          Icon(Icons.play_arrow, color: Colors.green),
                          Text("10 mins")
                        ],
                      ),
                    ),
                  ]),
              Image.asset(
                "assets/man.png",
                height: 150,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Exercise",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            Image.asset("assets/Button.png"),
          ],
        ),
      ],
    );
  }
}
