import 'package:flutter/material.dart';
import 'package:ems_1/features/home/data/models/offer_model.dart';

class Upoffers extends StatefulWidget {
  final List<OfferModel> offList;
  const Upoffers({super.key, required this.offList});

  @override
  State<Upoffers> createState() => _UpoffersState();
}

class _UpoffersState extends State<Upoffers> {
  int isSelected = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController()
      ..addListener(() {
        int newIndex = _pageController.page?.round() ?? 0;
        if (newIndex != isSelected) {
          setState(() {
            isSelected = newIndex;
          });
        }
      });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: widget.offList.length,
            itemBuilder: (context, i) {
              return Image.asset(
                widget.offList[i].img,
                fit: BoxFit.fitWidth,
              );
            },
          ),
          Positioned(
            bottom: 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(widget.offList.length, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: isSelected == index
                        ? const Color(0xFFD99A9A)
                        : const Color(0xFFD99A9A).withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
