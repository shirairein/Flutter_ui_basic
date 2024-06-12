import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/share_methods.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    addPin(String number) {
      if (controller.text.length < 6) {
        controller.text = controller.text + number;
      }
      print(controller.text);
      if (controller.text.length == 6) {
        if (controller.text == '382660') {
          Navigator.pop(context, true);
        } else {
          showCustomSnackbar(context, 'PIN yang anda masukkan salah');
        }
      }
    }

    deletePin() {
      if (controller.text.isNotEmpty) {
        controller.text =
            controller.text.substring(0, controller.text.length - 1);
      }
      print('del');
    }

    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 58,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha PIN',
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 200,
                child: TextFormField(
                  // keyboardType: TextInputType.number,
                  controller: controller,
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: greyColor,
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                    letterSpacing: 16,
                  ),
                  decoration: InputDecoration(
                    disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                alignment: WrapAlignment.end,
                children: [
                  CustomInputButton(
                    title: '1',
                    onPressed: () {
                      addPin('1');
                    },
                  ),
                  CustomInputButton(
                    title: '2',
                    onPressed: () {
                      addPin('2');
                    },
                  ),
                  CustomInputButton(
                    title: '3',
                    onPressed: () {
                      addPin('3');
                    },
                  ),
                  CustomInputButton(
                    title: '4',
                    onPressed: () {
                      addPin('4');
                    },
                  ),
                  CustomInputButton(
                    title: '5',
                    onPressed: () {
                      addPin('5');
                    },
                  ),
                  CustomInputButton(
                    title: '6',
                    onPressed: () {
                      addPin('6');
                    },
                  ),
                  CustomInputButton(
                    title: '7',
                    onPressed: () {
                      addPin('7');
                    },
                  ),
                  CustomInputButton(
                    title: '8',
                    onPressed: () {
                      addPin('8');
                    },
                  ),
                  CustomInputButton(
                    title: '9',
                    onPressed: () {
                      addPin('9');
                    },
                  ),
                  CustomInputButton(
                    title: '0',
                    onPressed: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: numberBackgroundColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
