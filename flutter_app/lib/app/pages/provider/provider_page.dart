import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/provider/counter_notifier.dart';
import 'package:flutter_app/app/widget/app_bar_widget.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
        value: CounterNotifier(),
        child: Scaffold(
            appBar: MyAppBar(
          titleText: 'provider demo',
          titleAction: <Widget>[],
        ),
          body: _BodyPage(),
        ));
  }
}

class _BodyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    // 获取 CounterNotifier 数据
    final counter = Provider.of<CounterNotifier>(context);

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('点击${counter.count}次',style: TextStyle(fontSize: 40.0)),
            FloatingActionButton(
              onPressed: () {
                counter.incremenr();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            )
          ],
        )
      )
    );
  }

}
