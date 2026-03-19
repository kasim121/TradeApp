import 'package:demo/data/stock_model.dart';
import 'package:demo/utils/app_text_styles.dart';
import 'package:demo/utils/responsive.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class StockTile extends StatelessWidget {
  final StockModel stock;

  const StockTile({super.key, required this.stock});

  @override
  Widget build(BuildContext context) {
    final isUp = stock.change >= 0;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.hPadding12(context),
            vertical: Responsive.vPadding12(context),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stock.symbol,
                      style: AppTextStyles.title(
                        context,
                      ).copyWith(fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: Responsive.vGap4(context)),
                    Row(
                      children: [
                        Text(
                          stock.exchange,
                          style: AppTextStyles.subtitle(
                            context,
                          ).copyWith(fontWeight: FontWeight.bold),
                        ),
                        if (stock.instrumentType != null) ...[
                          SizedBox(width: Responsive.hGap4(context)),
                          Text(
                            '|',
                            style: AppTextStyles.subtitle(
                              context,
                            ).copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: Responsive.hGap4(context)),
                          Text(
                            stock.instrumentType!,
                            style: AppTextStyles.subtitle(
                              context,
                            ).copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                        if (stock.expiry != null) ...[
                          SizedBox(width: Responsive.hGap4(context)),
                          Text(
                            '|',
                            style: AppTextStyles.subtitle(
                              context,
                            ).copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: Responsive.hGap4(context)),
                          Text(
                            stock.expiry!,
                            style: AppTextStyles.subtitle(
                              context,
                            ).copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    stock.price.toStringAsFixed(2),
                    style: AppTextStyles.title(context).copyWith(
                      color: isUp
                          ? AppColors.green
                          : AppColors.red,
                    ),
                  ),
                  SizedBox(height: Responsive.vGap4(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${stock.change > 0 ? '+' : ''}${stock.change.toStringAsFixed(2)}',
                        style: AppTextStyles.subtitle(context).copyWith(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '(${stock.changePercent.toStringAsFixed(2)}%)',
                        style: AppTextStyles.subtitle(context).copyWith(
                          color: AppColors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
