import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:self_love/main.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final CarouselController _controller = CarouselController();
  final CarouselSliderController controller = CarouselSliderController();
  int _currentIndex = 0;
  final List<String> motivationalPhrases = [
    "Научись любить себя, прежде чем кого-то полюбить",
    "Ты прекрасен таким, какой ты есть",
    "Каждый день — это новый шанс стать лучше"
  ];

  final List<double> phraseSizes = [11, 14, 13];

  final List<String> carouselImages = [
    "assets/images/image1.png",
    "assets/images/image2.png",
    "assets/images/image3.png",
  ];

  final List<String> carouselText = [
    "Дневник благодарности",
    "Целеполагание",
    "Дневник мыслей"
  ];

  String get randomPhrase => (motivationalPhrases..shuffle()).first; 

  void nextPage() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void previousPage() {
    _controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFDCEDF),
              Color(0xFFF8E8EE),
              Color(0xFFF2BED1),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 28),
                      child: Text(
                        "Приветствуем,\nName!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.pushNamed(context, '/profile'),
                      child: const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.supervised_user_circle,
                          color: Colors.white,
                          size: 35.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 11),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/mainIcons/ellipse.svg",
                    ),
                    Text(
                      motivationalPhrases[phraseNum],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: phraseSizes[phraseNum],
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFDA1C3), 
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Твой уровень любви к себе поднят на:",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: 335,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: 335 * 0.67,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF2BED1),
                        ),
                      ),
                      const Center(
                        child: Text(
                          "67%",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/test'),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 58),
                      child: Container(
                        width: 180,
                        height: 105,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFDCEDF),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Пройти тестирование",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Image.asset(
                              "assets/mainIcons/brain.png",
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/road'),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 58),
                      child: Container(
                        width: 180,
                        height: 105,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFDCEDF),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Начать проходить упражнения!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Image.asset(
                              "assets/mainIcons/ellipse.png",
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // TODO (Сделать переход на странички)
              const Padding(
                padding: EdgeInsets.only(top: 52),
                child: Text(
                  "Куда вы бы хотели перейти?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: carouselImages.length,
                      options: CarouselOptions(
                        height: 310,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        autoPlay: false,
                        aspectRatio: 12/16,
                        viewportFraction: 0.45,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      carouselController: controller,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          width: 2100,
                          height: 310,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF2BED1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 150,
                                child: Image.asset(
                                  carouselImages[index],
                                  fit: BoxFit.cover
                                ),
                              ),
                              Text(
                                carouselText[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                height: 35,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 240, 161, 190),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Перейти",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension on CarouselController {
  void nextPage({required Duration duration, required Cubic curve}) {}

  void previousPage({required Duration duration, required Cubic curve}) {}
}
