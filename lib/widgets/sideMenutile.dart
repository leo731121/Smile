import 'package:flutter/material.dart';

class BuildSideMenuTileWidget extends StatelessWidget {
  final String title;
  final Function onTap;
  final IconData iconData;

  const BuildSideMenuTileWidget(
      {Key key, this.title, this.onTap, this.iconData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
      leading: Icon(
        iconData,
        color: Colors.white,
      ),
      onTap: onTap,
    );
  }
}
