import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class CustomApp extends StatelessWidget {
  const CustomApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('안녕'),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        // body: SizedBox(
        //   child: Text('안녕'),
        // ),
        body: CustomApp()
      ),
    );
  }
}


// #stless 하고 tab
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     // return MaterialApp(
//     //   // home: Text('안녕')   텍스트 위젯
//     //   // home: Icon(Icons.star)   아이콘 위젯
//     //   // home: Image.asset('climbing-plant.png')  이미지 위젯
//     //   // home: Image.asset('person.jpg')
//     //   // home: SizedBox()   박스 위젯(1)
//     //   home: Center(
//     //     // child: Container(width: 50, height: 50, color: Colors.blue,)   // 단위 px이 아니고 LP
//     //     child: Scaffold(  // 상중하로 나눠주는 Scaffold() 위젯
//     //       appBar: AppBar(
//     //         // foregroundColor: Colors.blue,
//     //         title: Text('앱입'),
//     //       ),
//     //       body: Row(
//     //         // 자동완성 Ctrl + space
//     //         // mainAxisAlignment: MainAxisAlignment.center,  // 가로축
//     //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // 가로축
//     //         // crossAxisAlignment: CrossAxisAlignment.center,  // 세로축
//     //         children: [
//     //           Icon(Icons.star),
//     //           Icon(Icons.star),
//     //           Icon(Icons.star),
//     //         ],
//     //       ),
//     //       // bottomNavigationBar: BottomAppBar(),
//     //       bottomNavigationBar: BottomAppBar(
//     //         child: SizedBox(
//     //           height: 100,
//     //           child: Row(
//     //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     //             children: [
//     //               Icon(Icons.phone),
//     //               Icon(Icons.message),
//     //               Icon(Icons.contact_page),
//     //             ]
//     //           ),
//     //         )
//     //       ),
//     //     )
//     //   )
//     // );
//
//     // return MaterialApp(
//     //   home: Scaffold(
//     //     appBar: AppBar( title: Text('This is App'), ),
//     //     body: Align(
//     //       alignment: Alignment.topCenter,
//     //       child: Container(
//     //         // width: 150, height: 50, color: Colors.blue,
//     //         width: double.infinity, height: 50, color: Colors.blue,
//     //         // margin: EdgeInsets.all(20),
//     //         // margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
//     //         // decoration: BoxDecoration(
//     //         //   border: Border.all(color: Colors.black)
//     //         // ),
//     //         // child: Text('dddddd')
//     //       ),
//     //     )
//     //   )
//     // );
//
//     // return MaterialApp(
//     //   home: Scaffold(
//     //     // appBar: AppBar(
//     //     //     leading: Icon(Icons.star),
//     //     //     title: Text('앱임')
//     //     // ),
//     //     appBar: AppBar( actions: [Icon(Icons.star), Icon(Icons.star), Icon(Icons.star)], title: Text('앱임')),
//     //     body: SizedBox(
//     //       // child: Text('안녕하세요',
//     //       //   // style: TextStyle( color: Colors.red ),
//     //       //   // style: TextStyle( color: Color(0xffaaaaaa) ),
//     //       //   // style: TextStyle( color: Color.fromRGBO() ),
//     //       //   style: TextStyle( fontWeight: FontWeight.w700 ),
//     //       // ),
//     //       // child: TextButton (
//     //       //   child: Text('글자'),
//     //       //   onPressed: (){},
//     //       // )
//     //       // child: ElevatedButton(
//     //       //   child: Text('글자'),
//     //       //   onPressed: (){},
//     //       //   style: ButtonStyle(),
//     //       // )
//     //       child: IconButton(
//     //         icon: Icon(Icons.star),
//     //         onPressed: (){},
//     //       )
//     //     )
//     //   )
//     // );
//
//     // return MaterialApp(
//     //   home: Scaffold(
//     //     appBar: AppBar(),
//     //     body: Row(
//     //       children: [
//     //         // Flexible(child: Container(color: Colors.blue), flex: 5,),
//     //         // Flexible(child: Container(color: Colors.green), flex: 5,),
//     //         // Flexible(child: Container(color: Colors.red), flex: 5,),
//     //
//     //         Expanded(child: Container(color: Colors.blue)),
//     //         Container(width: 100, color: Colors.green)
//     //       ],
//     //     )
//     //   )
//     // );
//
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Container(
//           child: Row(
//             children: [
//               Image.asset('person.jpg', width: 150,),
//               Container(
//                 width: 300,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('RWIS', style: TextStyle(),),
//                     Text('온더시스'),
//                     Text('매설계기'),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(Icons.favorite),
//                         Text('4')
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ]
//           ),
//         )
//       )
//     );
//   }
// }
