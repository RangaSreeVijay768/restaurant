// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_outlets_update_menu_item_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantOutletsUpdateMenuItemFormState {
  ControlStatus get formValid => throw _privateConstructorUsedError;
  MenuItem get menuItem => throw _privateConstructorUsedError;
  String? get updateMenuItem => throw _privateConstructorUsedError;
  BooleanStatus get updateMenuItemStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlStatus formValid, MenuItem menuItem,
            String? updateMenuItem, BooleanStatus updateMenuItemStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlStatus formValid, MenuItem menuItem,
            String? updateMenuItem, BooleanStatus updateMenuItemStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlStatus formValid, MenuItem menuItem,
            String? updateMenuItem, BooleanStatus updateMenuItemStatus)?
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
  $RestaurantOutletsUpdateMenuItemFormStateCopyWith<
          RestaurantOutletsUpdateMenuItemFormState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantOutletsUpdateMenuItemFormStateCopyWith<$Res> {
  factory $RestaurantOutletsUpdateMenuItemFormStateCopyWith(
          RestaurantOutletsUpdateMenuItemFormState value,
          $Res Function(RestaurantOutletsUpdateMenuItemFormState) then) =
      _$RestaurantOutletsUpdateMenuItemFormStateCopyWithImpl<$Res,
          RestaurantOutletsUpdateMenuItemFormState>;
  @useResult
  $Res call(
      {ControlStatus formValid,
      MenuItem menuItem,
      String? updateMenuItem,
      BooleanStatus updateMenuItemStatus});
}

/// @nodoc
class _$RestaurantOutletsUpdateMenuItemFormStateCopyWithImpl<$Res,
        $Val extends RestaurantOutletsUpdateMenuItemFormState>
    implements $RestaurantOutletsUpdateMenuItemFormStateCopyWith<$Res> {
  _$RestaurantOutletsUpdateMenuItemFormStateCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
    Object? menuItem = null,
    Object? updateMenuItem = freezed,
    Object? updateMenuItemStatus = null,
  }) {
    return _then(_value.copyWith(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      menuItem: null == menuItem
          ? _value.menuItem
          : menuItem // ignore: cast_nullable_to_non_nullable
              as MenuItem,
      updateMenuItem: freezed == updateMenuItem
          ? _value.updateMenuItem
          : updateMenuItem // ignore: cast_nullable_to_non_nullable
              as String?,
      updateMenuItemStatus: null == updateMenuItemStatus
          ? _value.updateMenuItemStatus
          : updateMenuItemStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RestaurantOutletsUpdateMenuItemFormStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ControlStatus formValid,
      MenuItem menuItem,
      String? updateMenuItem,
      BooleanStatus updateMenuItemStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RestaurantOutletsUpdateMenuItemFormStateCopyWithImpl<$Res,
        _$InitialImpl> implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formValid = null,
    Object? menuItem = null,
    Object? updateMenuItem = freezed,
    Object? updateMenuItemStatus = null,
  }) {
    return _then(_$InitialImpl(
      formValid: null == formValid
          ? _value.formValid
          : formValid // ignore: cast_nullable_to_non_nullable
              as ControlStatus,
      menuItem: null == menuItem
          ? _value.menuItem
          : menuItem // ignore: cast_nullable_to_non_nullable
              as MenuItem,
      updateMenuItem: freezed == updateMenuItem
          ? _value.updateMenuItem
          : updateMenuItem // ignore: cast_nullable_to_non_nullable
              as String?,
      updateMenuItemStatus: null == updateMenuItemStatus
          ? _value.updateMenuItemStatus
          : updateMenuItemStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.formValid = ControlStatus.pending,
      required this.menuItem,
      this.updateMenuItem,
      this.updateMenuItemStatus = BooleanStatus.initial});

  @override
  @JsonKey()
  final ControlStatus formValid;
  @override
  final MenuItem menuItem;
  @override
  final String? updateMenuItem;
  @override
  @JsonKey()
  final BooleanStatus updateMenuItemStatus;

  @override
  String toString() {
    return 'RestaurantOutletsUpdateMenuItemFormState.initial(formValid: $formValid, menuItem: $menuItem, updateMenuItem: $updateMenuItem, updateMenuItemStatus: $updateMenuItemStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.formValid, formValid) ||
                other.formValid == formValid) &&
            (identical(other.menuItem, menuItem) ||
                other.menuItem == menuItem) &&
            (identical(other.updateMenuItem, updateMenuItem) ||
                other.updateMenuItem == updateMenuItem) &&
            (identical(other.updateMenuItemStatus, updateMenuItemStatus) ||
                other.updateMenuItemStatus == updateMenuItemStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, formValid, menuItem, updateMenuItem, updateMenuItemStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ControlStatus formValid, MenuItem menuItem,
            String? updateMenuItem, BooleanStatus updateMenuItemStatus)
        initial,
  }) {
    return initial(formValid, menuItem, updateMenuItem, updateMenuItemStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ControlStatus formValid, MenuItem menuItem,
            String? updateMenuItem, BooleanStatus updateMenuItemStatus)?
        initial,
  }) {
    return initial?.call(
        formValid, menuItem, updateMenuItem, updateMenuItemStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ControlStatus formValid, MenuItem menuItem,
            String? updateMenuItem, BooleanStatus updateMenuItemStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(formValid, menuItem, updateMenuItem, updateMenuItemStatus);
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

abstract class _Initial implements RestaurantOutletsUpdateMenuItemFormState {
  const factory _Initial(
      {final ControlStatus formValid,
      required final MenuItem menuItem,
      final String? updateMenuItem,
      final BooleanStatus updateMenuItemStatus}) = _$InitialImpl;

  @override
  ControlStatus get formValid;
  @override
  MenuItem get menuItem;
  @override
  String? get updateMenuItem;
  @override
  BooleanStatus get updateMenuItemStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
