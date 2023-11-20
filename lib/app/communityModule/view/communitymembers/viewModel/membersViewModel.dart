import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toplulugum/core/utils/colors.dart';

class Membersview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.drawer,
      contentPadding: EdgeInsets.all(15),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://gratisography.com/wp-content/uploads/2022/03/gratisography-10-free-stock-photo-800x525.jpg"),
        //  maxRadius: 80,
      ),
      title: Text("Cards Title 1"),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever)),
    );
  }
}
