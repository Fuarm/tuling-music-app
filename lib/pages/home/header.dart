import 'package:flutter/material.dart';
import 'package:tuling_music_app/theme.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class Header extends StatefulWidget {
  const Header ({ Key? key }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: primaryColors,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(Sizes.size42 * 4))
      ),
      child: SafeArea(
        child: SizedBox(
          height: Sizes.size32 * 10,
          child: Column(
            children: [
              Container(
                height: Sizes.size42 * 4,
                padding: EdgeInsets.symmetric(horizontal: Sizes.size48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("晚上好",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text("李太白",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            Positioned(
                              left: 10,
                              top: -5,
                              child: Container(
                                width: Sizes.size36,
                                height: Sizes.size36,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                    style: BorderStyle.solid
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(Sizes.size18))
                                ),
                                child: const Center(
                                  child: Text("2",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              )
                            ),
                          ],
                        ),
                        Container(
                          width: Sizes.size36 * 2,
                          height: Sizes.size36 * 2,
                          margin: const EdgeInsets.only(left: 14),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                              style: BorderStyle.solid
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(Sizes.size36))
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(Sizes.size36),
                            child: const Image(
                              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        )
      ),
    );
  }
}