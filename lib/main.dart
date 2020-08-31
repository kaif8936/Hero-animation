import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transition Demo',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 40,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.settings,
              color: Colors.black,
              size: 40,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return SeceondScreen();
                    },
                  ),
                );
              },
              child: Hero(
                tag: 'Image',
                child: Center(
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://images.pexels.com/photos/3536630/pexels-photo-3536630.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'KATE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text('@kate_martin'),
            Container(
              margin: EdgeInsets.all(20),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            '102',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                          Text('Publish')
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            '320',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                          Text('Trade')
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            '172',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                          Text('Failed')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.card_giftcard),
                  Text('My coupon'),
                  Icon(Icons.donut_small)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 100,
              color: Colors.yellow.withOpacity(0.4),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 100,
              color: Colors.blue.withOpacity(0.4),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 100,
              color: Colors.red.withOpacity(0.4),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 100,
              color: Colors.red.withOpacity(0.4),
            ),
          ],
        ),
      ),
    );
  }
}

class SeceondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    timeDilation = 4.0;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: 'Image',
          child: Container(
            color: Colors.black.withOpacity(0.5),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/3536630/pexels-photo-3536630.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
