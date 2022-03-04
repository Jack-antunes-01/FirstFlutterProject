import 'package:bytebank/components/text_input.dart';
import 'package:bytebank/models/transference.dart';
import 'package:flutter/material.dart';

const _appBarTitle = "Criar Transferência";
const _labelAccountNumber = "Número da conta";
const _placeholderAccountNumber = "0000";
const _labelValue = "Valor";
const _placeholderValue = "0.00";
const _textConfirmButton = "Confirmar";

class TransferenceForm extends StatefulWidget {
  const TransferenceForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TransferenceFormState();
  }
}

class TransferenceFormState extends State<TransferenceForm> {
  final TextEditingController _controllerAccountNumber =
      TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  void _createTransference(BuildContext context) {
    final int? accountNumber = int.tryParse(_controllerAccountNumber.text);
    final double? value = double.tryParse(_controllerValue.text);

    if (accountNumber != null && value != null) {
      final transferenceCreated = Transference(value, accountNumber);
      Navigator.pop(context, transferenceCreated);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          _appBarTitle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextInput(
              controller: _controllerAccountNumber,
              placeholder: _placeholderAccountNumber,
              labelText: _labelAccountNumber,
            ),
            TextInput(
              controller: _controllerValue,
              placeholder: _placeholderValue,
              labelText: _labelValue,
              icon: Icons.monetization_on,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                child: const Text(_textConfirmButton),
                onPressed: () => _createTransference(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
