import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class ExpensyWelcomePresentationViewSuccessPageHeaderRightActions extends StatefulWidget {
  const ExpensyWelcomePresentationViewSuccessPageHeaderRightActions({super.key});

  @override
  State<ExpensyWelcomePresentationViewSuccessPageHeaderRightActions> createState() => _ExpensyWelcomePresentationViewSuccessPageHeaderRightActionsState();
}

class _ExpensyWelcomePresentationViewSuccessPageHeaderRightActionsState extends State<ExpensyWelcomePresentationViewSuccessPageHeaderRightActions> {

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                //color: Theme.of(context).colorScheme.onPrimary
              ),
              child: context.read<ExpensyCommonAppThemeBloc>().state.isDark()
                  ? InkWell(
                    onTap: () => context.read<ExpensyCommonAppThemeBloc>().add(ExpensyCommonAppThemeSwitched(context)),
                    child: Icon(
                      FontAwesomeIcons.moon,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 20,
                    ),
                  )
                  : InkWell(
                    onTap: () => context.read<ExpensyCommonAppThemeBloc>().add(ExpensyCommonAppThemeSwitched(context)),
                    child: Icon(
                      FontAwesomeIcons.sun,
                      color: Theme.of(context).colorScheme.surface,
                      size: 20,
                    ),
                  )
          )
        ],
      ),
    );
  }
}
