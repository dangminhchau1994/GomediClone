import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/constants/dimensions.dart';
import '../../../application/theme/ui_color.dart';
import '../../../application/widgets/ui_primary_button.dart';
import '../../../infrastructure/models/bottom_item/bottom_item.dart';

class DrugPriorityField extends StatefulWidget {
  const DrugPriorityField({
    super.key,
    this.title,
    this.onUpdateItem,
  });

  final String? title;
  final Function(BottomItem item)? onUpdateItem;

  @override
  State<DrugPriorityField> createState() => _DrugPriorityFieldState();
}

class _DrugPriorityFieldState extends State<DrugPriorityField> {
  late BottomItem item;

  Future<void> _showBottomSheet(
    List<BottomItem> bottomItems,
    BottomItem item,
  ) {
    final dialog = showModalBottomSheet(
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
          height: 300,
          child: Stack(
            fit: StackFit.expand,
            children: [
              UIDrugPrioritiesList(
                bottomItems: bottomItems,
                item: item,
                onUpdateItem: (updatedItem) {
                  widget.onUpdateItem!(updatedItem);
                  item = updatedItem;
                  setState(() {});
                },
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
                        Expanded(
                          child: UIButton(
                            isPrimaryButton: false,
                            title: 'Cancel',
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: UIButton(
                            title: 'OK',
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
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
    return dialog;
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
        BlocBuilder<DrugBloc, DrugState>(
          builder: (context, state) {
            if (state.status is Loading) {
              return Container();
            } else if (state.status is Success) {
              final drugPriorites = state.drugPriorities
                      ?.map(
                        (e) => BottomItem(
                          title: e.name,
                          description: e.description,
                          id: e.id,
                        ),
                      )
                      .toList() ??
                  [];

              item = drugPriorites[0];

              return GestureDetector(
                onTap: () => _showBottomSheet(drugPriorites, item),
                child: Container(
                  padding: const EdgeInsets.all(kMargin),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              '(${item.description ?? ''})',
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
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
              );
            } else {
              return Container();
            }
          },
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class UIDrugPrioritiesList extends StatefulWidget {
  UIDrugPrioritiesList({
    super.key,
    this.bottomItems,
    this.item,
    this.onUpdateItem,
  });

  BottomItem? item;
  List<BottomItem>? bottomItems;
  Function(BottomItem item)? onUpdateItem;

  @override
  State<UIDrugPrioritiesList> createState() => _UIDrugPrioritiesListState();
}

class _UIDrugPrioritiesListState extends State<UIDrugPrioritiesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: widget.bottomItems?.length ?? 0,
      separatorBuilder: (context, index) => Container(
        height: 0.5,
        color: Colors.grey,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {
            widget.item = widget.bottomItems![index];
            widget.onUpdateItem!(widget.item!);
            setState(() {});
          },
          trailing: Visibility(
            visible: widget.item == widget.bottomItems![index],
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
          subtitle: Text(
            widget.bottomItems![index].description ?? '',
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
