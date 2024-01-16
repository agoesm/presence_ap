class AttendanceModel {
  String date;
  String startTime;
  String endTime;
  String status;

  AttendanceModel({
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.status,
  });
}

List<AttendanceModel> attendanceModel = <AttendanceModel>[
  AttendanceModel(
    date: '09 Jan 2024',
    startTime: '08:00',
    endTime: '--',
    status: 'OT',
  ),
  AttendanceModel(
    date: '08 Jan 2024',
    startTime: '08:00',
    endTime: '17:10',
    status: 'OT',
  ),
  AttendanceModel(
    date: '07 Jan 2024',
    startTime: '08:00',
    endTime: '17:10',
    status: 'OT',
  ),
  AttendanceModel(
    date: '06 Jan 2024',
    startTime: '08:00',
    endTime: '17:10',
    status: 'OT',
  ),
  AttendanceModel(
    date: '05 Jan 2024',
    startTime: '08:00',
    endTime: '17:10',
    status: 'OT',
  ),
  AttendanceModel(
    date: '04 Jan 2024',
    startTime: '08:00',
    endTime: '17:10',
    status: 'OT',
  ),
  AttendanceModel(
    date: '03 Jan 2024',
    startTime: '08:00',
    endTime: '17:10',
    status: 'OT',
  ),
  AttendanceModel(
    date: '02 Jan 2024',
    startTime: '08:00',
    endTime: '17:10',
    status: 'OT',
  ),
  AttendanceModel(
    date: '01 Jan 2024',
    startTime: '08:00',
    endTime: '17:10',
    status: 'OT',
  ),
];
