import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class VerifyNumbertxtField extends StatelessWidget {
  const VerifyNumbertxtField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CountryCodePicker(
                initialSelection: 'us',
                alignLeft: true,
              ),
            ),
          ),
        ),
        Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextField(
                keyboardType: TextInputType.number,
              ),
            ))
      ],
    );
  }
}
