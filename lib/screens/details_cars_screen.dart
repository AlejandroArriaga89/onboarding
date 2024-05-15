import 'package:flutter/material.dart';
import 'package:onboarding/models/cars.dart';
import 'package:onboarding/widgets/widgets.dart';

class DetailsCarsPage extends StatefulWidget {
  const DetailsCarsPage({
    super.key,
    required this.shoes,
  });

  final Cars shoes;

  @override
  State<DetailsCarsPage> createState() => _DetailsCarsPageState();
}

class _DetailsCarsPageState extends State<DetailsCarsPage> {
  int valueIndexColor = 0;
  int valueIndexSize = 0;

  double sizeShoes(int index, Size size) {
    switch (index) {
      case 0:
        return (size.height * 0.09);
      case 1:
        return (size.height * 0.07);
      case 2:
        return (size.height * 0.05);
      case 3:
        return (size.height * 0.04);
      default:
        return (size.height * 0.05);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -size.height * 0.15,
            right: -size.height * 0.20,
            child: TweenAnimationBuilder<double>(
                duration: const Duration(microseconds: 250),
                tween: Tween(begin: 0, end: 1),
                builder: (context, value, __) {
                  return AnimatedContainer(
                    duration: const Duration(microseconds: 400),
                    height: value * (size.height * 0.5),
                    width: value * (size.height * 0.5),
                    decoration: BoxDecoration(
                      color: widget.shoes.listImage[valueIndexColor].color,
                      shape: BoxShape.circle,
                    ),
                  );
                }),
          ),
          Positioned(
            top: kToolbarHeight,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: size.height * 0.15,
            left: 0,
            right: 0,
            child: FittedBox(
              child: Text(
                widget.shoes.name,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey[100]),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.25,
            right: size.height * 0.07,
            left: size.height * 0.07,
            child: Hero(
              tag: widget.shoes.name,
              child: Image(
                image:
                    AssetImage(widget.shoes.listImage[valueIndexColor].image),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.5,
            left: 16,
            right: 16,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShakeTransition(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.shoes.category,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            widget.shoes.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ShakeTransition(
                      left: false,
                      child: Text(
                        widget.shoes.price,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
                ShakeTransition(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(Icons.star,
                              color: widget.shoes.punctuation > index
                                  ? widget
                                      .shoes.listImage[valueIndexColor].color
                                  : Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'WHEEL RHINE SIZE',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: List.generate(
                          3,
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: CustomButton(
                              onTap: () {
                                valueIndexSize = index;
                                setState(() {});
                              },
                              color: index == valueIndexSize
                                  ? widget
                                      .shoes.listImage[valueIndexColor].color
                                  : Colors.white,
                              child: Text(
                                '${index + 14}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: index == valueIndexSize
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: size.height * 0.83,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ShakeTransition(
                  child: ShakeTransition(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'VIEWS',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: List.generate(
                            widget.shoes.listImage.length,
                            (index) => GestureDetector(
                              onTap: () {
                                valueIndexColor = index;
                                setState(() {});
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                    color: widget.shoes.listImage[index].color,
                                    shape: BoxShape.rectangle,
                                    border: index == valueIndexColor
                                        ? Border.all(
                                            color: Colors.white, width: 2)
                                        : null,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      index == 0
                                          ? const Text(
                                              'UP',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500),
                                            )
                                          : index == 1
                                              ? const Text(
                                                  'SIDE',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              : index == 2
                                                  ? const Text(
                                                      'REAR',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )
                                                  : const Text(
                                                      'FRONT',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton(
                  onTap: () {},
                  width: 100,
                  color: widget.shoes.listImage[valueIndexColor].color,
                  child: const Text(
                    'BUY',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
