class Transference {
  final double value;
  final int accountNumber;

  Transference(
    this.value,
    this.accountNumber,
  );

  @override
  String toString() {
    return 'Transference { accountNumber: $accountNumber, value: $value }';
  }
}
