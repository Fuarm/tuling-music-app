import 'package:flutter/material.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class ScrollableSection extends StatelessWidget {
  const ScrollableSection({
    Key? key,
    this.children = const <Widget>[]
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: Sizes.size20 * 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}
