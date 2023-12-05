// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_outlets_add_menu_item_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantOutletsAddMenuItemFormState {
  Menu? get menu => throw _privateConstructorUsedError;
  ControlStatus get formValid => throw _privateConstructorUsedError;
  String? get addMenuItemResponse => throw _privateConstructorUsedError;
  BooleanStatus get addMenuItemStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Menu? menu, ControlStatus formValid,
            String? addMenuItemResponse, BooleanStatus addMenuItemStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Menu? menu, ControlStatus formValid,
            String? addMenuItemResponse, BooleanStatus addMenuItemStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Menu? menu, ControlStatus formValid,
            String? addMenuItemResponse, BooleanStatus addMenuItemStatus)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantOutletsAddMenuItemFormStateCopyWith<
          RestaurantOutletsAddMenuItemFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantOutletsAddMenuItemFormStateCopyWith<$Res> {
  factory $RestaurantOutletsAddMenuItemFormStateCopyWith(
          RestaurantOutletsAddMenuItemFormState value,
          $Res Function(RestaurantOutletsAddMenuItemFormState) then) =
      _$RestaurantOutletsAddMenuItemFormStateCopyWithImpl<$Res,
          RestaurantOutletsAddMenuItemFormState>;
  @useResult
  $Res call(
      {Menu? menu,
      ControlStatus formValid,
      String? addMenuItemResponse,
      BooleanStatus addMenuItemStatus});
}

/// @nodoc
class _$RestaurantOutletsAddMenuItemFormStateCopyWithImpl<$Res,
        $Val extends RestaurantOutletsAddMenuItemFormState>
    implements $RestaurantOutletsAddMenuItemFormStateCopyWith<$Res> {
  _$RestaurantOutletsAddMenuItemFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu = freezed,
    Object? formValid = null,
    Object? addMenuItemResponse = freezed,
    Object? addMenuItemStatus = null,
  }) {
    return _then(_value.copyWith(
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu?,
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      addMenuItemResponse: freezed == addMenuItemResponse
          ? _value.addMenuItemResponse
          : addMenuItemResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      addMenuItemStatus: null == addMenuItemStatus
          ? _value.addMenuItemStatus
          : addMenuItemStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RestaurantOutletsAddMenuItemFormStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Menu? menu,
      ControlStatus formValid,
      String? addMenuItemResponse,
      BooleanStatus addMenuItemStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RestaurantOutletsAddMenuItemFormStateCopyWithImpl<$Res,
        _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu = freezed,
    Object? formValid = null,
    Object? addMenuItemResponse = freezed,
    Object? addMenuItemStatus = null,
  }) {
    return _then(_$InitialImpl(
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu?,
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      addMenuItemResponse: freezed == addMenuItemResponse
          ? _value.addMenuItemResponse
          : addMenuItemResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      addMenuItemStatus: null == addMenuItemStatus
          ? _value.addMenuItemStatus
          : addMenuItemStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.menu,
      this.formValid = ControlStatus.pending,
      this.addMenuItemResponse,
      this.addMenuItemStatus = BooleanStatus.initial});

  @override
  final Menu? menu;
  @override
  @JsonKey()
  final ControlStatus formValid;
  @override
  final String? addMenuItemResponse;
  @override
  @JsonKey()
  final BooleanStatus addMenuItemStatus;

  @override
  String toString() {
    return 'RestaurantOutletsAddMenuItemFormState.initial(menu: $menu, formValid: $formValid, addMenuItemResponse: $addMenuItemResponse, addMenuItemStatus: $addMenuItemStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.menu, menu) || other.menu == menu) &&
            (identical(other.formValid, formValid) ||
                other.formValid == formValid) &&
            (identical(other.addMenuItemResponse, addMenuItemResponse) ||
                other.addMenuItemResponse == addMenuItemResponse) &&
            (identical(other.addMenuItemStatus, addMenuItemStatus) ||
                other.addMenuItemStatus == addMenuItemStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, menu, formValid, addMenuItemResponse, addMenuItemStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Menu? menu, ControlStatus formValid,
            String? addMenuItemResponse, BooleanStatus addMenuItemStatus)
        initial,
  }) {
    return initial(menu, formValid, addMenuItemResponse, addMenuItemStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Menu? menu, ControlStatus formValid,
            String? addMenuItemResponse, BooleanStatus addMenuItemStatus)?
        initial,
  }) {
    return initial?.call(
        menu, formValid, addMenuItemResponse, addMenuItemStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Menu? menu, ControlStatus formValid,
            String? addMenuItemResponse, BooleanStatus addMenuItemStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(menu, formValid, addMenuItemResponse, addMenuItemStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RestaurantOutletsAddMenuItemFormState {
  const factory _Initial(
      {final Menu? menu,
      final ControlStatus formValid,
      final String? addMenuItemResponse,
      final BooleanStatus addMenuItemStatus}) = _$InitialImpl;

  @override
  Menu? get menu;
  @override
  ControlStatus get formValid;
  @override
  String? get addMenuItemResponse;
  @override
  BooleanStatus get addMenuItemStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
