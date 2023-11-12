import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class infocard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: ListTile(
        contentPadding: EdgeInsets.all(15),
        leading: Icon(CupertinoIcons.bell),
        title: Text("Cards Title 1"),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text("Sub title"),
            SizedBox(height: 10),
            Text(
              "MyStringsSample.card_text",
              maxLines: 2,
            ),
          ],
        ),
        onTap: () {
          _showOptions(context);
        },
      ),
    );
  }

  void _showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Düzenle'),
                onTap: () {
                  print("düzenle");

                  Navigator.pop(context);
                  // Handle edit option
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Sil'),
                onTap: () {
                  Navigator.pop(context);
                  print("sil");
                  // Handle delete option
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
