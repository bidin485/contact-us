import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15,
                          child: Icon(
                            Icons.chevron_left,
                            color: Colors.black,
                            size: 18,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Contact us',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF433D3D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        FractionallySizedBox(
                          widthFactor: 349 / MediaQuery.of(context).size.width,
                          child: const RectangleWidget(
                            image: 'images/headphone.png',
                            text: 'Customer service',
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: 349 / MediaQuery.of(context).size.width,
                          child: const RectangleWidget(
                            image: 'images/whatsapp.png',
                            text: 'Whatsapp',
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: 349 / MediaQuery.of(context).size.width,
                          child: const RectangleWidget(
                            image: 'images/global.png',
                            text: 'Website',
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: 349 / MediaQuery.of(context).size.width,
                          child: const RectangleWidget(
                            image: 'images/facebook.png',
                            text: 'Facebook',
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: 349 / MediaQuery.of(context).size.width,
                          child: const RectangleWidget(
                            image: 'images/twitter.png',
                            text: 'Twitter',
                          ),
                        ),
                        FractionallySizedBox(
                          widthFactor: 349 / MediaQuery.of(context).size.width,
                          child: const RectangleWidget(
                            image: 'images/instagram.png',
                            text: 'Instagram',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class RectangleWidget extends StatelessWidget {
  final String image;
  final String text;
  final double width;
  final double height;

  const RectangleWidget({super.key, 
   
    required this.image,
    required this.text,
    this.width = 54,
    this.height = 54,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFCDCDCD),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: width,
            height: height,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF433D3D),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const ContactPage());
}
