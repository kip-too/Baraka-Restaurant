import 'package:baraka/configs/test_url.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('User Profile'),
        // ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(userAvatar),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'John Doe',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'johndoe@example.com',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              //const Divider(thickness: 1),
              //Padding(
              // padding: const EdgeInsets.all(16.0),
              //child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              //children: const [
              // Text(
              //   'About',
              //   style:
              //       TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(height: 8),
              // Text(
              //   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra, nisi nec finibus euismod, nisl sapien tincidunt risus, at convallis urna turpis in velit. Aliquam feugiat lacus a purus feugiat, sed consequat enim pellentesque. Donec mollis odio eget neque fermentum, non auctor est dapibus.',
              //   style: TextStyle(fontSize: 16),
              // ),
              //],
              //),
              //),
              const Divider(thickness: 1),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Contact Information',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Email: johndoe@example.com',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Phone: +1 (123) 456-7890',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Address: 123 Main St, Anytown, USA',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
