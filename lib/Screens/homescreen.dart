

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotstar/widgets/ContinueWatchingCard.dart';
import 'package:hotstar/widgets/MainCard.dart';
import 'package:hotstar/widgets/Top10card.dart';
import 'package:hotstar/widgets/const.dart';
import 'package:hotstar/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> SampleImages = [
    'assets/maincardphoto1.jpg',
    'assets/maincardphoto2.webp',
    'assets/maincardphoto3.jpg',
    'assets/maincardphoto4.jpg',
  ];

  List<String> YoutubeLinks = [
    'https://youtu.be/V5jVntRVl-0',
    'https://youtu.be/46B_l5onsbY',
    'https://youtu.be/Go8nTmfrQd8',
    'https://youtu.be/uShGv52y6no',
  ];
  int index = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('Disnep + Hotstar'),
        centerTitle: true,
        actions: [Icon(Icons.search)],
      ),
      drawer: CustomDrawer(),     
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            label: 'Home',
            icon: const Icon(
              Icons.home,
            ),
          ),
          new BottomNavigationBarItem(
            label: 'TV',
            icon: const Icon(Icons.tv),
          ),
          new BottomNavigationBarItem(
            label: 'Movies',
            icon: const Icon(Icons.movie),
          ),
        ],
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        fixedColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(                
                height: MediaQuery.of(context).size.height * 0.30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: MainCard(
                        ontap: ()async{
                         await launchUrl(Uri.parse(YoutubeLinks[index]));
                        },
                        text: 'Play',
                        backgroundimage: AssetImage(SampleImages[index]),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Continue Watching',
                style: style1,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.18,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: ContinueWatchingCard(
                        ontap: ()async {
                          await launchUrl(Uri.parse('https://youtu.be/Go8nTmfrQd8'));
                        },
                        text: 'Play',
                        backgroundColor:
                            AssetImage('assets/maincardphoto3.jpg'),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Top 10 in India Today - Hindi',
                style: style1,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Top10Card(
                        ontap: () async{
                          await launchUrl(Uri.parse('https://youtu.be/hpwnlr-ZHB0'));
                        },
                        backgroundimage: AssetImage('assets/top10photo3.jpg'),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Children's Day Special",
                style: style1,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Top10Card(
                        ontap: () async{
                          launchUrl(Uri.parse('https://youtu.be/RH3OxVFvTeg'));
                        },
                        backgroundimage: AssetImage('assets/top10photo4.webp'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
