part of 'core_counter_timer_cubit.dart';

@freezed
class CoreCounterTimerState with _$CoreCounterTimerState {
  const factory CoreCounterTimerState.initial({
    StopWatchTimer? stopWatchTimer,
    OrdersUpdateOrderState? ordersUpdateOrderState,
    @Default(BooleanStatus.running) BooleanStatus stopWatchTimerStatus
}) = _Initial;
}
