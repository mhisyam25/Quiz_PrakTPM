import 'package:flutter/material.dart';
import 'package:kuis_1/home_page.dart';
import 'package:kuis_1/payment_page.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String name;
  final String desc;
  final int price;
  final double rating;
  final int reviewer;
  final int sold;

  const DetailPage({
    Key? key,
    required this.image,
    required this.name,
    required this.desc,
    this.price = 0,
    this.rating = 0,
    this.reviewer = 0,
    this.sold = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black12,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Image.network(image, height: 250, width: 250,),
              TopRoundedContainer(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        desc,
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        "${price}",
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        "${rating}",
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        "${reviewer}",
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Text(
                        "${sold}",
                        style: TextStyle(fontSize: 17, color: Colors.black87),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                          Colors.red,// background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: (){
                          _paymentProcess(context);
                        },
                        child: const Text('Beli'),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                          Colors.red,// background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: (){
                          _backHomeProcess(context);
                        },
                        child: const Text('Tidak'),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    required this.child,
    required this.color,
  }) : super(key: key);

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: child,
    );
  }
}

void _paymentProcess(BuildContext context){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
    return const PaymentPage();
  }));
}

void _backHomeProcess(BuildContext context){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
    return const HomePage();
  }));
}
