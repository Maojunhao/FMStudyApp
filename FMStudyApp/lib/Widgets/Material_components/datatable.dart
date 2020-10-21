import 'package:flutter/material.dart';

class FMDataTableVC extends StatefulWidget{
  @override
  FMDataTableState createState() => FMDataTableState();
}

class FMDataTableState extends State <FMDataTableVC> {
  List <DataRowModel> _datas = [];
  bool _sortAscending = false;

  @override
  void initState(){
    super.initState();

    initData();
  }

  void initData(){
    _datas.clear();

    _datas.add(DataRowModel("提莫", "射手", "6", "1888"));
    _datas.add(DataRowModel("盖伦", "战士", "8", "2300"));
    _datas.add(DataRowModel("剑圣", "刺客", "10", "2600"));
    _datas.add(DataRowModel("劫", "刺客", "18", "3333"));
    _datas.add(DataRowModel("慎", "坦克", "12", "2800"));
    _datas.add(DataRowModel("盲僧", "刺客", "16", "3000"));

    print("initData");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("DataTable"),),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: _dataTable(),
      ),
    );
  }
  
  DataTable _dataTable(){
    return DataTable(
      sortColumnIndex: 2, // 有排列箭头的列，仅仅是展示箭头
      sortAscending: _sortAscending, // 排列顺序，仅仅是箭头向上还是向下
      // 左上角全选按钮点击回调
      onSelectAll: (boolValue){
        print("onSelectAll");
      },
      dataRowHeight: 60, // Rows 中每条 Row 高度
      headingRowHeight: 100, // 顶部 Row 高度
      horizontalMargin: 20, // 左侧边距
      columnSpacing: 100, // 每一列间距
      showCheckboxColumn: true, // 是否展示左侧 checkbox，默认为 true，设置为 false，最左侧不展示 checkbox
      dividerThickness: 3, // 分割线宽度

      // 列数组 <DataColumn>
      columns: _dataColumns(),
      // 行数组 <DataRow>
      rows: _dataRows(),

    );
  }

  List <DataColumn> _dataColumns(){
    List <DataColumn> columns = [];
    columns.add(DataColumn(label: Text("名字")));
    columns.add(DataColumn(label: Text("类型")));
    columns.add(
        DataColumn(
          label: Text("等级"), // 文本
          tooltip: "这代表英雄的等级", // 长按提示
          numeric: false, // 是否居右，默认为 false
          // 点击排序箭头回调函数
          onSort: (index, ascend){
            print("index = $index, booValue = $ascend");

            if (ascend) {
              _datas.sort((a, b) => (int.parse(a.level)).compareTo(int.parse(b.level)));
            } else {
              _datas.sort((a, b) => (int.parse(b.level)).compareTo(int.parse(a.level)));
            }

            setState(() {
              _sortAscending = ascend;
            });
          },
        )
    );
    columns.add(DataColumn(label: Text("战力")));
    return columns;
  }

  List <DataRow> _dataRows(){
    List <DataRow> rows = [];
    _datas.forEach((row) {
      rows.add(DataRow(
        cells: [
          DataCell(Text("${row.name}")),
          DataCell(Text("${row.type}")),
          DataCell(Text("${row.level}")),
          DataCell(
            // 子控件
            Text("${row.zhanli}"),
            // TextField(
            //   controller: TextEditingController(
            //     text: "${row.zhanli}"
            //   ),
            // ),
            // 点击事件
            onTap: (){
              print("DataCell.onTap");
            },
            placeholder: true, // 是否是 placeholder，默认为 false，设置为 true 时 Text 会变成灰色 placeholder
            showEditIcon: true, // 是否展示编辑图标
          ),
        ],
        // 左侧 checkbox 点击事件
        onSelectChanged: (changed){
          row.onSelected = changed;
          setState(() {

          });
        },
        // 左侧 checkbox 是否选中
        selected: row.onSelected,
        // DataRow 颜色回调函数
        color: MaterialStateProperty.resolveWith((states){
          if(states.contains(MaterialState.selected)){
            return Colors.red.shade100;
          }
          return Colors.grey.shade100;
        }),
      ));
    });
    return rows;
  }
}

class DataRowModel {
  String name;
  String type;
  String zhanli;
  String level;
  bool onSelected = false;

  DataRowModel(this.name, this.type, this.level, this.zhanli);
}