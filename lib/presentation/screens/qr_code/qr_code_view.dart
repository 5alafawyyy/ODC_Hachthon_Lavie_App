import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/qr_code_cubit/qr_code_cubit.dart';

class QRCodeView extends StatelessWidget {
  const QRCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('Barcode scan')),
        body: BlocBuilder<QrCodeCubit, QrCodeState>(builder: (context, state) {
      return Container(
          alignment: Alignment.center,
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<QrCodeCubit>(context).scanQR();
                    },
                    child: const Text('Start QR scan')),
                Text(
                  'Scan result : ${BlocProvider.of<QrCodeCubit>(context).scanBarcode}\n',
                  style: getApplicattionThemeData().textTheme.headline1,
                ),
              ]));
    }));
  }
}
