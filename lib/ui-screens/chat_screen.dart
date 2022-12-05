import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sizerpackage/component/constants.dart';

import '../component/widgets/head_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292F3F),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadWidget(),
            const SearchWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
              child: Text(
                'Chatrooms  ',
                style: TextStyle(
                    fontSize: 12.sp, color: Colors.white, letterSpacing: 2),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return FavWidget(
                    name: names[index],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: names.length,
              itemBuilder: (context, index) {
                return MassageWidget(
                  name: names[index],
                  time: times[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                height: 30,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}


class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: const TextStyle(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                fillColor: const Color(0xff202532),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 0,
                    color: Color(0xff202532),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class FavWidget extends StatelessWidget {
  const FavWidget({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 95,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            blurRadius: 20,
            spreadRadius: 3,
            offset: const Offset(1, 20),
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff41F103),
                    Color(0xff2980CC),
                    Color(0xff673F91),
                    Color(0xffA0025A),
                  ]),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Positioned(
            width: 95,
            height: 30,
            bottom: 43,
            left: 8,
            child: Text(
              name,
              style: TextStyle(fontSize: 8.sp, color: Colors.white),
              maxLines: 2,
            ),
          ),
          Positioned(
            right: 3,
            bottom: 5,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MassageWidget extends StatelessWidget {
  const MassageWidget({Key? key, required this.name, required this.time})
      : super(key: key);
  final String name;

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 50,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 35,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'maybe tomorrow is better go on , please never stop ',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            time,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }
}
