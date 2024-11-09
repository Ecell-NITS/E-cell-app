import 'package:flutter/material.dart';
import 'package:ecell_app/configs/configs.dart';
import 'package:ecell_app/utils/widgets/custom_background/custom_background.dart';
import 'package:ecell_app/utils/widgets/custom_button/custom_button.dart';
import 'package:ecell_app/utils/widgets/snack_bar/error_snack_bar.dart';
import 'package:flutter/services.dart';

enum OTPPageType { signup, forgotPassword }

class OTPPage extends StatefulWidget {
  static const String routeName = '/otp';

  final OTPPageType pageType;

  const OTPPage({Key? key, required this.pageType}) : super(key: key);

  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  final List<TextEditingController> _otpControllers = List.generate(6, (_) => TextEditingController());

  String? _otpSignup;
  String? _otpForgotPassword;

  void _saveOtp() {
    String otp = _otpControllers.map((controller) => controller.text).join();
    if (otp.length != 6) {
      showSnackBar(context, 'Please enter a valid 6-digit OTP');
      return;
    }

    // Save OTP to the correct variable based on the page type
    setState(() {
      if (widget.pageType == OTPPageType.signup) {
        _otpSignup = otp;
      } else if (widget.pageType == OTPPageType.forgotPassword) {
        _otpForgotPassword = otp;
      }
    });

    // Display success message
    showSnackBar(context, 'OTP Submitted Successfully');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        bodyWidget: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomSpacers.height160,
                        Text(
                          widget.pageType == OTPPageType.signup
                              ? 'Sign Up OTP'
                              : 'Forgot Password OTP',
                          style: const TextStyle(
                            color: loginTextColor,
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CustomSpacers.height10,
                        const Text(
                          "Please enter the OTP sent to your email",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        CustomSpacers.height20,


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(6, (index) {
                            return Expanded(
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                child: TextField(
                                  controller: _otpControllers[index],
                                  maxLength: 1,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    hintText: '-',
                                    hintStyle: const TextStyle(color: Colors.white),
                                    filled: true,
                                    fillColor: Colors.grey[800],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(color: Colors.white),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: const BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide:
                                      const BorderSide(color: Colors.lightBlue),
                                    ),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                  cursorHeight: 0, // Remove the blinking cursor
                                  cursorWidth: 0,  // Remove the blinking cursor
                                  readOnly: false, // Allow focus but not editing directly
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly, // Only digits
                                  ],
                                  onChanged: (value) {
                                    if (value.length == 1 && index < 5) {
                                      FocusScope.of(context).nextFocus();
                                    } else if (value.isEmpty && index > 0) {
                                      FocusScope.of(context).previousFocus();
                                    }
                                  },
                                ),
                              ),
                            );
                          }),
                        ),
                        CustomSpacers.height20,
                        Center(
                          child: CustomButton(
                            onPressed: _saveOtp,
                            text: 'SUBMIT',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
