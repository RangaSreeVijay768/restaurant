// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_add_order_items_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersAddOrderItemsState {
  Order? get order => throw _privateConstructorUsedError;
  String? get ordersAddOrderItemsResponse => throw _privateConstructorUsedError;
  BooleanStatus get ordersAddOrderItemsStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order? order, String? ordersAddOrderItemsResponse,
            BooleanStatus ordersAddOrderItemsStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order? order, String? ordersAddOrderItemsResponse,
            BooleanStatus ordersAddOrderItemsStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order? order, String? ordersAddOrderItemsResponse,
            BooleanStatus ordersAddOrderItemsStatus)?
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
  $OrdersAddOrderItemsStateCopyWith<OrdersAddOrderItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersAddOrderItemsStateCopyWith<$Res> {
  factory $OrdersAddOrderItemsStateCopyWith(OrdersAddOrderItemsState value,
          $Res Function(OrdersAddOrderItemsState) then) =
      _$OrdersAddOrderItemsStateCopyWithImpl<$Res, OrdersAddOrderItemsState>;
  @useResult
  $Res call(
      {Order? order,
      String? ordersAddOrderItemsResponse,
      BooleanStatus ordersAddOrderItemsStatus});
}

/// @nodoc
class _$OrdersAddOrderItemsStateCopyWithImpl<$Res,
        $Val extends OrdersAddOrderItemsState>
    implements $OrdersAddOrderItemsStateCopyWith<$Res> {
  _$OrdersAddOrderItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? ordersAddOrderItemsResponse = freezed,
    Object? ordersAddOrderItemsStatus = null,
  }) {
    return _then(_value.copyWith(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      ordersAddOrderItemsResponse: freezed == ordersAddOrderItemsResponse
          ? _value.ordersAddOrderItemsResponse
          : ordersAddOrderItemsResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersAddOrderItemsStatus: null == ordersAddOrderItemsStatus
          ? _value.ordersAddOrderItemsStatus
          : ordersAddOrderItemsStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrdersAddOrderItemsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Order? order,
      String? ordersAddOrderItemsResponse,
      BooleanStatus ordersAddOrderItemsStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrdersAddOrderItemsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? ordersAddOrderItemsResponse = freezed,
    Object? ordersAddOrderItemsStatus = null,
  }) {
    return _then(_$InitialImpl(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      ordersAddOrderItemsResponse: freezed == ordersAddOrderItemsResponse
          ? _value.ordersAddOrderItemsResponse
          : ordersAddOrderItemsResponse // ignore: cast_nullable_to_non_nullable
              as String?,
      ordersAddOrderItemsStatus: null == ordersAddOrderItemsStatus
          ? _value.ordersAddOrderItemsStatus
          : ordersAddOrderItemsStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.order,
      this.ordersAddOrderItemsResponse,
      this.ordersAddOrderItemsStatus = BooleanStatus.initial});

  @override
  final Order? order;
  @override
  final String? ordersAddOrderItemsResponse;
  @override
  @JsonKey()
  final BooleanStatus ordersAddOrderItemsStatus;

  @override
  String toString() {
    return 'OrdersAddOrderItemsState.initial(order: $order, ordersAddOrderItemsResponse: $ordersAddOrderItemsResponse, ordersAddOrderItemsStatus: $ordersAddOrderItemsStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.ordersAddOrderItemsResponse,
                    ordersAddOrderItemsResponse) ||
                other.ordersAddOrderItemsResponse ==
                    ordersAddOrderItemsResponse) &&
            (identical(other.ordersAddOrderItemsStatus,
                    ordersAddOrderItemsStatus) ||
                other.ordersAddOrderItemsStatus == ordersAddOrderItemsStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order,
      ordersAddOrderItemsResponse, ordersAddOrderItemsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Order? order, String? ordersAddOrderItemsResponse,
            BooleanStatus ordersAddOrderItemsStatus)
        initial,
  }) {
    return initial(
        order, ordersAddOrderItemsResponse, ordersAddOrderItemsStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Order? order, String? ordersAddOrderItemsResponse,
            BooleanStatus ordersAddOrderItemsStatus)?
        initial,
  }) {
    return initial?.call(
        order, ordersAddOrderItemsResponse, ordersAddOrderItemsStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Order? order, String? ordersAddOrderItemsResponse,
            BooleanStatus ordersAddOrderItemsStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          order, ordersAddOrderItemsResponse, ordersAddOrderItemsStatus);
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

abstract class _Initial implements OrdersAddOrderItemsState {
  const factory _Initial(
      {final Order? order,
      final String? ordersAddOrderItemsResponse,
      final BooleanStatus ordersAddOrderItemsStatus}) = _$InitialImpl;

  @override
  Order? get order;
  @override
  String? get ordersAddOrderItemsResponse;
  @override
  BooleanStatus get ordersAddOrderItemsStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
