import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_pos/app/bluetooth/widgets/bluetooth_print_print_receipt/bluetooth_print_print_receipt.dart';
import 'package:restaurant_pos/app/themes/borders.dart';
import 'package:restaurant_pos/app/themes/edge_insets.dart';
import 'package:restaurant_pos/app/themes/fonts.dart';

import '/app/core/widgets/base_stateless_widget.dart';
import '../../../bluetooth/widgets/bluetooth_print_disconnect_device/bluetooth_print_disconnect_device.dart';
import '../../../bluetooth/widgets/bluetooth_print_start_scan/bluetooth_print_start_scan.dart';
import 'restaurant_outlets_printers_screen_controller.dart';
import 'restaurant_outlets_printers_screen_cubit.dart';

class RestaurantOutletsPrintersScreen extends BaseStatelessWidget<
    RestaurantOutletsPrintersScreenController,
    RestaurantOutletsPrintersScreenCubit,
    RestaurantOutletsPrintersScreenState> {
  RestaurantOutletsPrintersScreen({
    Key? key,
    super.controller,
    super.onStateChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsPrintersScreenCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsPrintersScreenCubit,
          RestaurantOutletsPrintersScreenState>(
        listener: (context, state) {
          if (onStateChanged != null) {
            onStateChanged!(state);
          }
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            appBar: AppBar(
              // leading: IconButton(
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              //   icon: Icon(Icons.chevron_left),
              // ),
              title: const Text(
                "Printer",
                style: TextStyle(
                    fontWeight: Fonts.f700, fontSize: Fonts.fontSize20),
              ),
            ),
            body: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      margin: edge_insets_x_16,
                      child: const Text(
                        "Available Devices",
                        style: TextStyle(
                            fontSize: Fonts.fontSize18, fontWeight: Fonts.f600),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    BluetoothPrintStartScan(),
                    Divider(),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: BluetoothPrintDisconnectDevice(),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: BluetoothPrintPrintReceipt(),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(border: borders.bb_1px_grey1),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  RestaurantOutletsPrintersScreenCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsPrintersScreenCubit cubit =
        RestaurantOutletsPrintersScreenCubit(context: context);
    controller?.cubit = cubit;
    controller?.childContext = context;
    return cubit;
  }
}
