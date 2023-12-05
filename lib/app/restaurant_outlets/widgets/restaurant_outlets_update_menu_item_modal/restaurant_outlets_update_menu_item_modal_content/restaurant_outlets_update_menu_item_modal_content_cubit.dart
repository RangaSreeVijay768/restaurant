import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:restaurant_pos/app/core/widgets/core_image_picker/core_image_picker.dart';
import 'package:restaurant_pos/app/core/widgets/core_image_picker/core_image_picker_cubit.dart';
import 'package:restaurant_pos/app/restaurant_outlets/widgets/restaurant_outlets_update_menu_item_form/restaurant_outlets_update_menu_item_form_cubit.dart';
import 'package:restaurant_pos/app/upload_file/widgets/attach_image/attach_image_cubit.dart';
import 'package:restaurant_pos/app/upload_file/widgets/upload_file/upload_file.dart';
import 'package:restaurant_pos/app/upload_file/widgets/upload_file/upload_file_cubit.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'restaurant_outlets_update_menu_item_modal_content_state.dart';

part 'restaurant_outlets_update_menu_item_modal_content_cubit.freezed.dart';

class RestaurantOutletsUpdateMenuItemModalContentCubit
    extends BaseCubit<RestaurantOutletsUpdateMenuItemModalContentState> {
  RestaurantOutletsUpdateMenuItemModalContentCubit({required super.context})
      : super(
      initialState: RestaurantOutletsUpdateMenuItemModalContentState.initial());
}
