
import 'package:flutter/material.dart';

class ChatsCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2.0),
              child: Image.network('https://s2.showstart.com/qn_5415626407534b49986d7b6579c8a2e6_1280_900_111266.0x0.jpg?imageMogr2/thumbnail/!312x220r/gravity/Center/crop/!312x220',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
              ),
            )
          ),
          Container(width: 10),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Container(height: 5),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text('477马力 530牛米 哥斯拉巨兽', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text('14:23', style: TextStyle(fontSize: 11, color: Color.fromARGB(255, 150, 150, 150))),
                          )
                        ],
                      ),
                      Text('[17 messages]如果你是性能车迷，那么对和M今天的主角就是F车系中的一员，雷克萨斯GS ',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: Color.fromARGB(200, 150, 150, 150)),
                      ),
                      Container(height: 10),
                      Divider(height: 0.5, color: Color.fromARGB(100, 150, 150, 150), indent: 0,)
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 235, 235, 235),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.search, color: Color.fromARGB(255, 150, 150, 150)),
                    Container(width: 10),
                    Text('Search', style: TextStyle(color: Color.fromARGB(255, 150, 150, 150), fontSize: 18))
                  ],
                ),
              ),
            ),
            Container(height: 15),
            Expanded(
              flex: 1,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: ChatsCell(),
                    );
                  },
                  itemCount: 50
              ),
            )
          ],
        )
      ),
    );
  }
}
