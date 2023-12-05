import 'package:acronym/acronym.dart';
import 'package:bluetooth_print/bluetooth_print_model.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant_pos/app/core/models/orders/order_info.dart';
import 'package:restaurant_pos/app/core/models/restaurants/restaurant_outlet_info.dart';



@singleton
class OrderUtils {
  static String getOrderHumanReadableCode(String orderId) {
    return orderId.substring(orderId.length - 4);
  }

  static String getRestaurantHumanReadableCode(String restaurantName) {
    return generateAcronym(restaurantName);
  }



  static List<LineText> getPrintReceiptText(
      RestaurantOutletInfo restaurantOutletInfo, OrderInfo orderInfo) {
    var time = DateTime.now();
    List<LineText> list = [];
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: restaurantOutletInfo.restaurantOutlet!.restaurantOutletName,
        align: LineText.ALIGN_CENTER,
        weight: 1,
        fontZoom: 4,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'flat 102, above reliance fresh',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Indiranagar, Gachibowli',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Phone: 8639031844',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: '--------------------------------',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: "Restaurant order: ",
        align: LineText.ALIGN_LEFT,
        linefeed: 0));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content:
            "${OrderUtils.getRestaurantHumanReadableCode(restaurantOutletInfo.restaurantOutlet!.restaurantOutletName!)} - ${OrderUtils.getOrderHumanReadableCode(orderInfo.order!.orderId!)}",
        weight: 1,
        y: 0,
        relativeX: 220,
        align: LineText.ALIGN_RIGHT,
        linefeed: 0));
    list.add(LineText(linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Bill no: 4',
        align: LineText.ALIGN_LEFT,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Date: ${time.day.toString().padLeft(2, '0')}/${time.month.toString().padLeft(2, '0')}/${time.year.toString()}',
        align: LineText.ALIGN_LEFT,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Time: ${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}',
        align: LineText.ALIGN_LEFT,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: '--------------------------------',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content:
        'Item   ',
        align: LineText.ALIGN_LEFT,
        fontZoom: 2,
        linefeed: 0));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Qty',
        relativeX: 200,
        y: 0,
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 0));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Amount',
        relativeX: 290,
        y: 0,
        align: LineText.ALIGN_RIGHT,
        fontZoom: 2,
        linefeed: 0));
    list.add(LineText(linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: '--------------------------------',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    for (var i = 0; i < orderInfo.orderItems!.length; i++) {
      list.add(LineText(
          type: LineText.TYPE_TEXT,
          content:
              '${orderInfo.orderItems![i].menuItem!.menuItemName}',
          align: LineText.ALIGN_LEFT,
          fontZoom: 2,
          linefeed: 0));
      list.add(LineText(
          type: LineText.TYPE_TEXT,
          content: 'x${orderInfo.orderItems![i].itemQuantity}',
          relativeX: 200,
          y: 0,
          align: LineText.ALIGN_CENTER,
          fontZoom: 2,
          linefeed: 0));
      list.add(LineText(
          type: LineText.TYPE_TEXT,
          content: '${orderInfo.orderItems![i].itemAmount}',
          relativeX: 310,
          y: 0,
          align: LineText.ALIGN_RIGHT,
          fontZoom: 2,
          linefeed: 0));
      list.add(LineText(linefeed: 1));
    }
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: '--------------------------------',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Grand Total',
        weight: 1,
        align: LineText.ALIGN_LEFT,
        fontZoom: 2,
        linefeed: 0));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: orderInfo.order!.amount.toString(),
        relativeX: 310,
        y: 0,
        weight: 1,
        align: LineText.ALIGN_RIGHT,
        fontZoom: 2,
        linefeed: 0));
    list.add(LineText(linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: '--------------------------------',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(linefeed: 1));
    list.add(LineText(linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Thank you',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(
        type: LineText.TYPE_TEXT,
        content: 'Please visit again',
        align: LineText.ALIGN_CENTER,
        fontZoom: 2,
        linefeed: 1));
    list.add(LineText(linefeed: 1));
    list.add(LineText(linefeed: 1));
    list.add(LineText(linefeed: 1));
    return list;
  }
}
