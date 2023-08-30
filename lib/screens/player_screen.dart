import 'package:flutter/material.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  double getCoverArtSize(double z) {
    if (z > 360) {
      return z * 0.8;
    } else {
      return 360;
    }
  }

  @override
  Widget build(BuildContext context) {
    double comprimento = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.blueAccent,
            Colors.black,
          ],
          stops: [0, 1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.expand_more_rounded, size: 34),
                  ),
                  const Column(
                    children: [
                      Text(
                        "TOCANDO DA PLAYLIST",
                        style: TextStyle(
                          fontFamily: 'GothamLight',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Nome da Playlist",
                        style: TextStyle(
                          fontFamily: 'GothamMedium',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert_rounded, size: 34),
                ],
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child: Image(
                    image: const AssetImage(
                        'assets/images/playlist_standard_icon.png'),
                    height: getCoverArtSize(comprimento),
                    width: getCoverArtSize(comprimento),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "The Final Countdown",
                        style: TextStyle(
                          fontFamily: 'GothamMedium',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Europe",
                        style: TextStyle(
                          fontFamily: 'GothamLight',
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.favorite_border),
                ],
              ),
              const Text(
                "PROGRESS BAR",
                style: TextStyle(
                  fontFamily: 'GothamLight',
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.shuffle_rounded),
                  const Icon(Icons.arrow_back_rounded),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.pause)),
                  const Icon(Icons.arrow_forward_rounded),
                  const Icon(Icons.repeat),
                ],
              ),
              const SizedBox(height: 32),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.computer_rounded),
                  Row(
                    children: [
                      Icon(Icons.share),
                      Icon(Icons.list_rounded),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
