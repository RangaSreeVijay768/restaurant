import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:restaurant_pos/app/core/models/menus/menu.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_add_menu_item_form/restaurant_outlets_add_menu_item_form_cubit.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_add_menu_modal/restaurant_outlets_add_menu_modal_cubit.dart';
import '../../../../core/widgets/core_image_picker/core_image_picker_cubit.dart';
import '../../../../upload_file/widgets/upload_file/upload_file_cubit.dart';
import '/app/core/blocs/base_cubit.dart';

part 'restaurant_outlets_add_menu_modal_content_state.dart';

part 'restaurant_outlets_add_menu_modal_content_cubit.freezed.dart';

class RestaurantOutletsAddMenuModalContentCubit
    extends BaseCubit<RestaurantOutletsAddMenuModalContentState> {
  RestaurantOutletsAddMenuModalContentCubit(
      {required super.context})
      : super(
            initialState: RestaurantOutletsAddMenuModalContentState.initial(
                formGroup:
                    RestaurantOutletsAddMenuModalContentCubit.getFormGroup()));

  static getFormGroup() {
    return FormGroup({
      'item_name': FormControl<String>(),
      'price': FormControl<String>(),
    });
  }
}
