import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 去掉右上角debug图标
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomePage(),
    );
  }

}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() =>  _HomePageState();

}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;


  // 生命周期函数： 当组件初始化的时候就会触发
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 9, vsync: this); //length是选项卡的长度

  }


  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),onPressed: (){},
        ),
        title: const Text("Flutter App"),
        backgroundColor: Colors.grey,
        actions: [    //  右侧的按钮图标
          IconButton(
              onPressed: (){
                print('右侧按钮图标');
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: (){
                print('更多按钮');
              },
              icon: const Icon(Icons.more_horiz)),
        ],
        bottom: TabBar(
          isScrollable: true,   //是否支持滑动
          indicatorColor: Colors.white,
          indicatorWeight: 2,
          indicatorPadding: const EdgeInsets.all(5),
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.white38,    //配置所有label的颜色
          unselectedLabelColor: Colors.white,   //配置未选中的label颜色
          labelStyle: const TextStyle(
            fontSize: 14.5
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 14
          ),
          // indicator: BoxDecoration(
          //   color: Colors.blue,
          //   borderRadius: BorderRadius.circular(10)
          // ),
          controller: _tabController,   // 注意，配置controller需要去掉TabBar上的const
          tabs: const [
            Tab(
              child: Text("关注"),
            ),
            Tab(
              child: Text("热门"),
            ),
            Tab(
              child: Text("视频"),
            ),
            Tab(
              child: Text("关注"),
            ),
            Tab(
              child: Text("热门"),
            ),
            Tab(
              child: Text("视频"),
            ),
            Tab(
              child: Text("关注"),
            ),
            Tab(
              child: Text("热门"),
            ),
            Tab(
              child: Text("视频"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text("我是关注列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是热门列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是视频列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是关注列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是热门列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是视频列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是关注列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是热门列表"),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text("我是视频列表"),
              ),
            ],
          ),
        ],
      )
    );
  }
}
