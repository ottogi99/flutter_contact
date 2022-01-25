import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp()
    )
  );
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  var a = 1;

  // var contacts = await ContactsService.getContacts(withThumbnails: false);
  // print(contacts[0].givenName)

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class CustomAppListView extends StatelessWidget {
  const CustomAppListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   child: Text('안녕'),
    // );
    // return ListView(
    //   children: [
    //     Text('안녕'),
    //     Text('안녕'),
    //     Text('안녕'),
    //   ],
    // );

    // 리스트뷰 동적 생성
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, i) {
        print(i);
        return ListTile(
          leading: Image.asset('person.jpg'),
          title: Text('홍길동')
        );
      }
    );
  }
}

class CustomAppListTitle extends StatelessWidget {
  const CustomAppListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('person.jpg'),
      title: Text('홍길동')
    );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({Key? key, this.addOne}) : super(key: key);
  final addOne;
  var inputData = TextEditingController();
  var inputData2 = '';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            // TextField( controller: inputData,),
            TextField( onChanged: (text){
              inputData2 = text;
            },),
            TextButton(onPressed: (){
              addOne();
            }, child: Text('완료')),
            TextButton(onPressed: (){ Navigator.pop(context); }, child: Text('취소'))
          ],
        ),
      ),
    );
  }
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];
  var total = 3;

  addOne() {
    setState(() {
      total++;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          // child: Text(a.toString()),
          // onPressed: (){
          //   setState(() {
          //     a++;
          //   });
          // },

          // child: Text('버튼'),
          // onPressed: (){
          //   showDialog(context: context, builder: (context) {
          //     return Dialog(
          //       child: Text('Alert Dialog Title'),
          //     );
          //   });
          // },
          onPressed: (){
            showDialog(context: context, builder: (context) {
              // return DialogUI(state: a);
              return DialogUI( addOne : addOne );
            });
          },
        ),
        appBar: AppBar(title: Text('연락처 (' + total.toString() + ')',)),
        // body: SizedBox(
        //   child: Text('안녕'),
        // ),
        // body: CustomAppListTitle()
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Image.asset('person.jpg'),
              title: Text(name[i]),
              trailing: ElevatedButton(
                child: Text('좋아요(' + like[i].toString() + ')'), onPressed: () {
                  setState((){
                    like[i]++;
                  });
                },
              ),
            );
          }
        )
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
