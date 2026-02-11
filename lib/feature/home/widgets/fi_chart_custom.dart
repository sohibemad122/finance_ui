import 'package:finance_ui/core/theme/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FiChartCustom extends StatelessWidget {
  const FiChartCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 236.h,
      width: 327.w,
      child: BarChart(
        BarChartData(
          barTouchData: barTouchData,
          titlesData: titlesData,
          borderData: borderData,
          barGroups: barGroups,
          gridData: FlGridData(
            show: true,

            drawHorizontalLine: true,
            checkToShowHorizontalLine: (value) => value != 0,

            horizontalInterval: 1,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.grey.shade300,
                strokeWidth: 1,
                dashArray: [6, 6],
              );
            },

            drawVerticalLine: false,
          ),
          alignment: BarChartAlignment.spaceBetween,
          minY: 0,
          maxY: 8,
        ),
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      getTooltipColor: (group) => Colors.black,
      tooltipPadding: EdgeInsets.zero,
      tooltipMargin: 8,
      getTooltipItem:
          (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            );
          },
    ),
  );

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text = switch (value.toInt()) {
      0 => 'Jan',
      1 => 'Feb',
      2 => 'Mar',
      3 => 'Apr',
      4 => 'May',
      _ => '',
    };
    return SideTitleWidget(
      meta: meta,
      space: 3,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 20,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,

        interval: 2,

        reservedSize: 30,
        getTitlesWidget: (value, meta) => Text('${value.toInt()}k'),
      ),
    ),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  FlBorderData get borderData => FlBorderData(
    show: true,
    border: Border.all(color: Colors.grey, width: 1),
  );

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
      x: 0,
      barsSpace: 6,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: 8,
          color: AppColors.mainAppColor,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
        BarChartRodData(
          fromY: 0,
          toY: 3,
          color: AppColors.st,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
      ],
    ),
    BarChartGroupData(
      x: 1,
      barsSpace: 6,

      barRods: [
        BarChartRodData(
          fromY: 0,

          toY: 6,
          color: AppColors.mainAppColor,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
        BarChartRodData(
          fromY: 0,

          toY: 4,
          color: AppColors.st,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
      ],
    ),
    BarChartGroupData(
      x: 2,
      barsSpace: 6,

      barRods: [
        BarChartRodData(
          toY: 4,
          fromY: 0,

          color: AppColors.mainAppColor,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
        BarChartRodData(
          toY: 3,
          fromY: 0,

          color: AppColors.st,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
      ],
    ),
    BarChartGroupData(
      x: 3,
      barsSpace: 6,

      barRods: [
        BarChartRodData(
          toY: 2,
          fromY: 0,

          color: AppColors.mainAppColor,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
        BarChartRodData(
          toY: 1,

          fromY: 0,
          color: AppColors.st,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
      ],
    ),
    BarChartGroupData(
      x: 4,
      barsSpace: 6,

      barRods: [
        BarChartRodData(
          toY: 5,
          fromY: 0,

          color: AppColors.mainAppColor,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
        BarChartRodData(
          toY: 4,
          fromY: 0,

          color: AppColors.st,
          width: 12.w,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(8.r),
            topLeft: Radius.circular(8.r),
          ),
        ),
      ],
    ),
  ];
}
