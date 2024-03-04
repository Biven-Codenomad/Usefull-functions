import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  /// Function for Sub-Listing
  /*/// sample list
  List<String> list = ["List", "List", "List"];

  List<Widget> subCategoryList() {
    return list
        .map((data) => GestureDetector(
              /// OPEN sub-category page
              onTap: () {},
              behavior: HitTestBehavior.translucent,
              child: Container(
                color: PsColors.appleColor,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[Text(data), Spacer(), Icon(Icons.arrow_drop_down)],
                ),
              ),
            ))
        .toList();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            /// Nested Category listing UI for Tinqui
/*            // const CategoryProductMenuWidget(),

            ListTile(
              leading: Icon(Icons.category_sharp, size: 22, color: Utils.isLightMode(context) ? PsColors.achromatic800 : PsColors.achromatic50),
              trailing: Icon(Icons.arrow_drop_down, size: 22, color: Utils.isLightMode(context) ? PsColors.achromatic800 : PsColors.achromatic50),
              minLeadingWidth: 0,
              title: Text(
                'home__drawer_menu_category'.tr,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400),
              ),

              /// Will toggle visibility
              onTap: () {},
            ),

            /// Visibility Will be added here
            Visibility(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpansionTile(
                      title: Text('title'),
                      trailing: Icon(Icons.arrow_drop_down),
                      children: subCategoryList(),
                    );
                  }),
            )*/
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
