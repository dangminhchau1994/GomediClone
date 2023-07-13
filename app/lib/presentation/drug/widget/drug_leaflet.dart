import 'package:flutter/material.dart';

import '../../../application/constants/dimensions.dart';

class DrugLeaflet extends StatelessWidget {
  const DrugLeaflet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Leaflet',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: paddingtTop),
        Container(
          padding: const EdgeInsets.all(paddingAll),
          decoration: BoxDecoration(
            border: Border.all(width: 0.5, color: Colors.black),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: Text(
              'See the leaflet',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        )
      ],
    );
  }
}
