class RequestVacation {
  String empName;
  String jop;
  DateTime startDate;
  DateTime endDate;
  int total;
  bool isApproved = true;
  RequestVacation({
    this.empName,
    this.jop,
    this.startDate,
    this.endDate,
    this.total,
    this.isApproved,
  });
}

List<RequestVacation> reqVacation = [
  RequestVacation(
    empName: 'Mohamed Ibrahem',
    jop: 'oracle Developer',
    startDate: DateTime.now().add(Duration(days: 8)),
    endDate: DateTime.now().add(Duration(days: 10)),
    total: 2,
  ),
  RequestVacation(
    empName: 'Mohamed Ahmed',
    jop: 'Java Developer',
    startDate: DateTime.now().add(Duration(days: 2)),
    endDate: DateTime.now().add(Duration(days: 7)),
    total: 5,
  ),
  RequestVacation(
    empName: 'Adam Mohamed',
    jop: 'Android Developer',
    startDate: DateTime.now().add(Duration(days: 15)),
    endDate: DateTime.now().add(Duration(days: 16)),
    total: 1,
  ),
  RequestVacation(
    empName: 'Fareda Ahmed',
    jop: 'HR',
    startDate: DateTime.now().add(Duration(days: 20)),
    endDate: DateTime.now().add(Duration(days: 30)),
    total: 10,
  ),
];
