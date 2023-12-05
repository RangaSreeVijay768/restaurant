import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_analytics_total_sales_screen_state.dart';

part 'restaurant_outlets_analytics_total_sales_screen_cubit.freezed.dart';

class RestaurantOutletsAnalyticsTotalSalesScreenCubit
    extends BaseCubit<RestaurantOutletsAnalyticsTotalSalesScreenState> {
  RestaurantOutletsAnalyticsTotalSalesScreenCubit({required super.context})
      : super(
      initialState: RestaurantOutletsAnalyticsTotalSalesScreenState.initial());
}
