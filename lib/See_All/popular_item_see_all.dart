import 'package:flutter/material.dart';

class PopularItemSeeAll extends StatefulWidget {
  const PopularItemSeeAll({super.key});

  @override
  State<PopularItemSeeAll> createState() => _PopularItemSeeAllState();
}

class _PopularItemSeeAllState extends State<PopularItemSeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_outlined)),
          onPressed: () {},
        ),
        title: const Text('Popular Items'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                _buildItem(
                  'assets/images/photo1.png',
                  'Black Jacket',
                  '246.00',
                ),
                _buildItem(
                  'assets/images/photo2.png',
                  'Black Jacket',
                  '246.00',
                ),
              ],
            ),
            Row(
              children: [
                _buildItem(
                  'assets/images/photo3.png',
                  'Black Jacket',
                  '246.00',
                ),
                _buildItem(
                  'assets/images/photo4.png',
                  'Black Jacket',
                  '246.00',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildItem(String imagePath, String title, String price) {
  return Padding(
    padding: const EdgeInsets.all(18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 50),
        Stack(
          alignment: Alignment.topRight,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                imagePath,
                width: 170,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    '\$ ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.amber,
                    ),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
