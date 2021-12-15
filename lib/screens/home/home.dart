
import 'package:amazing_todo_app/screens/form/form.dart';
import 'package:amazing_todo_app/shared_widget/containerwidget.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: const Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1533105079780-92b9be482077?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')),
        ),
        title: Text(
          'My Tasks',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize:
                  Theme.of(context).appBarTheme.toolbarTextStyle!.fontSize),
        ),

        
            actions: [
              PopupMenuButton(
                color: Colors.blue,
                icon: const Icon(Icons.menu_book_rounded),
                onSelected: (int value) {
                  setState(() {
                    this.value = value;
                  });
                },

                itemBuilder: (BuildContext context) => const
                [PopupMenuItem(
                  child: Text("Todo",
                  style: TextStyle(color: Colors.white),
                  ),
                  value:1,
                  ),
                  PopupMenuItem(
                    child: Text("Completed",
                    style: TextStyle(color: Colors.white)),
                    value: 2,
                  ),
                ]),

            Padding(
              padding: const EdgeInsets.only(right: 30.0),
            child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.search,
                  size: Theme.of(context).appBarTheme.iconTheme!.size,
                )),
            ),
            ],
      ),
  
      body: const ContainerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
           MaterialPageRoute(
             builder: (BuildContext context) => const FormInput()));
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      );
    
  }
}


