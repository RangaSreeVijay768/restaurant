import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/modals/base_modal/base_modal_cubit.dart';

part 'restaurant_outlets_add_restaurant_modal_cubit.freezed.dart';
part 'restaurant_outlets_add_restaurant_modal_state.dart';

class RestaurantOutletsAddRestaurantModalCubit
    extends BaseModalCubit<RestaurantOutletsAddRestaurantModalState> {
  RestaurantOutletsAddRestaurantModalCubit({required super.context})
      : super(initialState: RestaurantOutletsAddRestaurantModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    // TODO: implement closeModal
  }
}
