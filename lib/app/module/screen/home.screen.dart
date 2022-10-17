import 'package:consumer_app/app/core/utilities/size.dart';
import 'package:consumer_app/app/module/screen/screen.dart';
import 'package:consumer_app/app/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: const MainDrawer(),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/ellipse_bg.png',
            width: double.infinity,
            fit: BoxFit.fill,
            height: size.height * .20,
          ),
          Positioned(
            child: Container(
              width: size.width,
              padding: EdgeInsets.all(
                Screen.getProportionateScreenWidth(
                  context,
                  14,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Juan,',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: Screen.getProportionateScreenHeight(
                                context,
                                17,
                              ),
                            ),
                          ),
                          Text(
                            'Welcome Back!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Screen.getProportionateScreenHeight(
                                context,
                                17,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'PHP ',
                                  style: TextStyle(
                                    fontSize:
                                        Screen.getProportionateScreenHeight(
                                      context,
                                      15,
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: '1000',
                                  style: TextStyle(
                                    fontSize:
                                        Screen.getProportionateScreenHeight(
                                      context,
                                      20,
                                    ),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Load Balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Screen.getProportionateScreenHeight(
                                context,
                                12,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: Screen.getProportionateScreenHeight(
                      context,
                      15,
                    ),
                  ),
                  Expanded(
                    child: CustomScrollView(
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              SizedBox(
                                height: size.height * .25,
                                width: double.infinity,
                                child: Card(
                                  elevation: 3,
                                  color: Colors.white.withOpacity(.9),
                                ),
                              ),
                              SizedBox(
                                height: Screen.getProportionateScreenHeight(
                                  context,
                                  15,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Recommendations',
                                    style: TextStyle(
                                      fontSize:
                                          Screen.getProportionateScreenHeight(
                                        context,
                                        17,
                                      ),
                                      color:
                                          const Color.fromRGBO(88, 88, 88, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        Get.to(() => const CategoryScreen()),
                                    child: Text(
                                      'View All >',
                                      style: TextStyle(
                                        fontSize:
                                            Screen.getProportionateScreenHeight(
                                          context,
                                          13,
                                        ),
                                        color: Colors.blue,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Screen.getProportionateScreenHeight(
                                  context,
                                  15,
                                ),
                              ),
                              SizedBox(
                                height: size.height * .25,
                                width: double.infinity,
                                child: ListView(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    CardRecommendation(
                                      height: 150,
                                      width: size.width * .42,
                                      label: 'Promo',
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CardRecommendation(
                                      height: 150,
                                      width: size.width * .42,
                                      label: 'Most Search',
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CardRecommendation(
                                      height: 150,
                                      width: size.width * .42,
                                      label: 'Another Card',
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'News and Updates',
                                    style: TextStyle(
                                      fontSize:
                                          Screen.getProportionateScreenHeight(
                                        context,
                                        17,
                                      ),
                                      color:
                                          const Color.fromRGBO(88, 88, 88, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'View All >',
                                    style: TextStyle(
                                      fontSize:
                                          Screen.getProportionateScreenHeight(
                                        context,
                                        13,
                                      ),
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Card(
                                elevation: 5,
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 175,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Best Deals: LIMITED TIME OFFER',
                                    style: TextStyle(
                                      fontSize:
                                          Screen.getProportionateScreenHeight(
                                        context,
                                        17,
                                      ),
                                      color:
                                          const Color.fromRGBO(88, 88, 88, 1),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'View All >',
                                    style: TextStyle(
                                      fontSize:
                                          Screen.getProportionateScreenHeight(
                                        context,
                                        13,
                                      ),
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Discount ends in',
                                    style: TextStyle(
                                      fontSize:
                                          Screen.getProportionateScreenHeight(
                                        context,
                                        15,
                                      ),
                                      color:
                                          const Color.fromRGBO(88, 88, 88, 1),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: Screen.getProportionateScreenHeight(
                                      context,
                                      10,
                                    ),
                                  ),
                                  const DiscountTimer(),
                                  SizedBox(
                                    height: Screen.getProportionateScreenHeight(
                                      context,
                                      10,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: size.height * .47,
                                child: GridView(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing:
                                        Screen.getProportionateScreenWidth(
                                      context,
                                      10,
                                    ),
                                    mainAxisSpacing:
                                        Screen.getProportionateScreenHeight(
                                      context,
                                      10,
                                    ),
                                    childAspectRatio: 1.3,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  children: const [
                                    ItemCard(),
                                    ItemCard(),
                                    ItemCard(),
                                    ItemCard(),
                                    ItemCard(),
                                    ItemCard(),
                                    ItemCard(),
                                    ItemCard(),
                                    ItemCard(),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
