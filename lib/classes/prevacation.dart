class Vacations {
  DateTime startDate;
  DateTime endDate;
  double total;
  bool isApproved;
  Vacations({this.startDate, this.endDate, this.total, this.isApproved});
}

List<Vacations> prevVacation = [
  Vacations(
    startDate: DateTime.now().add(Duration(days: -50)),
    endDate: DateTime.now().add(Duration(days: -45)),
    total: 5,
    isApproved: true,
  ),
  Vacations(
    startDate: DateTime.now().add(Duration(days: -23)),
    endDate: DateTime.now().add(Duration(days: -20)),
    total: 3,
    isApproved: false,
  ),
  Vacations(
    startDate: DateTime.now().add(Duration(days: -5)),
    endDate: DateTime.now().add(Duration(days: -3)),
    total: 2,
    isApproved: true,
  ),
  Vacations(
    startDate: DateTime.now().add(Duration(days: 8)),
    endDate: DateTime.now().add(Duration(days: 10)),
    total: 2,
    isApproved: false,
  ),
];
