import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_get_all_categories_widget_state.dart';
part 'menu_get_all_categories_widget_cubit.freezed.dart';

class MenuGetAllCategoriesWidgetCubit extends Cubit<MenuGetAllCategoriesWidgetState> {
  MenuGetAllCategoriesWidgetCubit() : super(const MenuGetAllCategoriesWidgetState.initial());
}
