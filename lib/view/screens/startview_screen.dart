import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:workout_app/view/home/home_screen.dart';

class StartView extends StatelessWidget {
  const StartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good day',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.13,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'healthy body',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.13,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'With this app, you can try different types of activities and choose what the most enjoyable for you',
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                  )
                ],
              ).px20(),
              SizedBox(
                height: height * 0.47,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: width * 0.7,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.black, fontSize: width * 0.06),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'I have read and agree to the terms and conditions',
                    style: TextStyle(color: Colors.white),
                  ),
                  Checkbox(value: true, onChanged: (value) {})
                ],
              ).pOnly(left: width * 0.05)
            ],
          ).pOnly(top: height * 0.09),
        ),
      ),
    );
  }
}
