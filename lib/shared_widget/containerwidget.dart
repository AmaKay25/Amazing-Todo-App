

import 'package:amazing_todo_app/shared_widget/card_widget.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade200, borderRadius: BorderRadius.circular(10.0)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: const [
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),

          ],
        ),
    ),
  );            
        
        
  
    
  }
}


  
