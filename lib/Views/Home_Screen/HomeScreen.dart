
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Controler/product_provider.dart';
import '../Detail_Screen/Detailed_Screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                // Open drawer or sidebar
              },
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF156778), Color(0xFF4DA0B0)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            centerTitle: true,
            elevation: 4,
            shadowColor: Colors.grey.withOpacity(0.5),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Products',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.white),
                      onPressed: () {
                        // Open search page
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.shopping_cart, color: Colors.white),
                      onPressed: () {
                        // Open cart page
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFa1c4fd), Color(0xFFc2e9fb)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Consumer<ProductProvider>(
          builder: (context, value, child) {
            if (value.isLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: Color(0xFF156778),
                ),
              );
            } else {
              final product = value.productModel!.product!.first;
              return Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                    items: value.productModel!.product!.map((product) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFc2e9fb)),
                            child: Image.network(product.thumbnail!, fit: BoxFit.cover),
                          );
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 150,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      // pauseAutoPlayOnTouch: Duration(seconds: 10),
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.productModel!.product!.length,
                      itemBuilder: (context, index) {
                        final product = value.productModel!.product![index];
                        return Card(
                          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 5,
                          child: ListTile(
                            contentPadding: EdgeInsets.all(8),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                product.thumbnail!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              product.title!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF156778),
                              ),
                            ),
                            subtitle: Text(
                              product.brand!,
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailScreen(product: product),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
