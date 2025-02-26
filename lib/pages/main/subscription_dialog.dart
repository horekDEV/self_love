import 'package:flutter/material.dart';
import 'package:self_love/pages/main/road_page.dart';

class SubscriptionDialog extends StatefulWidget {
  const SubscriptionDialog({super.key});

  @override
  State<SubscriptionDialog> createState() => _SubscriptionDialogState();
}

class _SubscriptionDialogState extends State<SubscriptionDialog> {
  int selectedPlan = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () {Navigator.of(context).pop();}
        ),
      ),
      body: Center(child: Container(
        width: 300, height: 400,
        decoration: BoxDecoration(
          color: const Color(0xFFFDCEDF),
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Text(
              'Выберите подписку',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'чтобы разблокировать все задания',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () => setState(() {selectedPlan = 0;}),
              child: Container(
                width: 280, height: 50,
                decoration: BoxDecoration(
                  color: selectedPlan == 0 ? const Color.fromARGB(255, 254, 137, 180) : const Color.fromARGB(255, 251, 182, 208),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1 месяц',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '\$2.99',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]
                ))
              )
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => setState(() {selectedPlan = 1;}),
              child: Container(
                width: 280, height: 50,
                decoration: BoxDecoration(
                  color: selectedPlan == 1 ? const Color.fromARGB(255, 254, 137, 180) : const Color.fromARGB(255, 251, 182, 208),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '3 месяца',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '\$8.99',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]
                ))
              )
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => setState(() {selectedPlan = 2;}),
              child: Container(
                width: 280, height: 50,
                decoration: BoxDecoration(
                  color: selectedPlan == 2 ? const Color.fromARGB(255, 254, 137, 180) : const Color.fromARGB(255, 251, 182, 208),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '6 месяцев',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '\$14.99',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]
                ))
              )
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => setState(() {selectedPlan = 3;}),
              child: Container(
                width: 280, height: 50,
                decoration: BoxDecoration(
                  color: selectedPlan == 3 ? const Color.fromARGB(255, 254, 137, 180) : const Color.fromARGB(255, 251, 182, 208),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '12 месяцев',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      '\$29.99',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ]
                ))
              )
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {subscribed = true; Navigator.of(context).pop();},
              child: Container(
                width: 280, height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 208, 65, 117),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Center(child: Text(
                  'Подписаться',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),)
              )
            )
          ]
        )
      ))
    );
  }
}