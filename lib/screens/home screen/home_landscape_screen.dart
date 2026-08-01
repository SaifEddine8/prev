import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_review/Constant/colors_class.dart';
import 'package:project_review/Constant/style_class.dart';
import 'package:project_review/db/product_db.dart';
import 'package:project_review/models/product_model.dart';
import 'package:project_review/provider/fav_provider.dart';
import 'package:project_review/screens/search%20screen/search_portrait_screen.dart';
import 'package:project_review/screens/search%20screen/search_screen.dart';
import 'package:project_review/widgets/card_product.dart';
import 'package:project_review/widgets/category_card.dart';
import 'package:project_review/widgets/home_screen_view.dart';
import 'package:project_review/widgets/slider.dart';
import 'package:provider/provider.dart';

class HomeLandscapeScreen extends StatefulWidget {
  const HomeLandscapeScreen({super.key});

  @override
  State<HomeLandscapeScreen> createState() => _HomeLandscapeScreenState();
}

class _HomeLandscapeScreenState extends State<HomeLandscapeScreen> {
  List<Categories> categories = [
    Categories.Colthes,
    Categories.Bags,
    Categories.Electronics,
    Categories.Shoese,
  ];
  List<String> homeView = ['Home', 'Category'];
  List<Widget> slids = [SliderWidget(), SliderWidget(), SliderWidget()];
  int selectedcategory = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(child: Icon(Icons.person)),
        title: ListTile(
          title: Text('Hi,Name'),
          subtitle: Text('Let\'s go shopping'),
        ),
        actions: [
          InkWell(
            onTap: () {
              print("Pressed");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchScreen()),
              );
            },
            child: Icon(Icons.search),
          ),
          SizedBox(width: 10),
          Icon(Icons.notifications),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: .spaceBetween,
          spacing: 24,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: .spaceAround,
              children: [
                HomeScreenView(
                  title: 'Home',
                  isSetected: selectedcategory == 0,
                  onTap: () => setState(() {
                    selectedcategory = 0;
                  }),
                ),
                HomeScreenView(
                  title: 'Category',
                  isSetected: selectedcategory == 1,
                  onTap: () => setState(() {
                    selectedcategory = 1;
                  }),
                ),
              ],
            ),
            if (selectedcategory == 0)
              Column(
                spacing: 40,
                children: [
                  Column(
                    children: [
                      CarouselSlider(
                        items: slids,
                        options: CarouselOptions(
                          height: MediaQuery.of(context).size.height / 3.5,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          enableInfiniteScroll: true,
                          initialPage: 0,
                          viewportFraction: 1,

                          // aspectRatio: 16/9,
                          onPageChanged: (index, reason) => setState(() {
                            currentIndex = index;
                          }),
                        ),
                      ),
                      CarouselIndicator(
                        count: slids.length,
                        index: currentIndex,
                        color: Colors.grey,
                        activeColor: ColorsClass.primaryColor,

                        // cornerRadius:
                      ),
                    ],
                  ),
                  Column(
                    spacing: 20,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text('New Arrifals🔥', style: StyleClass.subTitle),
                          Text(
                            'See All',
                            style: TextStyle(color: ColorsClass.primaryColor),
                          ),
                        ],
                      ),
                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 250,
                        ),
                        itemCount: products.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return CardProduct(
                            index: index,
                            product: products[index],
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            if (selectedcategory == 1)
              Column(
                children: [
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: categories.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryCard(
                        index: index,
                        category: categories[index],
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
