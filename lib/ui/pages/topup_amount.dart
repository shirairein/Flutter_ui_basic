import 'package:flutter/material.dart';
import 'package:flutter_pertama/shared/share_methods.dart';
import 'package:flutter_pertama/shared/theme.dart';
import 'package:flutter_pertama/ui/widget/button.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class TopUpAmount extends StatefulWidget {
  const TopUpAmount({super.key});

  @override
  State<TopUpAmount> createState() => _TopUpAmountState();
}

class _TopUpAmountState extends State<TopUpAmount> {
  final TextEditingController amountController = TextEditingController(
    text: '0',
  );
  final String urlMitrans = 'https://demo.midtrans.com/';
  @override
  void initState() {
    super.initState();
    amountController.addListener(() {
      final text = amountController.text;
      try {
        final formatValue = NumberFormat.currency(
          locale: 'id',
          symbol: '',
          decimalDigits: 0,
        ).format(
          int.parse(
            text.replaceAll('.', ''),
          ),
        );

        amountController.value = amountController.value.copyWith(
          text: formatValue,
        );
      } catch (e) {
        showCustomSnackbar(context, e.toString());
      }
    });
  }

  addAmount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }
    amountController.text = amountController.text + number;
  }

  deleteAmount() {
    if (amountController.text.length > 1) {
      amountController.text =
          amountController.text.substring(0, amountController.text.length - 1);
    } else if (amountController.text.length == 1) {
      amountController.text = '0';
    } else if (amountController.text == '' || amountController.text == '0') {
      amountController.text = '0';
    }
  }

  @override
  Widget build(BuildContext context) {
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
                'Top Up Amount',
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
                  controller: amountController,
                  cursorColor: greyColor,
                  enabled: false,
                  style: whiteTextStyle.copyWith(
                    fontSize: 36,
                    fontWeight: medium,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    prefixIcon: Text(
                      'Rp ',
                      style: whiteTextStyle.copyWith(
                        fontSize: 36,
                        fontWeight: medium,
                      ),
                    ),
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
                      addAmount('1');
                    },
                  ),
                  CustomInputButton(
                    title: '2',
                    onPressed: () {
                      addAmount('2');
                    },
                  ),
                  CustomInputButton(
                    title: '3',
                    onPressed: () {
                      addAmount('3');
                    },
                  ),
                  CustomInputButton(
                    title: '4',
                    onPressed: () {
                      addAmount('4');
                    },
                  ),
                  CustomInputButton(
                    title: '5',
                    onPressed: () {
                      addAmount('5');
                    },
                  ),
                  CustomInputButton(
                    title: '6',
                    onPressed: () {
                      addAmount('6');
                    },
                  ),
                  CustomInputButton(
                    title: '7',
                    onPressed: () {
                      addAmount('7');
                    },
                  ),
                  CustomInputButton(
                    title: '8',
                    onPressed: () {
                      addAmount('8');
                    },
                  ),
                  CustomInputButton(
                    title: '9',
                    onPressed: () {
                      addAmount('9');
                    },
                  ),
                  CustomInputButton(
                    title: '0',
                    onPressed: () {
                      addAmount('0');
                    },
                  ),
                  GestureDetector(
                    onTap: deleteAmount,
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
              const SizedBox(
                height: 50,
              ),
              CustomFilledButton(
                title: 'Checkout Now',
                onPressed: () async {
                  if (await Navigator.pushNamed(context, '/pin') == true)
                    // ignore: curly_braces_in_flow_control_structures
                    _launchUrl(context);
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, '/topup-succes');
                },
              ),
              const SizedBox(
                height: 25,
              ),
              CostumTextButton(
                title: 'Terms & Conditions',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl(BuildContext context) async {
    try {
      Uri _uri = Uri.parse(urlMitrans.toString());
      if (!await launchUrl(_uri)) {
        throw Exception('Could not launch $urlMitrans');
      }
    } catch (e) {
      showCustomSnackbar(context, "url $urlMitrans invalid");
    }
  }
}
