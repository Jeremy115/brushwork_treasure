import 'package:brushwork_treasure/src/pages/home.dart';
import 'package:flutter/material.dart';

const int ThemeColor = 0xFFC91B3A;

class TabsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabbedPageState();
  }
}

class _TabbedPageState extends State<TabsPage> with SingleTickerProviderStateMixin {
  List<Widget> botTabs = [];//底部tabs按钮
  List<Widget> pages = [];//页面
  static List tabData = [
    {'text': '业界动态', 'icon': new Icon(Icons.language), 'page': MyHomePage()},
    {'text': 'WIDGET', 'icon': new Icon(Icons.extension), 'page': MyHomePage()},
    {'text': '组件收藏', 'icon': new Icon(Icons.favorite), 'page': MyHomePage()},
    {
      'text': '关于手册',
      'icon': new Icon(Icons.import_contacts),
      'page': MyHomePage()
    }
  ];

  //tabs按钮控制事件
  TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabData.length);
    
    for (int i = 0; i < tabData.length; i++) {
      botTabs.add(new Tab(
        text: tabData[i]['text'],
        icon: tabData[i]['icon'],
      ));
      pages.add(tabData[i]['page']);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: _tabController, children: pages),
      bottomNavigationBar: Material(
          color: const Color(0xFFF0EEEF), //底部导航栏主题颜色
          child: Container(
            height: 65.0,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: const Color(0xFFd0d0d0),
                  blurRadius: 3.0,
                  spreadRadius: 2.0,
                  offset: Offset(-1.0, -1.0),
                ),
              ],
            ),
            child: TabBar(
              indicatorColor: Theme.of(context).primaryColor,
              indicatorWeight: 0.1,
              controller: _tabController,
              labelColor: Theme.of(context).primaryColor,
              unselectedLabelColor: const Color(0xFF8E8E8E),
              tabs: botTabs
            ),
          )),
    );
  }
}
