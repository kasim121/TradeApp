import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../utils/responsive.dart';
import '../../utils/app_text_styles.dart';
import '../../utils/app_colors.dart';
import '../../bloc/market_summary_bloc.dart';

class MarketSummaryHeader extends StatelessWidget {
  const MarketSummaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarketSummaryBloc, MarketSummaryState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.only(
            top: Responsive.vPadding12(context),
            left: Responsive.hPadding8(context),
            right: Responsive.hPadding8(context),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'SENSEX 18TH SEP 80000 CE',
                            style: AppTextStyles.title(
                              context,
                            ).copyWith(fontSize: Responsive.font12(context)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                        SizedBox(width: Responsive.hGap4(context)),
                        Text(
                          'BSE',
                          style: AppTextStyles.subtitle(context).copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                      ],
                    ),
                    SizedBox(height: Responsive.vGap8(context)),
                    Row(
                      children: [
                        Text('1,225.55', style: AppTextStyles.title(context)),
                        SizedBox(width: Responsive.hGap4(context)),
                        Flexible(
                          child: Text(
                            '144.50 (13.37%)',
                            style: AppTextStyles.subtitle(context).copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.green,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Responsive.hGap12(context),
                ),
                height: Responsive.vGap40(context),
                width: Responsive.dividerWidth(context),
                color: AppColors.divider,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'NIFTY BANK',
                            style: AppTextStyles.title(
                              context,
                            ).copyWith(fontSize: Responsive.font12(context)),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Responsive.vGap8(context)),
                    Row(
                      children: [
                        Text(
                          state.niftyBank.toStringAsFixed(2),
                          style: AppTextStyles.title(context),
                        ),
                        SizedBox(width: Responsive.hGap4(context)),
                        Flexible(
                          child: Text(
                            '${state.change >= 0 ? '+' : ''}${state.change.toStringAsFixed(2)} (${state.percentChange >= 0 ? '+' : ''}${state.percentChange.toStringAsFixed(2)}%)',
                            style: AppTextStyles.subtitle(context).copyWith(
                              fontWeight: FontWeight.w500,
                              color: state.change >= 0 ? AppColors.green : AppColors.red,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: Responsive.hGap12(context)),
              Icon(
                Icons.chevron_right,
                color: AppColors.black,
                size: Responsive.iconSize24(context),
              ),
            ],
          ),
        );
      },
    );
  }
}
