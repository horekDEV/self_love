import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoadPage extends StatefulWidget {
  const RoadPage({super.key});

  @override
  State<RoadPage> createState() => _RoadPageState();
}

class _RoadPageState extends State<RoadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,
            child: SvgPicture.asset('assets/roadComponents/path.svg', fit: BoxFit.cover, alignment: Alignment.topCenter),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,
            child: SvgPicture.asset('assets/roadComponents/grass.svg', fit: BoxFit.cover, alignment: Alignment.topCenter),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 300, top: 80),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset('assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => Navigator.pushNamed(context, '/task')
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 320),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset('assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => Navigator.pushNamed(context, '/task')
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, top: 590),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset('assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => Navigator.pushNamed(context, '/task')
                )
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 800),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset('assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => Navigator.pushNamed(context, '/task')
                )
              ),
            ]
          )
        ]
      ))
    );
  }
}