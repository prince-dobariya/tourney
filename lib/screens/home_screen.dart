import 'package:flutter/material.dart';
import 'package:tourney/config/dimention.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: const Text('Tourney'),
          floating: true,
          expandedHeight: deviceWidth/2,
          flexibleSpace: FlexibleSpaceBar(
            background: PageView(
              children: [
                Container(color: Colors.red),
                Container(color: Colors.green),
                Container(color: Colors.blue),
              ],
            ),
          ),
          bottom: TabBar.secondary(
            controller: _tabController, tabs: const [
            Tab(text: 'OnGoing'),
            Tab(text: 'Upcoming'),
            Tab(text: 'Closed'),
          ]),
        ),
        SliverFillRemaining(
          child: TabBarView(controller: _tabController, children: const [
            Text("data"),
            SizedBox(height: 200, child: Text("data")),
            SizedBox(height: 200, child: Text("data")),
          ]),
        )

        // TabBarView(controller: _tabController, children: const [
        //   // SliverToBoxAdapter(child: Text('data'),),
        //   // SliverToBoxAdapter(child: Text('data'),),
        //   // SliverToBoxAdapter(child: Text('data'),),
        // ])
      ],
    );
  }
}
