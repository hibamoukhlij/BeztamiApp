
class Goal {
  String id;
  String name;
  String description;
  DateTime startDate;
  DateTime endDate;
  List<String> tags;

  Goal({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.tags,
  });

  @override
  String toString() {
    return 'Goal{id: $id, name: $name, description: $description, startDate: $startDate, endDate: $endDate, tags: $tags}';
  }}