import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_printers_screen_state.dart';

part 'restaurant_outlets_printers_screen_cubit.freezed.dart';

class RestaurantOutletsPrintersScreenCubit
    extends BaseCubit<RestaurantOutletsPrintersScreenState> {
  RestaurantOutletsPrintersScreenCubit({required super.context})
      : super(initialState: RestaurantOutletsPrintersScreenState.initial());
}
