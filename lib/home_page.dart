import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: feed(),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ),
      ), //추출 코드분리
      floatingActionButton: FloatingActionButton(
        // 하단 플러스 버튼기능
        onPressed: () {},
        backgroundColor: Color(0xFFFF7E36),
        elevation: 1,
        child: Icon(
          Icons.add_rounded,
          size: 36,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '홈',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: '동네생활',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fmd_good_outlined),
            label: '내 근처',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: '나의 당근',
          ),
        ],
        currentIndex: 0,
      ),
    );
  }
}
