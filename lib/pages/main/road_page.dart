import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:self_love/pages/main/subscription_dialog.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
          onPressed: () {
            for (final i in taskStates) {
              for (final j in i) {
                if (j == false) {Navigator.of(context).pop(); return;}
              }
            }
            complete = true;
            Navigator.of(context).pop();
          }
        ),
      ),
      extendBodyBehindAppBar: true,
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
                    child: Image.asset(taskStates[0][0] && taskStates[0][1] && taskStates[0][2] ? 'assets/roadComponents/treeColored.png' : 'assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => openTask(0)
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.02, top: height * 0.32),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset(taskStates[1][0] && taskStates[1][1] && taskStates[1][2] ? 'assets/roadComponents/treeColored.png' : 'assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => openTask(1)
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.15, top: height * 0.62),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset(taskStates[3][0] && taskStates[3][1] && taskStates[3][2] ? 'assets/roadComponents/treeColored.png' : 'assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => openTask(3)
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.71, top: height * 0.39),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset(taskStates[2][0] && taskStates[2][1] && taskStates[2][2] ? 'assets/roadComponents/treeColored.png' : 'assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => openTask(2)
                )
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.01, top: height * 0.85),
                child: GestureDetector(
                  child: SizedBox(
                    width: 120,
                    child: Image.asset(taskStates[4][0] && taskStates[4][1] && taskStates[4][2] ? 'assets/roadComponents/treeColored.png' : 'assets/roadComponents/tree.png', fit: BoxFit.cover)
                  ),
                  onTap: () => openTask(4)
                )
              ),
            ]
          )
        ]
      ))
    );
  }

  void openTask(int id) {
    if (subscribed || (subscribed == false && id == 0)) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => TaskPage(blockNum: id, setRoadState: () => setState(() {}),)));
    }
    else {
      showDialog(context: context, builder: (context) => const SubscriptionDialog());
    }
  }
}

bool complete = false;
bool subscribed = false;