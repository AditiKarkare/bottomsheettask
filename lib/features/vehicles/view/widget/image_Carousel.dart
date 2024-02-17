import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final double heght;
  const ImageCarousel({
    super.key,
    required this.heght,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  ValueNotifier valueNotifier = ValueNotifier(0);
  void incrementNotifier(int value) {
    valueNotifier.value = value;
  }

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, value, child) => Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          height: widget.heght,
          width: double.infinity,
          color: Colors.red,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView.builder(
                itemCount: 5,
                controller: _controller,
                onPageChanged: incrementNotifier,
                itemBuilder: (context, index) {
                  return Image.asset(
                    "asset/image/car1.png",
                    fit: BoxFit.cover,
                  );
                },
              ),
              Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
                height: 3,
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  separatorBuilder: (context, index) => SizedBox(width: 4),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: value >= index
                            ? Colors.white
                            : Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                    height: 2,
                    width: (MediaQuery.of(context).size.width * 1 / 5) - 10,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
