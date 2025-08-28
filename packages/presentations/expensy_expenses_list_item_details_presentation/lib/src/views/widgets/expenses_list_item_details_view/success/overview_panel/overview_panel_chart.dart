import "package:flutter/material.dart";
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../blocs/blocs.dart';

class ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelChart extends StatelessWidget {
  const ExpensyExpensesListItemDetailsPresentationViewSuccessPageOverviewPanelChart({super.key});

  @override
  Widget build(BuildContext context) {
    final remoteBloc = context.read<ExpensyExpensesListItemDetailsPresentationRemoteBloc>();

    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: PieChart(
          PieChartData(
            sectionsSpace: 2,
            centerSpaceRadius: 32,
            startDegreeOffset: -90,
            sections: remoteBloc.state.categoriesByTotal?.map((elm) => PieChartSectionData(
                value: elm.percentage,
                color: Colors.green,
                radius: 50,
                title: '${elm.name}\n${elm.percentage}%',
                titleStyle: const TextStyle(color: Colors.black, fontSize: 10,fontWeight: FontWeight.w900),
                titlePositionPercentageOffset: 1.5
            )).toList()
          ),
        ),
      ),
    );
  }

}
