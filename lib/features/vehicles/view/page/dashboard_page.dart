import 'package:fe_test/features/application/view/widget/gradient_scaffold.dart';
import 'package:fe_test/features/vehicles/view/bottomsheet/vehicle_bst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradient(
        body: Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: LinearProgressIndicator(
            value: 0.2,
          ),
        ),
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (value) {},
            ),
            const Text(
              "Vehicle",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  iconSize: 20,
                  onPressed: () {},
                ),
                const Text("Repo"),
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                  iconSize: 20,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 20,
            shrinkWrap: true,
            separatorBuilder: (context, index) => const SizedBox(height: 4),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => VehicleBst(context).vehicleDetail(),
                child: Card(
                  child: Row(
                    children: [
                      SizedBox(
                          width: 51.sp, height: 51.sp, child: FlutterLogo()),
                      SizedBox(width: 15.w),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(right: 15.w),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Honda City DFRE Auto",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "MH 34 FB 3465",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "10 mins",
                                    style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.red),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Not Bid",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    ));
  }
}
