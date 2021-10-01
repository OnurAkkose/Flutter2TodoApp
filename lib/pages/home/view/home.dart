import 'package:flutter/material.dart';
import 'package:flutter_todo_app/pages/home/controller/home_controller.dart';
import 'package:flutter_todo_app/pages/post/view/post.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TodoList();
  }

}
class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final homeController = Get.find<HomeController>();
  String velocity = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFF9EC"),
      appBar: AppBar(
        //titleSpacing: 10,
        centerTitle: true,
        leading: Icon(Icons.menu, color: HexColor("303B48")),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: HexColor("303B48"),
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: HexColor("303B48"))),
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(
                        "assets/images/logo.png",
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 41.0, top: 2.0),
                    child: Text(
                      "Onur Akköse",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Software Developer",
                  style: GoogleFonts.poppins(
                      textStyle:
                      TextStyle(color: HexColor("8A8B81"), fontSize: 18)),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
        backgroundColor: HexColor("#F9BE7C"),
        elevation: 5,

        //bottom shadow
      ),
      body: Obx(() {
        return homeController.isLoading.isTrue
            ? Center(
          child: CircularProgressIndicator(),
        )
            : ListView(children: [
          Stack(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(
                  flex: 1,
                ),
                Text(
                  "My Tasks",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 18)),
                ),
                Spacer(
                  flex: 8,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.calendar_today,
                      color: HexColor("303B48"),
                      size: 30,
                    )),
              ],
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 40.0, left: 8.0, right: 8.0),
              child: Container(
                height: 500,
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(),
                  scrollDirection: Axis.vertical,
                  itemCount: homeController.todos.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        _todoItem(homeController.todos[index].title,
                            "tag", 0, Colors.grey, index),
                      ],
                    );
                  },
                ),
              ),
            )
          ]),
        ]);
      }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: HexColor("#FF9800"),
        onPressed: () {Get.toNamed("/post");},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: HexColor("FFF9EC"),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.perm_contact_cal,
                            color: HexColor("FFC27D"),
                          ),
                          Text(
                            'Tasks',
                            style: TextStyle(color: HexColor("FFC27D")),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: Colors.grey,
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _todoItem(String title, String tag, int priority, Color color, int index) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: GestureDetector(
          onLongPress: (){homeController.todos.removeAt(index);},
          onDoubleTap: (){print("object");},
          onTap: (){print("object");},
          child: Card(
          elevation: 8,
          shadowColor: Colors.grey,
      margin: EdgeInsets.all(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
          onTap: () {},
          child: ListTile(
            leading: Icon(Icons.alarm, size: 28, color: color),
            title: Text(
              title,
              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 15)),
            ),
            subtitle: Text(tag),
            trailing: Icon(
              Icons.check_circle,
              color: HexColor("F8C395"),
              size: 32,
            ),
            tileColor: HexColor("FFF9EC"),
          )),
    ),
    ),
    );
  }
  void _onDragEnd(DragEndDetails details) {

    double result = details.velocity.pixelsPerSecond.dx.abs().floorToDouble();
    setState(() {
      this.velocity = '$result';
    });
  }
}
