import 'package:big_shopping_list/item_card.dart';
import 'package:big_shopping_list/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          titleSpacing: 8,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: const Color(0xFF2F54EB),
              onPrimary: Colors.white,
              onSurface: const Color(0xFF2F54EB),
              padding: const EdgeInsets.all(8),
              shape: const ContinuousRectangleBorder(),
              minimumSize: const Size(32, 32)),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  final ListState _state = ListState();
  final _scrollController = ScrollController();

  void _addItemAndScroll() async {
    _state.add();
    await Future.delayed(const Duration(
        milliseconds:
            300)); // дадим время обновить виджеты после добавления элемента
    _scrollController.animateTo(_scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.bounceIn);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Меню'),
            ElevatedButton(
              onPressed: _addItemAndScroll,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: Observer(
        builder: (_) => GridView.builder(
            controller: _scrollController,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: screenWidth / 2,
                childAspectRatio: 1,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0),
            itemCount: _state.list.length,
            itemBuilder: (context, index) => ItemCard(
                  data: _state.list[index],
                  sideSize: screenWidth / 2,
                  onDelete: () => _state.remove(index),
                )),
      ),
    );
  }
}
