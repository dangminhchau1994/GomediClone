import 'package:app/application/constants/dimensions.dart';
import 'package:flutter/material.dart';

class DrugWeekdaysInput extends StatefulWidget {
  const DrugWeekdaysInput({super.key});

  @override
  State<DrugWeekdaysInput> createState() => _DrugWeekdaysInputState();
}

class _DrugWeekdaysInputState extends State<DrugWeekdaysInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Days',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: paddingtTop,
        ),
        Container(
          padding: const EdgeInsets.all(paddingAll),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  'Everyday',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                ),
              ),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.black,
                size: 20,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
