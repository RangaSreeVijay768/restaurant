import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_pos/app/core/blocs/base_cubit.dart';

import '../../database/boolean_status.dart';

part 'base_modal_cubit.freezed.dart';
part 'base_modal_state.dart';

abstract class BaseModalCubit<T> extends BaseCubit<T> {
  BaseModalCubit({required super.initialState,required super.context});


  void openModal();

  void closeModal();
}
