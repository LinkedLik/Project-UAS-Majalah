import 'package:flutter/material.dart';

class TampilanSearch extends StatefulWidget {
  const TampilanSearch({super.key});

  @override
  State<TampilanSearch> createState() => _TampilanSearchState();
}

class _TampilanSearchState extends State<TampilanSearch> {
  final ScrollController geserbawah = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: <Widget>[
        Stack(fit: StackFit.passthrough, children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 40),
            child: Text(
              "Explore",
              style: TextStyle(color: Colors.white, fontSize: 36),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 40, left: 150),
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white, fontSize: 13),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => _searchController.clear(),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: DefaultTabController(
              length: 5,
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey),
                tabs: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("For You"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("For You"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("For You"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("For You"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("For You"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
