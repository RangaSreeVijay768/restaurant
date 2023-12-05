// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_create_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersCreateOrderState {
  RestaurantOutlet get restaurantOutlet => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  BooleanStatus get createOrderStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RestaurantOutlet restaurantOutlet,
            String? orderId, BooleanStatus createOrderStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RestaurantOutlet restaurantOutlet, String? orderId,
            BooleanStatus createOrderStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RestaurantOutlet restaurantOutlet, String? orderId,
            BooleanStatus createOrderStatus)?
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
  $OrdersCreateOrderStateCopyWith<OrdersCreateOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCreateOrderStateCopyWith<$Res> {
  factory $OrdersCreateOrderStateCopyWith(OrdersCreateOrderState value,
          $Res Function(OrdersCreateOrderState) then) =
      _$OrdersCreateOrderStateCopyWithImpl<$Res, OrdersCreateOrderState>;
  @useResult
  $Res call(
      {RestaurantOutlet restaurantOutlet,
      String? orderId,
      BooleanStatus createOrderStatus});
}

/// @nodoc
class _$OrdersCreateOrderStateCopyWithImpl<$Res,
        $Val extends OrdersCreateOrderState>
    implements $OrdersCreateOrderStateCopyWith<$Res> {
  _$OrdersCreateOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantOutlet = null,
    Object? orderId = freezed,
    Object? createOrderStatus = null,
  }) {
    return _then(_value.copyWith(
      restaurantOutlet: null == restaurantOutlet
          ? _value.restaurantOutlet
          : restaurantOutlet // ignore: cast_nullable_to_non_nullable
              as RestaurantOutlet,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      createOrderStatus: null == createOrderStatus
          ? _value.createOrderStatus
          : createOrderStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrdersCreateOrderStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RestaurantOutlet restaurantOutlet,
      String? orderId,
      BooleanStatus createOrderStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrdersCreateOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantOutlet = null,
    Object? orderId = freezed,
    Object? createOrderStatus = null,
  }) {
    return _then(_$InitialImpl(
      restaurantOutlet: null == restaurantOutlet
          ? _value.restaurantOutlet
          : restaurantOutlet // ignore: cast_nullable_to_non_nullable
              as RestaurantOutlet,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      createOrderStatus: null == createOrderStatus
          ? _value.createOrderStatus
          : createOrderStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.restaurantOutlet,
      this.orderId,
      required this.createOrderStatus});

  @override
  final RestaurantOutlet restaurantOutlet;
  @override
  final String? orderId;
  @override
  final BooleanStatus createOrderStatus;

  @override
  String toString() {
    return 'OrdersCreateOrderState.initial(restaurantOutlet: $restaurantOutlet, orderId: $orderId, createOrderStatus: $createOrderStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.restaurantOutlet, restaurantOutlet) ||
                other.restaurantOutlet == restaurantOutlet) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.createOrderStatus, createOrderStatus) ||
                other.createOrderStatus == createOrderStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, restaurantOutlet, orderId, createOrderStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RestaurantOutlet restaurantOutlet,
            String? orderId, BooleanStatus createOrderStatus)
        initial,
  }) {
    return initial(restaurantOutlet, orderId, createOrderStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RestaurantOutlet restaurantOutlet, String? orderId,
            BooleanStatus createOrderStatus)?
        initial,
  }) {
    return initial?.call(restaurantOutlet, orderId, createOrderStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RestaurantOutlet restaurantOutlet, String? orderId,
            BooleanStatus createOrderStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(restaurantOutlet, orderId, createOrderStatus);
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

abstract class _Initial implements OrdersCreateOrderState {
  const factory _Initial(
      {required final RestaurantOutlet restaurantOutlet,
      final String? orderId,
      required final BooleanStatus createOrderStatus}) = _$InitialImpl;

  @override
  RestaurantOutlet get restaurantOutlet;
  @override
  String? get orderId;
  @override
  BooleanStatus get createOrderStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
