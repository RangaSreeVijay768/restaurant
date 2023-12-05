import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_pos/app/core/database/boolean_status.dart';
import 'package:restaurant_pos/app/core/models/orders/order.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_update_order/orders_update_order.dart';
import 'package:restaurant_pos/app/orders/widgets/orders_update_order/orders_update_order_controller.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_pos/app/themes/fonts.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import 'core_counter_timer_controller.dart';
import 'core_counter_timer_cubit.dart';

import '/app/core/widgets/base_stateless_widget.dart';

class CoreCounterTimer extends BaseStatelessWidget<CoreCounterTimerController,
    CoreCounterTimerCubit, CoreCounterTimerState> {
  Function onTimerClicked;

  CoreCounterTimer(
      {Key? key, super.controller, super.onStateChanged, required this.onTimerClicked,required this.order})
      : super(key: key);
  Order order;
  OrdersUpdateOrderController ordersUpdateOrderController =
      OrdersUpdateOrderController();

  final StopWatchTimer _stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countUp,
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CoreCounterTimerCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<CoreCounterTimerCubit, CoreCounterTimerState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return InkWell(
            onTap: () async {
              if (onTimerClicked != null) {
                onTimerClicked();
              }
            },
            child: Column(
              children: [

                StreamBuilder(
                  stream: state.stopWatchTimer?.rawTime,
                  initialData: state.stopWatchTimer?.rawTime.value,
                  builder: (context, snap) {
                    final value = snap.data!;
                    final displayTime = StopWatchTimer.getDisplayTime(value,
                        hours: false, milliSecond: false);
                    return Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            displayTime,
                            style: const TextStyle(
                              fontSize: Fonts.fontSize16,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: <Widget>[
                //     TextButton(
                //         onPressed: ()=> _stopWatchTimer.onStartTimer,
                //         child: Text("Start")
                //     ),
                //     TextButton(
                //         onPressed: ()=> _stopWatchTimer.onStopTimer(),
                //         child: Text("Stop")
                //     ),
                //     TextButton(
                //         onPressed: ()=> _stopWatchTimer.onResetTimer(),
                //         child: Text("Reset")
                //     )
                //   ],
                // ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  CoreCounterTimerCubit createCubitAndAssignToController(BuildContext context) {
    CoreCounterTimerCubit cubit = CoreCounterTimerCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
