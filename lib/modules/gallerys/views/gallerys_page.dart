import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:common_used_flutter_components/common/values/string_manager.dart';
import 'package:flutter/material.dart';

import '../../../common/values/color_manager.dart';
import '../../../common/values/image_manager.dart';

class GallerysPage extends StatefulWidget {
  const GallerysPage({Key? key}) : super(key: key);

  @override
  State<GallerysPage> createState() => _GallerysPageState();
}

class _GallerysPageState extends State<GallerysPage> {
  List<Widget> pageControlSliders1 = [
    Text('page 0'),
    Text('page 1'),
    Text('page 2'),
    Text('page 3'),
    Text('page 4'),
  ];
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  ///
  final CarouselController _controllerRound = CarouselController();
  List<Widget> pageControlSliders2 = [
    Text('page 0'),
    Text('page 1'),
    Text('page 2'),
    Text('page 3'),
    Text('page 4'),
  ];

  ///
  List<Widget> imageSliders = [Text('page 0'), Text('page 1'), Text('page 2')];
  final CarouselController _controllerSlider = CarouselController();
  List<Widget> pageControlForSliders = [
    Text('page 0'),
    Text('page 1'),
    Text('page 2'),
  ];

  int _currentIndexForSliders = 0;

  ///
  int _currentIndexRound = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    imageSliders[0] = _singleImg(FZMediaNames.row1_1);
    imageSliders[1] = _singleImg(FZMediaNames.row1_2);
    imageSliders[2] = _singleImg(FZMediaNames.row1_3);
    double screenWidth = MediaQuery.of(context).size.width;
    double scale = (screenWidth - 50) / 536;
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.galleries),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageControlSliders1.map((entry) {
                  int _dotIndex = pageControlSliders1.indexOf(entry);
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(_dotIndex),
                    child: Container(
                      width: 20.0,
                      height: 4.0,
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 3),
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        color: _currentIndex == _dotIndex ? FZColors.primaryBlack : FZColors.lightBlue,

                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_currentIndex < 4) {
                      _currentIndex++;
                    } else {
                      _currentIndex = 0;
                    }
                  });
                },
                child: const Text('click to next page'),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageControlSliders2.map((entry) {
                  int _dotIndex = pageControlSliders2.indexOf(entry);
                  return GestureDetector(
                    onTap: () => _controllerRound.animateToPage(_dotIndex),
                    child: Container(
                      width: 6.0,
                      height: 6.0,
                      margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndexRound == _dotIndex ? FZColors.primaryBlack : FZColors.lightBlue,
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (_currentIndexRound < 4) {
                      _currentIndexRound++;
                    } else {
                      _currentIndexRound = 0;
                    }
                  });
                },
                child: const Text('click to next page'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                height: 0,
                color: FZColors.noticeRed,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 15),
              const Text('5 photos'),
              const SizedBox(height: 15),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(FZMediaNames.row1_1, height: 192 * scale, width: 173 * scale),
                        const SizedBox(width: 8),
                        Image.asset(FZMediaNames.row1_2, height: 192 * scale, width: 173 * scale),
                        const SizedBox(width: 8),
                        Image.asset(FZMediaNames.row1_3, height: 192 * scale, width: 173 * scale),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Image.asset(FZMediaNames.row2_1, height: 192 * scale, width: 264 * scale),
                        const SizedBox(width: 8),
                        Image.asset(FZMediaNames.row2_2, height: 192 * scale, width: 264 * scale),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Divider(
                height: 0,
                color: FZColors.noticeRed,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 15),
              const Text('4 photos'),
              const SizedBox(height: 15),
              Container(
                width: screenWidth,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(FZMediaNames.image4Row1_1, height: 132 * scale, width: 186 * scale),
                        const SizedBox(width: 8),
                        Image.asset(FZMediaNames.image4Row1_2, height: 132 * scale, width: 186 * scale),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(FZMediaNames.image4Row2_1, height: 132 * scale, width: 186 * scale),
                        const SizedBox(width: 8),
                        Image.asset(FZMediaNames.image4Row2_2, height: 132 * scale, width: 186 * scale),
                      ],
                    )
                  ],
                ),
              ),

              //////////
              const SizedBox(height: 15),
              const Divider(
                height: 0,
                color: FZColors.noticeRed,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 15),
              const Text('3 photos'),
              const SizedBox(height: 15),
              Container(
                width: screenWidth,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(FZMediaNames.image3Row1_1, height: 132 * scale, width: 380 * scale),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(FZMediaNames.image3Row2_1, height: 132 * scale, width: 186 * scale),
                        const SizedBox(width: 8),
                        Image.asset(FZMediaNames.image3Row2_1, height: 132 * scale, width: 186 * scale),
                      ],
                    )
                  ],
                ),
              ),
              //////////
              const SizedBox(height: 15),
              const Divider(
                height: 0,
                color: FZColors.noticeRed,
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(height: 15),
              const Text('Slider'),
              const SizedBox(height: 15),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width, // width

                    alignment: Alignment.topCenter,
                    child: CarouselSlider(
                      items: imageSliders,
                      options: CarouselOptions(
                          enableInfiniteScroll: true,
                          viewportFraction: 0.8,
                          enlargeCenterPage: false,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          pageSnapping: true,
                          height: MediaQuery.of(context).size.height - 780 * scale,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndexForSliders = index;
                            });
                          }),
                      carouselController: _controllerSlider,
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    child: Container(
                      width: screenWidth,
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: pageControlForSliders.map((entry) {
                          int _dotIndex = pageControlForSliders.indexOf(entry);
                          return GestureDetector(
                            onTap: () => _controllerSlider.animateToPage(_dotIndex),
                            child: Container(
                              width: 20.0,
                              height: 4.0,
                              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 3),
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                color: _currentIndexForSliders == _dotIndex ? FZColors.primaryBlack : FZColors.lightBlue,

                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _singleImg(String imageName) {
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.topLeft,
    // overflow: Overflow.visible,
    children: [
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4),
          child: Container(
            child: Image.asset(
              imageName, //HBBImages.discoverPhone,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    ],
  );
}
