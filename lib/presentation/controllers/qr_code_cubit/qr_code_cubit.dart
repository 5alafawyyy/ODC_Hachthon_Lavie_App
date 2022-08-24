import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'qr_code_state.dart';

class QrCodeCubit extends Cubit<QrCodeState> {
  QrCodeCubit() : super(QrCodeInitialState());

  String scanBarcode = 'Unknown';

  Future<void> scanQR() async {
    String barcodeScanRes;
    try {
      emit(QrCodeLoadingState());
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        '#1ABC00',
        'Cancel',
        true,
        ScanMode.QR,
      );
      emit(QrCodeSuccessState());

    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
      emit(QrCodeFailureState(barcodeScanRes));
    }

    scanBarcode = barcodeScanRes;
    print('===============================================');
    print(scanBarcode);
    print('===============================================');
  }
}
