import 'package:ecell_app/configs/configs.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  final Color? newButtonColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.newButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ScreenUtil.defaultSize.width * 0.4,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: newButtonColor == null
                ? MaterialStatePropertyAll(buttonColor)
                : MaterialStatePropertyAll(newButtonColor),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              Icon(
                Icons.arrow_forward_sharp,
                size: 20,
                color: Colors.grey,
              )
            ],
          )),
    );
  }
}
