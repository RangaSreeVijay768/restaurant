// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_complete_order_payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersCompleteOrderPaymentState {
  String? get orderPayment => throw _privateConstructorUsedError;
  Order? get order => throw _privateConstructorUsedError;
  CompleteOrderPaymentResponse? get completeOrderPaymentResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get completeOrderPaymentStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? orderPayment,
            Order? order,
            CompleteOrderPaymentResponse? completeOrderPaymentResponse,
            BooleanStatus completeOrderPaymentStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? orderPayment,
            Order? order,
            CompleteOrderPaymentResponse? completeOrderPaymentResponse,
            BooleanStatus completeOrderPaymentStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? orderPayment,
            Order? order,
            CompleteOrderPaymentResponse? completeOrderPaymentResponse,
            BooleanStatus completeOrderPaymentStatus)?
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
  $OrdersCompleteOrderPaymentStateCopyWith<OrdersCompleteOrderPaymentState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersCompleteOrderPaymentStateCopyWith<$Res> {
  factory $OrdersCompleteOrderPaymentStateCopyWith(
          OrdersCompleteOrderPaymentState value,
          $Res Function(OrdersCompleteOrderPaymentState) then) =
      _$OrdersCompleteOrderPaymentStateCopyWithImpl<$Res,
          OrdersCompleteOrderPaymentState>;
  @useResult
  $Res call(
      {String? orderPayment,
      Order? order,
      CompleteOrderPaymentResponse? completeOrderPaymentResponse,
      BooleanStatus completeOrderPaymentStatus});
}

/// @nodoc
class _$OrdersCompleteOrderPaymentStateCopyWithImpl<$Res,
        $Val extends OrdersCompleteOrderPaymentState>
    implements $OrdersCompleteOrderPaymentStateCopyWith<$Res> {
  _$OrdersCompleteOrderPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderPayment = freezed,
    Object? order = freezed,
    Object? completeOrderPaymentResponse = freezed,
    Object? completeOrderPaymentStatus = null,
  }) {
    return _then(_value.copyWith(
      orderPayment: freezed == orderPayment
          ? _value.orderPayment
          : orderPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      completeOrderPaymentResponse: freezed == completeOrderPaymentResponse
          ? _value.completeOrderPaymentResponse
          : completeOrderPaymentResponse // ignore: cast_nullable_to_non_nullable
              as CompleteOrderPaymentResponse?,
      completeOrderPaymentStatus: null == completeOrderPaymentStatus
          ? _value.completeOrderPaymentStatus
          : completeOrderPaymentStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrdersCompleteOrderPaymentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? orderPayment,
      Order? order,
      CompleteOrderPaymentResponse? completeOrderPaymentResponse,
      BooleanStatus completeOrderPaymentStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrdersCompleteOrderPaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderPayment = freezed,
    Object? order = freezed,
    Object? completeOrderPaymentResponse = freezed,
    Object? completeOrderPaymentStatus = null,
  }) {
    return _then(_$InitialImpl(
      orderPayment: freezed == orderPayment
          ? _value.orderPayment
          : orderPayment // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      completeOrderPaymentResponse: freezed == completeOrderPaymentResponse
          ? _value.completeOrderPaymentResponse
          : completeOrderPaymentResponse // ignore: cast_nullable_to_non_nullable
              as CompleteOrderPaymentResponse?,
      completeOrderPaymentStatus: null == completeOrderPaymentStatus
          ? _value.completeOrderPaymentStatus
          : completeOrderPaymentStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.orderPayment,
      this.order,
      this.completeOrderPaymentResponse,
      this.completeOrderPaymentStatus = BooleanStatus.initial});

  @override
  final String? orderPayment;
  @override
  final Order? order;
  @override
  final CompleteOrderPaymentResponse? completeOrderPaymentResponse;
  @override
  @JsonKey()
  final BooleanStatus completeOrderPaymentStatus;

  @override
  String toString() {
    return 'OrdersCompleteOrderPaymentState.initial(orderPayment: $orderPayment, order: $order, completeOrderPaymentResponse: $completeOrderPaymentResponse, completeOrderPaymentStatus: $completeOrderPaymentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.orderPayment, orderPayment) ||
                other.orderPayment == orderPayment) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.completeOrderPaymentResponse,
                    completeOrderPaymentResponse) ||
                other.completeOrderPaymentResponse ==
                    completeOrderPaymentResponse) &&
            (identical(other.completeOrderPaymentStatus,
                    completeOrderPaymentStatus) ||
                other.completeOrderPaymentStatus ==
                    completeOrderPaymentStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderPayment, order,
      completeOrderPaymentResponse, completeOrderPaymentStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? orderPayment,
            Order? order,
            CompleteOrderPaymentResponse? completeOrderPaymentResponse,
            BooleanStatus completeOrderPaymentStatus)
        initial,
  }) {
    return initial(orderPayment, order, completeOrderPaymentResponse,
        completeOrderPaymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? orderPayment,
            Order? order,
            CompleteOrderPaymentResponse? completeOrderPaymentResponse,
            BooleanStatus completeOrderPaymentStatus)?
        initial,
  }) {
    return initial?.call(orderPayment, order, completeOrderPaymentResponse,
        completeOrderPaymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? orderPayment,
            Order? order,
            CompleteOrderPaymentResponse? completeOrderPaymentResponse,
            BooleanStatus completeOrderPaymentStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(orderPayment, order, completeOrderPaymentResponse,
          completeOrderPaymentStatus);
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

abstract class _Initial implements OrdersCompleteOrderPaymentState {
  const factory _Initial(
      {final String? orderPayment,
      final Order? order,
      final CompleteOrderPaymentResponse? completeOrderPaymentResponse,
      final BooleanStatus completeOrderPaymentStatus}) = _$InitialImpl;

  @override
  String? get orderPayment;
  @override
  Order? get order;
  @override
  CompleteOrderPaymentResponse? get completeOrderPaymentResponse;
  @override
  BooleanStatus get completeOrderPaymentStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
