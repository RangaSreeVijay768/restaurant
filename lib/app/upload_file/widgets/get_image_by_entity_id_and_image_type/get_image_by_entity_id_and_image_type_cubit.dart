import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/logger/log.dart';
import 'package:restaurant_pos/app/core/models/menus/menu_item.dart';
import 'package:restaurant_pos/app/core/widgets/core_image_picker/core_image_picker_cubit.dart';
import 'package:restaurant_pos/app/upload_file/repos/models/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type_request.dart';
import 'package:restaurant_pos/app/upload_file/widgets/upload_file/upload_file_cubit.dart';
import '../../repos/models/get_image_by_entity_id_and_image_type/get_image_by_entity_id_and_image_type_response.dart';
import '../../services/upload_file_service.dart';
import '/app/core/blocs/base_cubit.dart';
import 'package:get_it/get_it.dart';
import '/app/core/database/boolean_status.dart';

part 'get_image_by_entity_id_and_image_type_state.dart';

part 'get_image_by_entity_id_and_image_type_cubit.freezed.dart';

class GetImageByEntityIdAndImageTypeCubit
    extends BaseCubit<GetImageByEntityIdAndImageTypeState> {
  late UploadFileService uploadFileService;

  GetImageByEntityIdAndImageTypeCubit(
      {required super.context,
      required String entity,
      required String imageType,
      required String alt,
      required num size})
      : super(
            initialState: GetImageByEntityIdAndImageTypeState.initial(
                entity: entity, imageType: imageType, alt: alt,size: size)) {
    uploadFileService = GetIt.instance<UploadFileService>();
    getImageByEntityIdAndImageType(createRequestData());
  }

  GetImageByEntityIdAndImageTypeRequest createRequestData(
      {String? entity, String? imageType}) {
    final request = GetImageByEntityIdAndImageTypeRequest(
        entity: entity ?? state.entity,
        imageType: imageType ?? state.imageType);
    return request;
  }

  Future<List<GetImageByEntityIdAndImageTypeResponse>>
      getImageByEntityIdAndImageType(
          GetImageByEntityIdAndImageTypeRequest request) async {
    return uploadFileService
        .getImageByEntityIdAndImageType(request)
        .then((value) {
      emit(state.copyWith(
          getImageByEntityIdAndImageTypeResponse: value,
          getImageByEntityIdAndImageTypeStatus: BooleanStatus.success));
      return Future.value(value);
    }).catchError((error) {
      logger.d( error);

      emit(state.copyWith(
          getImageByEntityIdAndImageTypeStatus: BooleanStatus.error));
      throw error;
    });
  }
}
