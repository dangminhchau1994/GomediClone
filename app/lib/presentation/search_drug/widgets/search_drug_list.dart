import 'package:app/application/constants/dimensions.dart';
import 'package:flutter/material.dart';

class SearchDrugList extends StatelessWidget {
  const SearchDrugList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (context, index) => const Divider(
        height: 0.5,
        color: Colors.grey,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(
          top: paddingRight,
          bottom: paddingRight,
        ),
        child: Text(
          'Drug name',
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Colors.black,
                fontSize: 14,
              ),
        ),
      ),
    );
  }
}
