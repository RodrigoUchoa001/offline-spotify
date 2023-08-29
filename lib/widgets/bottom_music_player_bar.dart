import 'package:flutter/material.dart';

class BottomMusicPlayerBar extends StatelessWidget {
  const BottomMusicPlayerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage('assets/images/playlist_standard_icon.png'),
            height: 48,
            width: 48,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Unsainted",
                    style: TextStyle(
                      fontFamily: 'GothamMedium',
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "Slipknot",
                    style: TextStyle(
                      fontFamily: 'GothamLight',
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 12.0),
              Icon(Icons.pause),
            ],
          ),
        ],
      ),
    );
  }
}
