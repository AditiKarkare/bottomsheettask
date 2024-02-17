import 'package:fe_test/features/homeScreen/view/widget/tile_Widget.dart';
import 'package:fe_test/features/homeScreen/view/widget/titlevalue_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VehicleBst {
  BuildContext context;
  VehicleBst(this.context);

  vehicleDetail() async {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      builder: (context) {
        return _vehicleDetails(context);
      },
    );
  }
}

_vehicleDetails(BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Flexible(
        child: DraggableScrollableSheet(
          expand: false,
          minChildSize: 0.5,
          builder: (context, scrollController) {
            return ListView(
              controller: scrollController,
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mahindra Scorpio N",
                            style: TextStyle(
                                fontSize: 21.sp,
                                color: const Color(0xff333333)),
                          ),
                          Text(
                            "MH 32 DF 7865 . 2016",
                            style: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff797979)),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.red,
                            size: 30.sp,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  height: 179,
                  width: double.infinity,
                  color: Colors.red,
                  child: const FlutterLogo(),
                ),
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
                const TitleWidget(title: "Key Information :"),
                const SizedBox(height: 10),
                GridView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1.3),
                  children: const [
                    KeyInformationWidget(
                      image: "asset/image/mfg_year.png",
                      title: "MFG Year",
                      value: "2021",
                    ),
                    KeyInformationWidget(
                      image: "asset/image/repo_date.png",
                      title: "Repo Date",
                      value: "26 June 2023",
                    ),
                    KeyInformationWidget(
                      image: "asset/image/fuel_type.png",
                      title: "Fuel Type",
                      value: "Petrol",
                    ),
                    KeyInformationWidget(
                      image: "asset/image/ksm_driven.png",
                      title: "KM’s Driven",
                      value: "20,000",
                    ),
                    KeyInformationWidget(
                      image: "asset/image/yard_location.png",
                      title: "Yard Location",
                      value: "Thane | 100 P/D",
                    ),
                    KeyInformationWidget(
                      image: "asset/image/transmission.png",
                      title: "Transmission",
                      value: "Automatic",
                    ),
                  ],
                ),
                //
                const CommonDivider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                const CommonDivider(), SizedBox(height: 10.h),
                const TitleWidget(title: "Legal Identification :"),
                SizedBox(height: 4.h),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      TitleValueTile(title: "RC no", value: "78686765443346"),
                      TitleValueTile(title: "Chasis no", value: "98087665GFU"),
                      TitleValueTile(title: "LAN no", value: "78686765443346"),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                const TitleWidget(title: "Insurance Information :"),
                SizedBox(height: 4.h),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: Column(
                    children: [
                      TitleValueTile(title: "Insurance", value: "Yes"),
                      TitleValueTile(
                          title: "Company", value: "Acko Car Insurance"),
                      TitleValueTile(
                          title: "Valid till", value: "12 June, 2024"),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
      Container(
        height: 100,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                          text: "15 mins", style: TextStyle(color: Colors.red)),
                    ]),
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 15, bottom: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 209.w,
                    height: 40,
                    color: Colors.grey,
                  ),
                  Container(
                    width: 120.w,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: const Color(0xffED6313)),
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
      )
    ],
  );
}

class CommonDivider extends StatelessWidget {
  const CommonDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
        color: Color(0xffe3e3e3),
        thickness: 2,
        indent: 10,
        endIndent: 10,
        height: 2);
  }
}

class KeyInformationWidget extends StatelessWidget {
  final String image;
  final String title;
  final String value;
  const KeyInformationWidget({
    super.key,
    required this.image,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(color: Color(0xff707070)),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(color: Colors.black, fontSize: 15.sp),
        ),
      ],
    );
  }
}
