import 'package:flutter/material.dart';
import '../../utils/responsive.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_text_styles.dart';
import '../../data/stock_model.dart';

class ReorderableStockList extends StatelessWidget {
  final List<StockModel> stocks;
  final void Function(int oldIndex, int newIndex) onReorder;
  final void Function(int index) onDelete;
  const ReorderableStockList({
    super.key,
    required this.stocks,
    required this.onReorder,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      padding: EdgeInsets.only(bottom: Responsive.vGap40(context)),
      itemCount: stocks.length,
      buildDefaultDragHandles: false,
      proxyDecorator: (child, index, animation) {
        return Material(color: AppColors.white, elevation: 4, child: child);
      },
      onReorder: onReorder,
      itemBuilder: (context, index) {
        return Container(
          key: ValueKey('${stocks[index].symbol}_$index'),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: AppColors.divider, width: 1),
            ),
          ),
          child: ReorderableDragStartListener(
            index: index,
            child: ListTile(
              leading: Icon(Icons.drag_handle, color: AppColors.black),
              title: Text(
                stocks[index].symbol,
                style: AppTextStyles.title(context).copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                  fontSize: Responsive.font14(context),
                ),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: AppColors.black),
                onPressed: () => onDelete(index),
              ),
            ),
          ),
        );
      },
    );
  }
}
