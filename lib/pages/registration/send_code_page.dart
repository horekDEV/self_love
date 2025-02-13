import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SendCodePage extends StatefulWidget {
  const SendCodePage({super.key});

  @override
  State<SendCodePage> createState() => _SendCodePageState();
}

class _SendCodePageState extends State<SendCodePage> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFF3C8D8),
              Color(0xFFF8E8EE),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 72),
                const Text(
                  "Mindfull Me",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Text(
                    "Вам отправлен код на почту!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: _codeController,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
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
                          "code",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        contentPadding: EdgeInsets.only(bottom: -6),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Введите код';
                        }
                        if (value.length < 6) {
                          return 'Код должен содержать минимум 6 цифр';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: InkWell(
                    onTap: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        Navigator.pushNamed(context, '/main');
                      }
                    },
                    child: Container(
                      height: 55,
                      width: 220,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2BED1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          "Подтвердить",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
