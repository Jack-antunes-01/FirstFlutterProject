import 'package:bytebank/models/transference.dart';
import 'package:bytebank/screens/transference/form.dart';
import 'package:flutter/material.dart';

const _appBarTitle = "Transferências";

class TransferenceList extends StatefulWidget {
  TransferenceList({Key? key}) : super(key: key);

  final List<Transference> _transferenceList = <Transference>[];

  @override
  State<StatefulWidget> createState() {
    return TransferenceListState();
  }
}

class TransferenceListState extends State<TransferenceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_appBarTitle),
      ),
      body: ListView.builder(
        itemCount: widget._transferenceList.length,
        itemBuilder: (context, index) {
          final transference = widget._transferenceList[index];
          return TransferenceItem(transference);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const TransferenceForm();
          })).then((transference) => _update(transference));
        },
      ),
    );
  }

  void _update(Transference? transference) {
    if (transference != null) {
      setState(() => widget._transferenceList.add(transference));
    }
  }
}

class TransferenceItem extends StatelessWidget {
  final Transference _transference;

  const TransferenceItem(this._transference, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(_transference.value.toString()),
        subtitle: Text(_transference.accountNumber.toString()),
      ),
    );
  }
}
