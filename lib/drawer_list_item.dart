import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({this.onPressed, this.itemIcon, this.itemText});
  final Icon itemIcon;
  final String itemText;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50, top: 15),
      child: ListTile(
        leading: itemIcon,
        title: Text('$itemText'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
