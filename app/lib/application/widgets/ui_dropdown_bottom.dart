import 'package:app/application/theme/ui_color.dart';
import 'package:app/application/widgets/ui_primary_button.dart';
import 'package:app/infrastructure/models/bottom_item/bottom_item.dart';
import 'package:flutter/material.dart';

import '../constants/dimensions.dart';

class UIDropdownBottom extends StatefulWidget {
  const UIDropdownBottom({
    super.key,
    this.title,
    this.height,
    this.bottomItems,
  });

  final String? title;
  final double? height;
  final List<BottomItem>? bottomItems;

  @override
  State<UIDropdownBottom> createState() => _UIDropdownBottomState();
}

class _UIDropdownBottomState extends State<UIDropdownBottom> {
  late BottomItem item;

  @override
  void initState() {
    super.initState();
    item = widget.bottomItems?[0] ?? BottomItem();
  }

  Future<void> _showBottomSheet() {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white.withOpacity(1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      builder: (context) {
        return SizedBox(
          height: widget.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: widget.bottomItems?.length ?? 0,
                separatorBuilder: (context, index) => Container(
                  height: 0.5,
                  color: Colors.grey,
                ),
                itemBuilder: (context, index) => ListTile(
                  onTap: () {
                    setState(() {
                      item = widget.bottomItems![index];
                    });
                  },
                  trailing: Visibility(
                    visible: item == widget.bottomItems![index],
                    child: Icon(
                      Icons.check,
                      color: UIColors.blue,
                    ),
                  ),
                  title: Text(
                    widget.bottomItems![index].title ?? '',
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Positioned(
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
                  child: SafeArea(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UIButton(
                          width: 180,
                          isPrimaryButton: false,
                          title: 'Cancel',
                          onPressed: () {},
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        UIButton(
                          width: 180,
                          title: 'OK',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title ?? '',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(
          height: paddingtTop,
        ),
        GestureDetector(
          onTap: () async => _showBottomSheet(),
          child: Container(
            padding: const EdgeInsets.all(paddingAll),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title ?? '',
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                  size: 20,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}