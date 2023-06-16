import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PatientDashboardPage extends StatefulWidget {
  const PatientDashboardPage({Key? key}) : super(key: key);

  @override
  State<PatientDashboardPage> createState() => _PatientDashboardPageState();
}

class _PatientDashboardPageState extends State<PatientDashboardPage> {
  late List<Data> _chartData;
  late TooltipBehavior _tooltipBehavior;
  late ZoomPanBehavior _zoomPanBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    _zoomPanBehavior = ZoomPanBehavior(
        enablePinching: true,
        enableDoubleTapZooming: true,
        enableSelectionZooming: true,
        selectionRectBorderColor: Colors.red,
        selectionRectBorderWidth: 2,
        selectionRectColor: Colors.grey,
        enablePanning: true,
        zoomMode: ZoomMode.x,
        enableMouseWheelZooming: true,
        maximumZoomLevel: 0.7);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          title: const Text('Dashboard'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Color(0xFF7B7B7B)),
            onPressed: (){Navigator.pop(context);},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){},
            )
          ],
          backgroundColor: Color(0xFFF9F9F9),
          foregroundColor: Color(0xFF7B7B7B),
          scrolledUnderElevation: 0.0,
        ),
      ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(20.0),
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Align(      
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              color: Color(0xFF7B7B7B),
                              fontFamily: 'ProximaNova'
                            ),
                            children: <TextSpan>[
                              TextSpan(text: "Sessions", style: TextStyle(color: Color(0xFFFF0000), fontWeight: FontWeight.w600, fontSize: 25,)),
                              TextSpan(text: "\n\n", style: TextStyle(fontSize:5)),
                              TextSpan(text: "12",  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600)),
                            ]
                          )
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.all(20.0),
                      height: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Align(      
                        alignment: Alignment.center,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              color: Color(0xFF7B7B7B),
                              fontFamily: 'ProximaNova'
                            ),
                            children: <TextSpan>[
                              TextSpan(text: "Sessions", style: TextStyle(color: Color(0xFFFF0000), fontWeight: FontWeight.w600, fontSize: 25,)),
                              TextSpan(text: "\n\n", style: TextStyle(fontSize:5)),
                              TextSpan(text: "12",  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600)),
                            ]
                          )
                        ),
                      ),
                    ),
                  ),
                ]
              ),
              const Divider(
                thickness: 0.5,
                color: Color(0xFF7B7B7B),
                indent: 0.0,
                endIndent: 0.0,
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: SfCartesianChart(
                  title: ChartTitle(text: 'Heart Rate (BPM)'),
                  legend: Legend(isVisible: false),
                  // margin: EdgeInsets.all(15),
                  // backgroundColor: Colors.blue,
                  plotAreaBorderColor: Color((0xFF56AEFF)),
                  plotAreaBackgroundColor: Colors.white,
                  tooltipBehavior: _tooltipBehavior,
                  zoomPanBehavior: _zoomPanBehavior,
                  series: <ChartSeries>[
                    LineSeries<Data, DateTime>(
                      dataSource: _chartData,
                      xValueMapper: (Data data, _) => data.date,
                      yValueMapper: (Data data, _) => data.value,
                      markerSettings: MarkerSettings(isVisible: true),
                      dataLabelSettings: DataLabelSettings(isVisible: true, textStyle: TextStyle(color: Color(0xFF7B7B7B), fontSize: 12, fontFamily: 'OpenSans', fontWeight: FontWeight.w600)),
                      enableTooltip: true,
                      color: Color(0xFF56AEFF)
                    )
                  ],
                  primaryXAxis: DateTimeAxis(
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    rangePadding: ChartRangePadding.round,
                    majorGridLines: MajorGridLines(width:0),
                  ),
                  primaryYAxis: NumericAxis(
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    visibleMinimum: 60,
                    visibleMaximum: 110,
                    majorGridLines: MajorGridLines(width:0)
                  )
                )
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: SfCartesianChart(
                  title: ChartTitle(text: 'Oxygen (%)'),
                  legend: Legend(isVisible: false),
                  // margin: EdgeInsets.all(15),
                  // backgroundColor: Colors.blue,
                  plotAreaBorderColor: Color((0xFF56AEFF)),
                  plotAreaBackgroundColor: Colors.white,
                  tooltipBehavior: _tooltipBehavior,
                  zoomPanBehavior: _zoomPanBehavior,
                  series: <ChartSeries>[
                    LineSeries<Data, DateTime>(
                      dataSource: _chartData,
                      xValueMapper: (Data data, _) => data.date,
                      yValueMapper: (Data data, _) => data.value,
                      markerSettings: MarkerSettings(isVisible: true),
                      dataLabelSettings: DataLabelSettings(isVisible: true, textStyle: TextStyle(color: Color(0xFF7B7B7B), fontSize: 12, fontFamily: 'OpenSans', fontWeight: FontWeight.w600)),
                      enableTooltip: true,
                      color: Color(0xFF56AEFF)
                    )
                  ],
                  primaryXAxis: DateTimeAxis(
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    rangePadding: ChartRangePadding.round,
                    majorGridLines: MajorGridLines(width:0),
                  ),
                  primaryYAxis: NumericAxis(
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    visibleMinimum: 60,
                    visibleMaximum: 110,
                    majorGridLines: MajorGridLines(width:0)
                  )
                )
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: SfCartesianChart(
                  title: ChartTitle(text: 'Blood PRessure (MMHG)'),
                  legend: Legend(isVisible: false),
                  // margin: EdgeInsets.all(15),
                  // backgroundColor: Colors.blue,
                  plotAreaBorderColor: Color((0xFF56AEFF)),
                  plotAreaBackgroundColor: Colors.white,
                  tooltipBehavior: _tooltipBehavior,
                  zoomPanBehavior: _zoomPanBehavior,
                  series: <ChartSeries>[
                    LineSeries<Data, DateTime>(
                      dataSource: _chartData,
                      xValueMapper: (Data data, _) => data.date,
                      yValueMapper: (Data data, _) => data.value,
                      markerSettings: MarkerSettings(isVisible: true),
                      dataLabelSettings: DataLabelSettings(isVisible: true, textStyle: TextStyle(color: Color(0xFF7B7B7B), fontSize: 12, fontFamily: 'OpenSans', fontWeight: FontWeight.w600)),
                      enableTooltip: true,
                      color: Color(0xFF56AEFF)
                    )
                  ],
                  primaryXAxis: DateTimeAxis(
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    rangePadding: ChartRangePadding.round,
                    majorGridLines: MajorGridLines(width:0),
                  ),
                  primaryYAxis: NumericAxis(
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    visibleMinimum: 60,
                    visibleMaximum: 110,
                    majorGridLines: MajorGridLines(width:0)
                  )
                )
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: SfCartesianChart(
                  title: ChartTitle(text: 'Cadence (RPM)'),
                  legend: Legend(isVisible: false),
                  // margin: EdgeInsets.all(15),
                  // backgroundColor: Colors.blue,
                  plotAreaBorderColor: Color((0xFF56AEFF)),
                  plotAreaBackgroundColor: Colors.white,
                  tooltipBehavior: _tooltipBehavior,
                  zoomPanBehavior: _zoomPanBehavior,
                  series: <ChartSeries>[
                    LineSeries<Data, DateTime>(
                      dataSource: _chartData,
                      xValueMapper: (Data data, _) => data.date,
                      yValueMapper: (Data data, _) => data.value,
                      markerSettings: MarkerSettings(isVisible: true),
                      dataLabelSettings: DataLabelSettings(isVisible: true, textStyle: TextStyle(color: Color(0xFF7B7B7B), fontSize: 12, fontFamily: 'OpenSans', fontWeight: FontWeight.w600)),
                      enableTooltip: true,
                      color: Color(0xFF56AEFF)
                    )
                  ],
                  primaryXAxis: DateTimeAxis(
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    rangePadding: ChartRangePadding.round,
                    majorGridLines: MajorGridLines(width:0),
                  ),
                  primaryYAxis: NumericAxis(
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    visibleMinimum: 60,
                    visibleMaximum: 110,
                    majorGridLines: MajorGridLines(width:0)
                  )
                )
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 250,
                child: SfCartesianChart(
                  title: ChartTitle(text: 'Resistance (units)'),
                  legend: Legend(isVisible: false),
                  // margin: EdgeInsets.all(15),
                  // backgroundColor: Colors.blue,
                  plotAreaBorderColor: Color((0xFF56AEFF)),
                  plotAreaBackgroundColor: Colors.white,
                  tooltipBehavior: _tooltipBehavior,
                  zoomPanBehavior: _zoomPanBehavior,
                  series: <ChartSeries>[
                    LineSeries<Data, DateTime>(
                      dataSource: _chartData,
                      xValueMapper: (Data data, _) => data.date,
                      yValueMapper: (Data data, _) => data.value,
                      markerSettings: MarkerSettings(isVisible: true),
                      dataLabelSettings: DataLabelSettings(isVisible: true, textStyle: TextStyle(color: Color(0xFF7B7B7B), fontSize: 12, fontFamily: 'OpenSans', fontWeight: FontWeight.w600)),
                      enableTooltip: true,
                      color: Color(0xFF56AEFF)
                    )
                  ],
                  primaryXAxis: DateTimeAxis(
                    edgeLabelPlacement: EdgeLabelPlacement.shift,
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    rangePadding: ChartRangePadding.round,
                    majorGridLines: MajorGridLines(width:0),
                  ),
                  primaryYAxis: NumericAxis(
                    interactiveTooltip: InteractiveTooltip(enable: false),
                    visibleMinimum: 60,
                    visibleMaximum: 110,
                    majorGridLines: MajorGridLines(width:0)
                  )
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Data> getChartData() {
    final List<Data> chartData = [
      Data(date:DateTime(2023, 3, 10), value:88),
      Data(date:DateTime(2023, 3, 15), value:97),
      Data(date:DateTime(2023, 3, 23), value:92),
      Data(date:DateTime(2023, 3, 27), value:78),
      Data(date:DateTime(2023, 4, 3), value:85),
      Data(date:DateTime(2023, 4, 10), value:90)
    ];
    return chartData;
  }
}

class Data{
  final DateTime date;
  double value;
  Data({required this.date,required this.value});
}