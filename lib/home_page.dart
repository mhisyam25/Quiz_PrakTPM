import 'package:flutter/material.dart';
import 'package:kuis_1/detail_page.dart';

import 'package:kuis_1/model/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataMenu = getAllMenu();

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataMenu[index], context);
      },
      itemCount: dataMenu.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  Widget _createCard(Menu data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(
              image: data.image,
              name: data.name,
              desc: data.desc,
              price: data.price,
              rating: data.ratings,
              reviewer: data.reviewer,
              sold: data.sold,
            );
          }));
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(data.image),
            ),
            Expanded(
              flex: 3,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Text(data.name)),
            ),
          ],
        ),
      ),
    );
  }
}
