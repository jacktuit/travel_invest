import 'package:flutter/material.dart';
import 'package:travel_invest/common/extensions/number_extensions.dart';
import 'package:travel_invest/widgets/buttons/my_button.dart';
import 'package:travel_invest/widgets/buttons/my_outlined_button.dart';

Future<bool> showYesNoDialog({
  required BuildContext context,
  required String title,
  required String description,
  String yesText = 'Yes',
  String noText = 'No',
}) async {
  final result = await showDialog<bool>(
    context: context,
    // barrierDismissible: false,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        insetPadding: EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              20.vertical,
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              20.vertical,
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              20.vertical,
              Row(
                children: [
                  10.horizontal,
                  Expanded(
                    child: MyOutlinedButton(
                      text: noText,
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                    ),
                  ),
                  10.horizontal,
                  Expanded(
                    child: MyButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      text: yesText,
                    ),
                  ),
                  10.horizontal,
                ],
              ),
              20.vertical,
            ],
          ),
        ),
      );
    },
  );

  return result ?? false;
}
