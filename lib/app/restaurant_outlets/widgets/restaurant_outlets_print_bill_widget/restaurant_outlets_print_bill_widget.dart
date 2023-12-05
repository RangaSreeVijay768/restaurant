import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import '../../../themes/fonts.dart';
import '/app/core/widgets/base_stateless_widget.dart';
import 'restaurant_outlets_print_bill_widget_controller.dart';
import 'restaurant_outlets_print_bill_widget_cubit.dart';

class RestaurantOutletsPrintBillWidget extends BaseStatelessWidget<
    RestaurantOutletsPrintBillWidgetController,
    RestaurantOutletsPrintBillWidgetCubit,
    RestaurantOutletsPrintBillWidgetState> {
  late String title = "bill";
  final String orderId;
  final String orderTime;
  final String items;
  final String amount;
  
  
  RestaurantOutletsPrintBillWidget({super.key, required this.orderId, required this.orderTime, required this.items, required this.amount});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RestaurantOutletsPrintBillWidgetCubit>(
      create: (context) => createCubitAndAssignToController(context),
      child: BlocConsumer<RestaurantOutletsPrintBillWidgetCubit,
          RestaurantOutletsPrintBillWidgetState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          initializeController(context);
          return Scaffold(
            body: PdfPreview(
              build: (format) => generatePdf(format, title),
            ),
          );
        },


      ),
    );
  }

  Future<Uint8List> generatePdf(PdfPageFormat format, String title) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
    final font = await PdfGoogleFonts.nunitoExtraLight();

    pdf.addPage(
      pw.Page(
        pageFormat: format,
        build: (context) {
          return pw.Container(
            alignment: pw.Alignment.topCenter,
            margin: const pw.EdgeInsets.only(left: 50, top: 100),
            child: pw.Column(
              // mainAxisAlignment: pw.MainAxisAlignment.start,
              // crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  children:[
                    pw.Container(
                      child: pw.Text("OrderId :             ", style: pw.TextStyle(
                        font: font,
                        fontSize: Fonts.fontSize20
                      ))
                    ),
                    pw.Container(
                        child: pw.Text(orderId, style: pw.TextStyle(
                          font: font,
                          fontSize: Fonts.fontSize32,
                        ))
                    )
                  ]
                ),
                pw.SizedBox(height: 20),
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children:[
                      pw.Container(
                          child: pw.Text("OrderTime :       ", style: pw.TextStyle(
                              font: font,
                              fontSize: Fonts.fontSize20,
                            fontBold: pw.Font.helvetica()
                          ))
                      ),
                      pw.Container(
                          child: pw.Text(orderTime, style: pw.TextStyle(
                            font: font,
                            fontSize: Fonts.fontSize32,
                          ))
                      )
                    ]
                ),
                pw.SizedBox(height: 20),
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children:[
                      pw.Container(
                          child: pw.Text("Items :                 ", style: pw.TextStyle(
                              font: font,
                              fontSize: Fonts.fontSize20
                          ))
                      ),
                      pw.Container(
                          child: pw.Text(items, style: pw.TextStyle(
                            font: font,
                            fontSize: Fonts.fontSize32,
                          ))
                      )
                    ]
                ),
                pw.SizedBox(height: 20),
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children:[
                      pw.Container(
                          child: pw.Text("amount :             ", style: pw.TextStyle(
                              font: font,
                              fontSize: Fonts.fontSize20
                          ))
                      ),
                      pw.Container(
                          child: pw.Text(amount, style: pw.TextStyle(
                            font: font,
                            fontSize: Fonts.fontSize32,
                          ))
                      )
                    ]
                ),
                pw.SizedBox(height: 20),
              ],
            )
          );
        },
      ),
    );

    return pdf.save();
  }


  @override
  RestaurantOutletsPrintBillWidgetCubit createCubitAndAssignToController(
      BuildContext context) {
    RestaurantOutletsPrintBillWidgetCubit cubit =
        RestaurantOutletsPrintBillWidgetCubit(context: context);
    controller?.cubit = cubit;
    return cubit;
  }
}
