import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(), //매개변수
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key}); //생성자

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, //상단컬러
        elevation: 0.5,
        leading: Row //가로배치
            (
          children: [
            SizedBox(width: 16),
            Text(
              '지산동',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Colors.black,
            ),
          ],
        ),
        leadingWidth: 100, //크기지정
        actions: [
          // 오른쪽위 아이콘
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu_rounded, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bell, color: Colors.black),
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CilpRRect 를 통해 이미지에 곡선 border 생성
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            // 이미지
            child: Image.network(
              'https://cdn2.thecatapi.com/images/6bt.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'M1 아이패드 프로 11형(3세대) 와이파이 128G 팝니다.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  softWrap: false,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2),
                Text(
                  '지산동 · 6분 전',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '100만원',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    // 빈 칸
                    // 하트 아이콘
                    // '1'
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
