import 'package:flutter/material.dart';
import 'package:welcome_hub/widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  final String userName;

  const HomeScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome, $userName!',
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CustomCard(icon: Icons.palette, title: "Visual Identity"),
            CustomCard(icon: Icons.record_voice_over, title: "Brand Voice"),
            CustomCard(icon: Icons.favorite, title: "Core Values"),
            CustomCard(icon: Icons.people, title: "Target Audience"),
            CustomCard(icon: Icons.check_circle, title: "Consistency"),
          ],
        ),
      ),
    );
  }
}
