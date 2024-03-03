import "package:instagram/utils/global.dart";
import "package:instagram/utils/routes.dart";
import "package:instagram/widgets/story.dart";
import "package:flutter/material.dart";
import 'package:instagram/widgets/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: darkBackgroundColor,
        appBar: AppBar(
          backgroundColor: darkBackgroundColor,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 35,
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                  Icon(Icons.favorite_outline, color: Colors.white, size: 26),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.message_outlined, color: Colors.white, size: 26),
                ],
              )),
        ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
                    child: const Row(children: [
                      Story(
                          img:
                          "assets/images/rahul.png",
                          username: "Rahul_Chaudhary"),
                      Story(
                          img:
                          "assets/images/bumblebee.png",
                          username: "Bumblebee"),
                      Story(
                          img:
                          "assets/images/apple.png",
                          username: "Apple_Jangir"),
                      Story(
                          img:
                          "assets/images/nakul.png",
                          username: "Titan_nakul"),
                    ]
                    ),
                  ),
                ),
                const Divider(
                  thickness: 0.2,
                  color: secondaryColor,
                ),
                const Post(
                  username: "Addi_papa",
                  userurl:"assets/images/addi.png",
                  date: '04/02/2024',
                  desc: "Bs maza aa raha hai",
                  likes: 64,
                  posturl: "assets/images/addi_post.png",
                  title: "Patna",
                ),
                const Post(
                    username: "Anshumaan Gangwar",
                    userurl:"assets/images/gangwar.png",
                    date: "03/02/202",
                    desc: "Museum!!!",
                    likes: 52,
                    posturl: "assets/images/gangwar_post.png",
                    title: "Patna",

                )
              ],
            )
        )
    );
  }
}
