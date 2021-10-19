// import 'package:the_basics/models/RecentFile.dart';
// import 'package:data_table_2/data_table_2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import 'package:flutter/rendering.dart'; //added this for the DataTAble2

// import '../../../constants.dart';

// class RecentFiles extends StatelessWidget {
//   // const RecentFiles({
//   //   Key? key,
//   // }) : super(key: key);

//   const RecentFiles();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(defaultPadding),
//       decoration: BoxDecoration(
//         color: secondaryColor,
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Recent Files",
//             style: Theme.of(context).textTheme.subtitle1,
//           ),
//           SizedBox(
//             width: double.infinity,
//             child: DataTable2(
//               columnSpacing: defaultPadding,
//               minWidth: 600,
//               columns: [
//                 DataColumn(
//                   label: Text("File Name"),
//                 ),
//                 DataColumn(
//                   label: Text("Date"),
//                 ),
//                 DataColumn(
//                   label: Text("Size"),
//                 ),
//               ],
//               rows: List.generate(
//                 demoRecentFiles.length,
//                 (index) => recentFileDataRow(demoRecentFiles[index]),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// DataRow recentFileDataRow(RecentFile fileInfo) {
//   return DataRow(
//     cells: [
//       DataCell(
//         Row(
//           children: [
//             SvgPicture.asset(
//               fileInfo.icon,  //removed fileInfo.icon!
//               height: 30,
//               width: 30,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
//               child: Text(fileInfo.title), //removed fileInfo.title!
//             ),
//           ],
//         ),
//       ),
//       DataCell(Text(fileInfo.date)), //removed fileInfo.date!
//       DataCell(Text(fileInfo.size)), //removed fileInfo.size!
//     ],
//   );
// }
