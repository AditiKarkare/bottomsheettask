import 'package:fe_test/features/homeScreen/view/widget/titlevalue_widget.dart';
import 'package:fe_test/features/vehicles/view/widget/image_Carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 700,
              child: Stack(
                children: [
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 50),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "# AUC4534789974",
                                  style: TextStyle(
                                      color: const Color(0xff4f4f4f),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Image.asset("asset/image/hdfc_logo.png")
                              ],
                            ),
                          ),
                          const ImageCarousel(
                            heght: 179,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Flexible(
                                  child: Text(
                                    "2019 Honda City ZXLR Petrol at \nJuna Yard, Ghodhbunder,Thane",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 9, vertical: 9),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Text(
                                      "MH 04 \nDE 4528",
                                      textAlign: TextAlign.center,
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            color: const Color(0xffA7B9FC).withOpacity(0.17),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text.rich(
                                  const TextSpan(children: [
                                    TextSpan(
                                        text: "Start ‘s at",
                                        style: TextStyle(
                                            color: Color(0xff707070),
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(text: " : "),
                                    TextSpan(
                                      text: "₹ 20,00,000",
                                    ),
                                  ]),
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text.rich(
                                  const TextSpan(children: [
                                    TextSpan(
                                        text: "Start ‘s at",
                                        style: TextStyle(
                                            color: Color(0xff707070),
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(text: " : "),
                                    TextSpan(
                                        text: "15 mins",
                                        style: TextStyle(color: Colors.red)),
                                  ]),
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TitleValueTile(
                                            title: "Yard Fee",
                                            value: "100/D (256D)"),
                                        TitleValueTile(
                                            title: "Yard Loc.",
                                            value: "Aurangabad, MH"),
                                        TitleValueTile(
                                            title: "Repo Date",
                                            value: "21 Nov 23"),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TitleValueTile(
                                            title: "Fuel", value: "Petrol"),
                                        TitleValueTile(
                                            title: "KMs ", value: "2,00,000"),
                                        TitleValueTile(
                                            title: "Gear Box", value: "Auto"),
                                      ],
                                    ),
                                  ],
                                ),
                                TitleValueTile(
                                    title: "Auction ID",
                                    value: "#AUC4534789974"),
                                TitleValueTile(
                                    title: "Remarks",
                                    value:
                                        "The Buyer will have and the to apa...more"),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Set Bid Limit",
                                      style: TextStyle(
                                          color: const Color(0xff1D1E4E),
                                          fontSize: 16.sp),
                                    ),
                                    const SizedBox(width: 8),
                                    const Icon(
                                      Icons.edit,
                                      size: 17,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Auto Bid",
                                      style: TextStyle(
                                          color: const Color(0xff1D1E4E),
                                          fontSize: 16.sp),
                                    ),
                                    const SizedBox(width: 4),
                                    Switch(
                                      value: true,
                                      onChanged: (value) {},
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 15, bottom: 9),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 209.w,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          "₹ 1,35,00,000",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(10),
                                                    bottomRight:
                                                        Radius.circular(10))),
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: const Text("+"),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120.w,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: const Color(0xffED6313)),
                                      gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          stops: [0, 0.7],
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromARGB(255, 247, 176, 134),
                                            Color(0xffED6313)
                                          ])),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.gavel,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        "Bid (12)",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: Colors.white),
                            child: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.check_box_outline_blank_sharp,
                                color: Colors.green,
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: Colors.white),
                            child: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: Colors.white),
                            child: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Icon(
                                Icons.share_rounded,
                                color: Colors.blue,
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
