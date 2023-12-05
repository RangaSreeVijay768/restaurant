import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../../core/blocs/base_cubit.dart';
import '../../../themes/fonts.dart';

part 'restaurant_outlets_print_bill_widget_state.dart';

part 'restaurant_outlets_print_bill_widget_cubit.freezed.dart';

class RestaurantOutletsPrintBillWidgetCubit
    extends BaseCubit<RestaurantOutletsPrintBillWidgetState> {
  RestaurantOutletsPrintBillWidgetCubit({required super.context})
      : super(initialState: RestaurantOutletsPrintBillWidgetState.initial());


  Future<Uint8List> generatePdf(PdfPageFormat format, String title) async {
    final pdf = pw.Document(version: PdfVersion.pdf_1_5, compress: true);
    final font = await PdfGoogleFonts.nunitoExtraLight();

    pdf.addPage(
      pw.Page(
        pageFormat: format,
        build: (context) {
          return pw.Column(
            children: [
              pw.Container(
                  child: pw.Text(title, style: pw.TextStyle(
                    font: font,
                    fontSize: Fonts.fontSize24,
                  ))
              ),
              pw.SizedBox(height: 20),
              pw.Flexible(child: pw.FlutterLogo(fit: pw.BoxFit.cover))
            ],
          );
        },
      ),
    );

    return pdf.save();
  }

}
