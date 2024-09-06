import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MediaQuery를 사용해 화면의 크기 정보를 가져옴
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Layout'),
      ),
      body: Center(
        // LayoutBuilder를 사용해 부모의 제약을 기준으로 레이아웃 변경
        child: LayoutBuilder(
          builder: (context, constraints) {
            // 화면 너비에 따라 다른 레이아웃을 구성
            if (constraints.maxWidth < 600) {
              // 작은 화면일 때 (모바일)
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.8,
                    height: 100,
                    color: Colors.blue,
                    child: Center(child: Text('Mobile Layout', style: TextStyle(color: Colors.white))),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: screenWidth * 0.8,
                    height: 100,
                    color: Colors.green,
                    child: Center(child: Text('Small Screen', style: TextStyle(color: Colors.white))),
                  ),
                ],
              );
            } else {
              // 큰 화면일 때 (태블릿 또는 데스크탑)
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.4,
                    height: 200,
                    color: Colors.blue,
                    child: Center(child: Text('Tablet/Desktop Layout', style: TextStyle(color: Colors.white))),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: screenWidth * 0.4,
                    height: 200,
                    color: Colors.green,
                    child: Center(child: Text('Large Screen', style: TextStyle(color: Colors.white))),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}