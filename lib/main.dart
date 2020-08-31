import 'package:flutter/material.dart';

double width, heigth;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0), // here the desired height
        child: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.more_horiz,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Text(
                'Science',
                style: TextStyle(
                    fontSize: width * 0.03,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "The Evolution of the Universe",
                style: TextStyle(fontSize: width * 0.07),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'published bt space_folks',
                    style:
                        TextStyle(color: Colors.grey, fontSize: width * 0.03),
                  ),
                  Text(
                    '23 Aug,2020',
                    style:
                        TextStyle(color: Colors.grey, fontSize: width * 0.03),
                  )
                ],
              ),
              Image.asset('images/project.jpeg'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    '''Editor’s Note (10/8/19): Cosmologist James Peebles won a 2019 Nobel Prize in Physics for his contributions to theories of how our universe began and evolved. He describes these ideas in this article, which he co-wrote for Scientific American in 1994.

At a particular instant roughly 15 billion years ago, all the matter and energy we can observe, concentrated in a region smaller than a dime, began to expand and cool at an incredibly rapid rate. By the time the temperature had dropped to 100 million times that of the sun’s core, the forces of nature assumed their present properties, and the elementary particles known as quarks roamed freely in a sea of energy. When the universe had expanded an additional 1,000 times, all the matter we can measure filled a region the size of the solar system.

At that time, the free quarks became confined in neutrons and protons. After the universe had grown by another factor of 1,000, protons and neutrons combined to form atomic nuclei, including most of the helium and deuterium present today. All of this occurred within the first minute of the expansion. Conditions were still too hot, however, for atomic nuclei to capture electrons. Neutral atoms appeared in abundance only after the expansion had continued for 300,000 years and the universe was 1,000 times smaller than it is now. The neutral atoms then began to coalesce into gas clouds, which later evolved into stars. By the time the universe had expanded to one fifth its present size, the stars had formed groups recognizable as young galaxies.
                '''),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavigationBar,
          ),
        ],
      ),
    );
  }

  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('chat')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: Colors.teal,
                size: 50,
              ),
              title: Text('create')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Notification')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('prfile')),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
      ),
    );
  }
}
