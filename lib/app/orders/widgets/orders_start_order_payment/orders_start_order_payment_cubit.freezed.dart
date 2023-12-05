// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_start_order_payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersStartOrderPaymentState {
  String? get order => throw _privateConstructorUsedError;
  dynamic get paymentGateway => throw _privateConstructorUsedError;
  StartOrderPaymentResponse? get startOrderPaymentResponse =>
      throw _privateConstructorUsedError;
  BooleanStatus get startOrderPaymentStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? order,
            dynamic paymentGateway,
            StartOrderPaymentResponse? startOrderPaymentResponse,
            BooleanStatus startOrderPaymentStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? order,
            dynamic paymentGateway,
            StartOrderPaymentResponse? startOrderPaymentResponse,
            BooleanStatus startOrderPaymentStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? order,
            dynamic paymentGateway,
            StartOrderPaymentResponse? startOrderPaymentResponse,
            BooleanStatus startOrderPaymentStatus)?
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
  $OrdersStartOrderPaymentStateCopyWith<OrdersStartOrderPaymentState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStartOrderPaymentStateCopyWith<$Res> {
  factory $OrdersStartOrderPaymentStateCopyWith(
          OrdersStartOrderPaymentState value,
          $Res Function(OrdersStartOrderPaymentState) then) =
      _$OrdersStartOrderPaymentStateCopyWithImpl<$Res,
          OrdersStartOrderPaymentState>;
  @useResult
  $Res call(
      {String? order,
      dynamic paymentGateway,
      StartOrderPaymentResponse? startOrderPaymentResponse,
      BooleanStatus startOrderPaymentStatus});
}

/// @nodoc
class _$OrdersStartOrderPaymentStateCopyWithImpl<$Res,
        $Val extends OrdersStartOrderPaymentState>
    implements $OrdersStartOrderPaymentStateCopyWith<$Res> {
  _$OrdersStartOrderPaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? paymentGateway = freezed,
    Object? startOrderPaymentResponse = freezed,
    Object? startOrderPaymentStatus = null,
  }) {
    return _then(_value.copyWith(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startOrderPaymentResponse: freezed == startOrderPaymentResponse
          ? _value.startOrderPaymentResponse
          : startOrderPaymentResponse // ignore: cast_nullable_to_non_nullable
              as StartOrderPaymentResponse?,
      startOrderPaymentStatus: null == startOrderPaymentStatus
          ? _value.startOrderPaymentStatus
          : startOrderPaymentStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $OrdersStartOrderPaymentStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? order,
      dynamic paymentGateway,
      StartOrderPaymentResponse? startOrderPaymentResponse,
      BooleanStatus startOrderPaymentStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$OrdersStartOrderPaymentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? paymentGateway = freezed,
    Object? startOrderPaymentResponse = freezed,
    Object? startOrderPaymentStatus = null,
  }) {
    return _then(_$InitialImpl(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentGateway: freezed == paymentGateway
          ? _value.paymentGateway
          : paymentGateway // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startOrderPaymentResponse: freezed == startOrderPaymentResponse
          ? _value.startOrderPaymentResponse
          : startOrderPaymentResponse // ignore: cast_nullable_to_non_nullable
              as StartOrderPaymentResponse?,
      startOrderPaymentStatus: null == startOrderPaymentStatus
          ? _value.startOrderPaymentStatus
          : startOrderPaymentStatus // ignore: cast_nullable_to_non_nullable
              as BooleanStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.order,
      this.paymentGateway,
      this.startOrderPaymentResponse,
      this.startOrderPaymentStatus = BooleanStatus.initial});

  @override
  final String? order;
  @override
  final dynamic paymentGateway;
  @override
  final StartOrderPaymentResponse? startOrderPaymentResponse;
  @override
  @JsonKey()
  final BooleanStatus startOrderPaymentStatus;

  @override
  String toString() {
    return 'OrdersStartOrderPaymentState.initial(order: $order, paymentGateway: $paymentGateway, startOrderPaymentResponse: $startOrderPaymentResponse, startOrderPaymentStatus: $startOrderPaymentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality()
                .equals(other.paymentGateway, paymentGateway) &&
            (identical(other.startOrderPaymentResponse,
                    startOrderPaymentResponse) ||
                other.startOrderPaymentResponse == startOrderPaymentResponse) &&
            (identical(
                    other.startOrderPaymentStatus, startOrderPaymentStatus) ||
                other.startOrderPaymentStatus == startOrderPaymentStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      order,
      const DeepCollectionEquality().hash(paymentGateway),
      startOrderPaymentResponse,
      startOrderPaymentStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? order,
            dynamic paymentGateway,
            StartOrderPaymentResponse? startOrderPaymentResponse,
            BooleanStatus startOrderPaymentStatus)
        initial,
  }) {
    return initial(order, paymentGateway, startOrderPaymentResponse,
        startOrderPaymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? order,
            dynamic paymentGateway,
            StartOrderPaymentResponse? startOrderPaymentResponse,
            BooleanStatus startOrderPaymentStatus)?
        initial,
  }) {
    return initial?.call(order, paymentGateway, startOrderPaymentResponse,
        startOrderPaymentStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? order,
            dynamic paymentGateway,
            StartOrderPaymentResponse? startOrderPaymentResponse,
            BooleanStatus startOrderPaymentStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(order, paymentGateway, startOrderPaymentResponse,
          startOrderPaymentStatus);
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

abstract class _Initial implements OrdersStartOrderPaymentState {
  const factory _Initial(
      {final String? order,
      final dynamic paymentGateway,
      final StartOrderPaymentResponse? startOrderPaymentResponse,
      final BooleanStatus startOrderPaymentStatus}) = _$InitialImpl;

  @override
  String? get order;
  @override
  dynamic get paymentGateway;
  @override
  StartOrderPaymentResponse? get startOrderPaymentResponse;
  @override
  BooleanStatus get startOrderPaymentStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
