import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'My Profile',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 60,
                backgroundImage:
                    AssetImage('assets/images/cottern_charm_logo.png'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Antonio Renders',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '@renders.antonio',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.black12,
                child: const Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.person,
                      text: 'My Profile',
                    ),
                  ],
                ),
              ),
              const ProfileMenuItem(
                icon: Icons.notifications,
                text: 'Notification',
              ),
              const ProfileMenuItem(
                icon: Icons.history_rounded,
                text: 'History',
              ),
              const ProfileMenuItem(
                icon: Icons.subscriptions_rounded,
                text: 'My Subscription',
              ),
              const ProfileMenuItem(
                icon: Icons.settings,
                text: 'Setting',
              ),
              const ProfileMenuItem(
                icon: Icons.logout_rounded,
                text: 'Logout',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black54,
      ),
      title: Text(
        text,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
        size: 16,
      ),
    );
  }
}
