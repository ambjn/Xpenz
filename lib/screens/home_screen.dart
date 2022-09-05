import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xpenz/widgets/custom_icon.dart';
import 'package:xpenz/widgets/custom_task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/images/profile_image.png",
                      fit: BoxFit.cover,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Welcome Back",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 2.5),
                          Text(
                            "Amber Jain",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(width: 100),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.bars,
                          color: Colors.grey,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 0.5),
            const SizedBox(height: 25),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 25, right: 150),
              child: const Text(
                "Complete your KYC now 😡",
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 25),

            Container(
              padding: const EdgeInsets.only(left: 5, right: 2.5),
              height: 1000,
              width: MediaQuery.of(context).size.width - 50,
              decoration: BoxDecoration(
                  color: Colors.indigo.shade500,
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Container(
                    color: Colors.pink,
                    height: 650,
                    child: Column(
                      children: [Text("data")],
                    ),
                  ),
                  Container(
                    color: Colors.pink,
                    height: 350,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const SizedBox(height: 50),
                            Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          FontAwesomeIcons.coins,
                                          color: Colors.amber,
                                        ),
                                        SizedBox(width: 15),
                                        Text(
                                          "Projected\nSaving",
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const Text("5000",
                                        style: TextStyle(fontSize: 20))
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Container(
                              height: 120,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(
                                          FontAwesomeIcons.burger,
                                          color: Colors.red,
                                        ),
                                        SizedBox(width: 15),
                                        Text(
                                          "Highest\nSpend",
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const Text("7000",
                                        style: TextStyle(fontSize: 20))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 15),
                        Container(
                          height: 250,
                          width: 125,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 25),
                                Row(
                                  children: const [
                                    Text("Card Balance",
                                        style: TextStyle(fontSize: 16))
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text("5000",
                                    style: TextStyle(fontSize: 25)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 250),

            Container(
                height: 75,
                width: double.infinity,
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Card(
                    color: Colors.grey.shade50,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: SizedBox(
                      height: 100,
                      width: 175,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.indigo.shade50,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: const [
                                  Icon(
                                    FontAwesomeIcons.house,
                                    color: Colors.indigo,
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Home",
                                    style: TextStyle(color: Colors.indigo),
                                  ),
                                ],
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.wallet,
                                color: Colors.grey,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.chartPie,
                                color: Colors.grey,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FontAwesomeIcons.lightbulb,
                                color: Colors.grey,
                              )),
                        ],
                      ),
                    ))),
            const SizedBox(height: 30),

            //Categories
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: const Text(
                "Categories",
                style: TextStyle(fontSize: 22),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Row(children: const [
                  CustomIcon(
                      fontAwesomeIcons: FontAwesomeIcons.burger,
                      iconText: "Food",
                      iconColor: Colors.orangeAccent),
                  SizedBox(width: 25),
                  CustomIcon(
                      fontAwesomeIcons: FontAwesomeIcons.paw,
                      iconText: "Pet",
                      iconColor: Colors.pinkAccent),
                  SizedBox(width: 25),
                  CustomIcon(
                      fontAwesomeIcons: FontAwesomeIcons.bagShopping,
                      iconText: "Shopping",
                      iconColor: Colors.indigoAccent),
                  SizedBox(width: 25),
                  CustomIcon(
                      fontAwesomeIcons: FontAwesomeIcons.video,
                      iconText: "Entertainment",
                      iconColor: Colors.greenAccent),
                  SizedBox(width: 25),
                  CustomIcon(
                      fontAwesomeIcons: FontAwesomeIcons.heartCircleCheck,
                      iconText: "Health",
                      iconColor: Colors.redAccent),
                  SizedBox(width: 25),
                ]),
              ),
            ),
            const SizedBox(height: 35),
            //Task
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: const Text(
                "Task",
                style: TextStyle(fontSize: 22),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Row(
                  children: [
                    CustomTask(
                      iconBackgroundColor: Colors.amber.shade50,
                      iconColor: Colors.amber,
                      icon: FontAwesomeIcons.key,
                      headingText: "01",
                      headingTextColor: Colors.amber.shade100,
                      contentHeadingText: "Complete KYC",
                      contentText: "Complete KYC and earn ₹25",
                    ),
                    CustomTask(
                      iconBackgroundColor: Colors.green.shade50,
                      iconColor: Colors.green,
                      icon: FontAwesomeIcons.folderOpen,
                      headingText: "02",
                      headingTextColor: Colors.green.shade100,
                      contentHeadingText: "Complete Category",
                      contentText: "Complete Category and earn ₹25",
                    ),
                    CustomTask(
                      iconBackgroundColor: Colors.red.shade50,
                      iconColor: Colors.red,
                      icon: FontAwesomeIcons.checkDouble,
                      headingText: "03",
                      headingTextColor: Colors.red.shade100,
                      contentHeadingText: "Complete Verificaton",
                      contentText: "Complete Verificaton and earn ₹25",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 25),
            const SizedBox(height: 30),
            //Offers & Rewards
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: const Text(
                "Offers & Rewards",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              height: 375,
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(25)),
                                width: 225,
                                height: 150,
                              ),
                              const SizedBox(height: 25),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(height: 2.5),
                                  Text(
                                    "A Rewarding Celebration",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Win rewards for Citizen, \nPeter England & more",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              SizedBox(
                                width: 200,
                                child: TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.transparent),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          side: const BorderSide(
                                              color: Colors.indigoAccent,
                                              width: 0.5),
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Explore Rewards",
                                          style: TextStyle(
                                              color: Colors.indigo.shade700,
                                              fontSize: 14),
                                        ),
                                        Icon(FontAwesomeIcons.plus,
                                            color: Colors.indigo.shade700,
                                            size: 16),
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    );
                  }),
            ),
            const SizedBox(height: 10),
            //Blogs
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: const Text(
                "Blogs",
                style: TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              height: 325,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(25)),
                                width: 240,
                                height: 120,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 15),
                                    const Text(
                                      "4 Methods of calculating network,\nwhich no one would tell you",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      "Read Time: 8 mins",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.asset(
                                                "assets/images/profile_image.png",
                                                fit: BoxFit.cover,
                                                height: 25,
                                              ),
                                            ),
                                            const SizedBox(width: 5),
                                            const Text(
                                              "Amber Jain",
                                              style: TextStyle(),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 25),
                                        const Text(
                                          "06/09/2022",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 25),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    );
                  }),
            ),
            const SizedBox(height: 50),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      children: const [
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: 3,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "A budget doesn't \nlimit your freedom;\nit gives you\nfreedom",
                          style: TextStyle(color: Colors.grey, fontSize: 30),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      )),
    );
  }
}
