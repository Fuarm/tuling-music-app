import 'dart:async';
import 'dart:math';
import 'dart:typed_data';

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
    return Container(
      margin: EdgeInsets.only(bottom: Sizes.size28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: Sizes.size24),
            child: FutureBuilder(
              future: _getImageInfo(Image.network(
                  cover,
                  width: size,
                  height: size,
                  fit: BoxFit.cover
              )),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return snapshot.connectionState != ConnectionState.done || snapshot.hasError
                    ? SizedBox(width: size, height: size)
                    : ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return ImageShader(
                          snapshot.data.image,
                          TileMode.clamp,
                          TileMode.clamp,
                          Float64List.fromList([
                            1, 0, 0, 0,
                            0, 1, 0, 0,
                            0, 0, 1, 0,
                            0, 0, 0, snapshot.data.image.width / size,
                          ]),
                        );
                      },
                      blendMode: BlendMode.srcATop,
                      child: SizedBox(
                        height: size,
                        width: size,
                        child: CustomPaint(
                          painter: _RingPainter(),
                        ),
                      )
                    );
              },
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

  Future<ImageInfo> _getImageInfo(Image imageSource) {
    Completer<ImageInfo> completer = Completer<ImageInfo>();
    imageSource.image
        .resolve(const ImageConfiguration())
        .addListener(ImageStreamListener(
            (ImageInfo info, bool _) => completer.complete(info)
    ));
    return completer.future;
  }
}

class _RingPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = min(size.width, size.height) / 2;

    canvas.drawArc(
        Rect.fromLTWH(radius * 0.35, radius * 0.35, radius * 1.3, radius * 1.3),
        -pi / 2, pi * 2, false,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = radius * 0.65
          ..color = Colors.white
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

