import 'package:flutter/material.dart';

import '../../../application/constants/dimensions.dart';
import '../../../application/widgets/ui_primary_button.dart';

class SearchDrugBottom extends StatelessWidget {
  const SearchDrugBottom({
    super.key,
    this.onScan,
    this.onAddMedicine,
  });

  final Function()? onScan;
  final Function()? onAddMedicine;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        margin: const EdgeInsets.only(top: paddingtTop),
        padding: const EdgeInsets.all(paddingAll),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UIButton(
              isPrimaryButton: false,
              title: 'Scan',
              isScanButton: true,
              onPressed: onScan,
            ),
            const SizedBox(
              height: paddingRight,
            ),
            UIButton(
              isPrimaryButton: true,
              title: 'Add your own medicine',
              onPressed: onAddMedicine,
            ),
            const SizedBox(
              height: paddingRight,
            ),
          ],
        ),
      ),
    );
  }
}
