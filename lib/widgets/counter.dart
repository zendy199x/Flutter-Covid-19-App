import 'package:covid_19/constant.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final String number;
  final Color color;
  final String title;

  const Counter({
    Key? key,
    this.number = '0',
    this.color = kInfectedColor,
    this.title = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.26),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          number.isNotEmpty ? number.substring(1).replaceAll(',', '') : '0',
          style: TextStyle(
            fontSize: 40,
            color: color,
          ),
        ),
        Text(
          title,
          style: kSubTextStyle,
        )
      ],
    );
  }
}
