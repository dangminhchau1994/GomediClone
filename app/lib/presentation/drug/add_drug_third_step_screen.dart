import 'package:another_flushbar/flushbar_helper.dart';
import 'package:app/application/blocs/drug/drug_bloc.dart';
import 'package:app/application/blocs/drug/drug_event.dart';
import 'package:app/application/blocs/drug/drug_state.dart';
import 'package:app/application/constants/dimensions.dart';
import 'package:app/application/widgets/ui_app_bar.dart';
import 'package:app/presentation/drug/widget/drug_doctor_recommendation.dart';
import 'package:app/presentation/drug/widget/drug_interactions_alerts.dart';
import 'package:app/presentation/drug/widget/drug_leaflet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../../application/widgets/ui_primary_button.dart';

class AddDrugThirdStepScreen extends StatelessWidget {
  const AddDrugThirdStepScreen({
    super.key,
    this.bloc,
  });

  final DrugBloc? bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc!,
      child: const LoaderOverlay(child: Body()),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIAppbar(
        title: 'Add medicine',
        showArrow: true,
        showBadge: true,
        onPop: () {},
      ),
      body: BlocListener<DrugBloc, DrugState>(
        listener: (context, state) {
          state.status?.maybeMap(
            loading: (value) {
              context.loaderOverlay.show();
            },
            success: (value) {
              context.loaderOverlay.hide();
              return FlushbarHelper.createSuccess(
                message: 'Add Drug Profile Success',
              ).show(context);
            },
            failure: (value) {
              context.loaderOverlay.hide();
              return FlushbarHelper.createError(
                message: state.failure?.errMessage ?? '',
              ).show(context);
            },
            orElse: () => null,
          );
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: paddingBottom,
                vertical: paddingBottom,
              ),
              child: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DrugDoctorRecommendation(),
                    SizedBox(height: mediumPaddingTOp),
                    DrugInteractionsAndAlert(),
                    SizedBox(height: mediumPaddingTOp),
                    DrugLeaflet(),
                  ],
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
                child: UIButton(
                  isPrimaryButton: true,
                  isScanButton: false,
                  title: 'Save',
                  onPressed: () => context
                      .read<DrugBloc>()
                      .add(const DrugEvent.addDrugToProfile()),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
