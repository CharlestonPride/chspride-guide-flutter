import 'package:flutter/material.dart';

import 'drawer.dart';
import 'home-page.dart';
import 'schedule.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charleston Pride Guide',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePage(),
        '/sponsors': (BuildContext context) => const SponsorsPage(),
        '/welcome': (BuildContext context) => const WelcomePage(),
        '/schedule': (BuildContext context) => const SchedulePage(),
        '/our-team': (BuildContext context) => const OurTeamPage(),
        '/awards': (BuildContext context) => const AwardsPage(),
        '/parade': (BuildContext context) => const ParadePage(),
        '/festival': (BuildContext context) => const FestivalPage(),
        '/prism': (BuildContext context) => const PrismPage(),
      },
    );
  }
}

class SponsorsPage extends StatelessWidget {
  const SponsorsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Sponsors'),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text('Hello'),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome & Proclamation'),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text('Welcome'),
      ),
    );
  }
}

class OurTeamPage extends StatelessWidget {
  const OurTeamPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Team'),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text('team page'),
      ),
    );
  }
}

class AwardsPage extends StatelessWidget {
  const AwardsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awards'),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text('awards page'),
      ),
    );
  }
}

class ParadePage extends StatelessWidget {
  const ParadePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parade'),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text('awards page'),
      ),
    );
  }
}

class FestivalPage extends StatelessWidget {
  const FestivalPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Festival'),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text('awards page'),
      ),
    );
  }
}

class PrismPage extends StatelessWidget {
  const PrismPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prism'),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text('awards page'),
      ),
    );
  }
}
