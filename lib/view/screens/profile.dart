import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:workout_app/core/components/text_components.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 25, 25, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          'Trainer profile',
          style: TextStyle(fontSize: width * 0.07),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return const [
              PopupMenuItem(
                child: Text("Hello"),
                value: '/hello',
              ),
              PopupMenuItem(
                child: Text("About"),
                value: '/about',
              ),
              PopupMenuItem(
                child: Text("Contact"),
                value: '/contact',
              )
            ];
          })
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: CircleAvatar(
                radius: width * 0.2,
                child: Image.asset('assets/images/profile.jpg'),
              ),
            ).py(16),
            buildText(
              width,
              text: 'Mohammed Mustafa Almazouzi',
              size: 0.06,
              color: Colors.white,
              weight: FontWeight.bold,
            ),
            buildText(
              width,
              text: '@MoeAlm',
              size: 0.05,
              color: Colors.white24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    buildText(
                      width,
                      text: '120',
                      size: 0.1,
                      color: Colors.white,
                    ),
                    buildText(width,
                        text: 'Post', size: 0.045, color: Colors.white54)
                  ],
                ),
                const VerticalDivider(
                  color: Colors.white,
                ),
                Column(
                  children: [
                    buildText(
                      width,
                      text: '450',
                      size: 0.1,
                      color: Colors.white,
                    ),
                    buildText(width,
                        text: 'Friends', size: 0.045, color: Colors.white54)
                  ],
                ),
                const VerticalDivider(
                  color: Colors.grey,
                ),
                Column(
                  children: [
                    buildText(
                      width,
                      text: '1225',
                      size: 0.1,
                      color: Colors.white,
                    ),
                    buildText(width,
                        text: 'Following', size: 0.045, color: Colors.white54)
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.7,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontSize: width * 0.05, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_outlined,
                      color: Colors.white54,
                    ),
                  ),
                )
              ],
            ).py8(),
            const Divider(
              color: Colors.white10,
            ).px32(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildText(width,
                    text: 'Workout Program', size: 0.05, color: Colors.white70),
                TextButton(
                  onPressed: () {},
                  child: buildText(width,
                      text: 'See All', size: 0.05, color: Colors.white30),
                )
              ],
            ).px12(),
          ],
        ),
      ),
    );
  }
}
