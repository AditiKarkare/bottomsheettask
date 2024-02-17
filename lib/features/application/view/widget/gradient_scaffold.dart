import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ScaffoldGradient extends StatelessWidget {
  final Widget body;
  const ScaffoldGradient({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            const Color(0xff0C3680),
            Theme.of(context).primaryColor,
          ])),
        ),
        Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: SvgPicture.asset("asset/svg/name_logo.svg"),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("asset/svg/search.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("asset/svg/filter.svg")),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("asset/svg/slider-vertical.svg")),
              ],
              bottom: PreferredSize(
                  preferredSize: const Size(double.infinity, 50),
                  child: Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 7),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10 + 1,
                      itemBuilder: (context, index) {
                        return const Icon(Icons.add_circle_rounded,
                            size: 32, color: Colors.white);
                      },
                    ),
                  ))),
          backgroundColor: Colors.transparent,
          body: DecoratedBox(
              decoration: const BoxDecoration(color: Colors.white),
              child: body),
        ),
      ],
    );
  }
}
