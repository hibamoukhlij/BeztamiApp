class PaymentSchedule {
  final String id;
  final String name;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final double amount;
  final String frequency; // e.g., "monthly", "weekly", "yearly"
  final String status; // e.g., "active", "completed", "cancelled"

  PaymentSchedule({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.amount,
    required this.frequency,
    required this.status,
  });

  @override
  String toString() {
    return 'PaymentSchedule(id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, amount: $amount, frequency: $frequency, status: $status)';
  }
}