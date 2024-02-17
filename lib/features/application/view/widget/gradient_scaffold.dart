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
                    child: FilterTabsWidgets(),
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

class FilterTabsWidgets extends StatefulWidget {
  const FilterTabsWidgets({
    super.key,
  });

  @override
  State<FilterTabsWidgets> createState() => _FilterTabsWidgetsState();
}

class _FilterTabsWidgetsState extends State<FilterTabsWidgets> {
  List _list = [
    "All (150)",
    "Maruti + 2018 (110)",
    "Honda + 2016 (50)",
    "TATA + 2023 (500)"
  ];

  int _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      separatorBuilder: (context, index) => const SizedBox(width: 7),
      scrollDirection: Axis.horizontal,
      itemCount: _list.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const Icon(Icons.add_circle_rounded,
              size: 32, color: Colors.white);
        } else {
          return GestureDetector(
            onTap: () => setState(() {
              _selectedIndex = index;
            }),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: _selectedIndex == index
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                _list[index - 1],
                style: _selectedIndex == index
                    ? TextStyle(color: Theme.of(context).primaryColor)
                    : TextStyle(color: Colors.white),
              ),
            ),
          );
        }
      },
    );
  }
}
