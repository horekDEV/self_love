import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:self_love/pages/task_activity/task_page.dart';

class RoadPage extends StatefulWidget {
  const RoadPage({super.key});

  @override
  State<RoadPage> createState() => _RoadPageState();
}

class _RoadPageState extends State<RoadPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                padding: EdgeInsets.only(left: width * 0.67, top: height * 0.08),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset('assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskPage(blockNum: 0)))
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.02, top: height * 0.32),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset('assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskPage(blockNum: 1)))
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.15, top: height * 0.62),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset('assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskPage(blockNum: 3)))
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.71, top: height * 0.39),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset('assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskPage(blockNum: 2)))
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.01, top: height * 0.85),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset('assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskPage(blockNum: 4)))
                )
              ),
            ]
          )
        ]
      ))
    );
  }
}