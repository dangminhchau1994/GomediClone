import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_text_input.dart';
import 'package:app/presentation/search_drug/widgets/search_drug_bottom.dart';
import 'package:app/presentation/search_drug/widgets/search_drug_list.dart';
import 'package:flutter/material.dart';

class SearchDrugScreen extends StatefulWidget {
  const SearchDrugScreen({super.key});

  @override
  State<SearchDrugScreen> createState() => _SearchDrugScreenState();
}

class _SearchDrugScreenState extends State<SearchDrugScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: kMargin,
              vertical: kMargin,
            ),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: UITextInput(
                    title: 'Name of the drug',
                    textHint: 'Enter the drug name',
                    onChanged: (value) {},
                    validator: (value) {
                      return null;
                    },
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: paddingRight),
                ),
                SliverToBoxAdapter(
                  child: Text(
                    'Results',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: paddingRight),
                ),
                const SearchDrugList(),
              ],
            ),
          ),
          const SearchDrugBottom()
        ],
      ),
    );
  }
}
