import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/modals/base_modal/base_modal_cubit.dart';

part 'restaurant_outlets_add_menu_modal_cubit.freezed.dart';
part 'restaurant_outlets_add_menu_modal_state.dart';

class RestaurantOutletsAddMenuModalCubit
    extends BaseModalCubit<RestaurantOutletsAddMenuModalState> {
  RestaurantOutletsAddMenuModalCubit({required super.context})
      : super(initialState: RestaurantOutletsAddMenuModalState.initial());

  @override
  void closeModal() {
    // TODO: implement closeModal
  }

  @override
  void openModal() {
    // TODO: implement openModal
  }
}
