import 'package:flutter/material.dart';

AppBar appBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: RichText(
      text: TextSpan(
        style: TextStyle(
            color: Color(0xff464f41),
            fontWeight: FontWeight.w500,
            fontSize: 18),
        children: [
          TextSpan(text: 'Online '),
          TextSpan(
              text: 'Doctors',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff56776c)))
        ],
      ),
    ),
    actions: [
      IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          onPressed: () {
            showSearch(
              context: context,
              delegate: DataSearch(),
            );
          })
    ],
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
      ),
      color: Colors.black,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}

class DataSearch extends SearchDelegate<String> {
  final doctorsregistered = [
    'Emmia',
    'Usama',
    'Umer',
    'Moiz',
    'Ahmad',
  ];

  final recentDoctors = [
    'Umer',
    'Moiz',
    'Ahmad',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for appbar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left appbar
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // Show result
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show when someone search fot something
    final suggestionList = query.isEmpty
        ? recentDoctors
        : doctorsregistered
            .where((element) =>
                element.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
          text: TextSpan(
              text: (suggestionList[index].substring(0, query.length)),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey)),
              ]),
        ),
      ),
    );
  }
}
