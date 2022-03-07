
import 'package:flutter/material.dart';
import 'package:tuling_music_app/theme.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({
    Key? key,
    required this.name,
    required this.album,
    required this.artist,
    required this.cover,
  }) : super(key: key);

  final String name, album, artist, cover;

  @override
  Widget build(BuildContext context) {
    final size = Sizes.size32 * 4;
    final interRadius = size / 5.5;
    final center = size / 2 - interRadius;
    return Container(
      margin: EdgeInsets.only(bottom: Sizes.size36),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size,
            height: size,
            margin: EdgeInsets.only(right: Sizes.size28),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size / 2)
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              children: [
                Image.network(
                    cover,
                    width: size,
                    height: size,
                    fit: BoxFit.cover
                ),
                Positioned(
                  top: center,
                  left: center,
                  child: CircleAvatar(
                    radius: interRadius,
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                style: primaryText,
              ),
              SizedBox(height: Sizes.size12),
              Text("$album - $artist",
                style: secondaryText,
              ),
            ],
          )
        ],
      ),
    );
  }
}
