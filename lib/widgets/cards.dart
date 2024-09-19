import 'package:flutter/material.dart';

class CardBanner extends StatelessWidget {
  const CardBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              'https://media.istockphoto.com/id/907753228/photo/indian-farmer-women-on-farm-field-with-happy-face.jpg?s=612x612&w=0&k=20&c=Hz8fwmpGs4iMWu9vtYVUnPfCD61srJhN8Tl3kW33JyM=',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Learn how we are helping 10,000+ farmers',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'This is our project to help farmers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecentDiagnoses extends StatefulWidget {
  const RecentDiagnoses({super.key});

  @override
  State<RecentDiagnoses> createState() => _RecentDiagnosesState();
}

class _RecentDiagnosesState extends State<RecentDiagnoses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      padding: const EdgeInsets.fromLTRB(14, 24, 14, 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            'Recent Diagnoses',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 16
            ),
          ),

          SizedBox(height: 20),

          
          MyDieseaseTile(
            url: 'https://www.ontario.ca/files/2022-07/omafra-black-rot-figure-1-en-400x308-2022-07-21-v1.jpg',
            name: 'Apple Black Rot',
            tagline: 'Apple'
          ),

          SizedBox(height: 20),

          MyDieseaseTile(
            url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN8cKzm_vlrxKu4HjFyru5SNUIyYmSpUcjVA&s',
            name: 'Northern Leaf Blight',
            tagline: 'Corn'
          ),

          SizedBox(height: 20),

          MyDieseaseTile(
            url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShtAQlNhpGebJgNH01lB3UiKFPCdOr9Db5fw&s',
            name: 'Tomato Leaf Blight',
            tagline: 'Tomato'
          ),
        ],
      ),
    );
  }
}

class MyDieseaseTile extends StatelessWidget {
  final String url;
  final String name;
  final String tagline;
  final Color? color;

  const MyDieseaseTile({super.key, required this.name, required this.tagline, required this.url, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.green, width: 1),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              url,
              height: 40,
              width: 40,
            ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Left aligns the text
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, color: color),
              ),
              Text(
                tagline,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ),

        Text(
          '2h ago',
          style: const TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
        ),

      ],
    );
  }
}