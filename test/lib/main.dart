import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'League of Legends Tournament',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('League of Legends Tournament'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.blue],
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://static.wikia.nocookie.net/leagueoflegends/images/7/7b/League_of_Legends_Cover.jpg/revision/latest/scale-to-width-down/1200?cb=20191018222445', // Replace with your image URL
              height: 200,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to the League of Legends Tournament!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the schedule page
              },
              child: const Text('View Schedule'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TeamsPage()),
                );
              },
              child: const Text('View Teams'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RulesPage()),
                );
              },
              child: const Text('View Rules'),
            ),
          ],
        ),
      ),
    );
  }
}

class TeamsPage extends StatelessWidget {
  const TeamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teams'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Roles in League of Legends:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Top',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text(
              'Mid',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text(
              'Jungle',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text(
              'Bot',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text(
              'Support',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
class RulesPage extends StatelessWidget {
  const RulesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rules'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Teams in League of Legends:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            RuleItem(
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTD9bpz275YF_LfpghSTU0ke6vEbXl4T5_7HBzjW_zKTha9kVumQm2ZuMaT5Snnouqy8k&usqp=CAU', // Replace with your image URL
              text: 'T1',
              linkUrl: 'https://www.t1.gg/',
            ),
            RuleItem(
              imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXekocy4oSDQsASodm76eoqHti752oaqLnJw&s', // Replace with your image URL
              text: 'Fenatic',
              linkUrl: 'https://fnatic.com/',
            ),
            RuleItem(
              imageUrl: 'https://tips.gg/team/raad-lol/poster/', // Replace with your image URL
              text: 'Ra3d',
              linkUrl: 'https://raad.gg/',
            ),
            RuleItem(
              imageUrl: 'https://liquipedia.net/commons/images/3/3f/Anubis_Gaming_Logo_2020.png', // Replace with your image URL
              text: 'Anubis',
              linkUrl: 'https://www.anubisgaming.com/',
            ),
            RuleItem(
              imageUrl: 'https://g2esports.com/cdn/shop/files/3_f3f13721-942c-4dfb-88e6-f4a08c8c817c.png?v=1693332746&width=1080', // Replace with your image URL
              text: 'G2',
              linkUrl: 'https://g2esports.com/',
            ),
          ],
        ),
      ),
    );
  }
}

class RuleItem extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String linkUrl;

  const RuleItem({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.linkUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
        GestureDetector(
          onTap: () async {
        
          },
          child: Image.network(
            imageUrl,
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}