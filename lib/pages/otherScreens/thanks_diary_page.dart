import 'package:flutter/material.dart';

class ThanksDiaryPage extends StatefulWidget {
  const ThanksDiaryPage({super.key});

  @override
  State<ThanksDiaryPage> createState() => _ThanksDiaryPageState();
}

class _ThanksDiaryPageState extends State<ThanksDiaryPage> {
  List<String> gratitudeEntries = [];

  void _addGratitudeEntry() {
    String gratitude = '';

    Dialog addGratitudeDialog = Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Container(
        width: 310,
        height: 200,
        decoration: const BoxDecoration(
          color: Color(0xFFEEB8CC),
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 3.0),
                    ),
                    label: Text(
                      "За что вы благодарите?",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    gratitude = value;
                  },
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  if (gratitude.isNotEmpty) {
                    setState(() {
                      gratitudeEntries.add(gratitude);
                    });
                    Navigator.of(context).pop();
                  }
                },
                child: Container(
                  width: 170,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFDCEDF),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Center(
                    child: Text(
                      "Поблагодарить!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => addGratitudeDialog,
    );
  }

  void _removeGratitudeEntry(int index) {
    setState(() {
      gratitudeEntries.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Дневник благодарности",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFFFDCEDF),
        leading: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFFFDCEDF)),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Записывайте благодарности каждый день и замечайте больше позитива в жизни",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 60),
            InkWell(
              onTap: _addGratitudeEntry,
              child: Container(
                width: 190,
                height: 55,
                decoration: const BoxDecoration(
                  color: Color(0xFFF2BED1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Center(
                  child: Text(
                    "Добавить благодарность",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: gratitudeEntries.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      gratitudeEntries[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.white),
                      onPressed: () => _removeGratitudeEntry(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
