import 'package:flutter/material.dart';
import '../models/tile.dart';
import '../models/tiles.dart';
import '../models/products.dart';

class Floor2 extends StatefulWidget {
  final int title;
  final List<product> ind;
  const Floor2({Key? key,required this.title, required this.ind}) : super(key: key);

  @override
  State<Floor2> createState() => _Floor2State();
}

class _Floor2State extends State<Floor2> {
  late List<product> products= widget.ind;
  void _onNavigation() {
    int index;
    setState(() {
      for(int i=0;i<products.length;i++)
      {
        print("this is working");
        index= products[i].position;
        tiles[index]=Tile(color:Colors.black,id: index,);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title.toString()),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Row(
              children: [
                tiles[0],
                tiles[1],
                tiles[2],
                tiles[3],
                tiles[4],
                tiles[5],
                tiles[6],
                tiles[7],
                tiles[8],
                tiles[9],
                tiles[10],
                tiles[11],
              ],
            ),
            Row(
              children: [
                tiles[12],
                tiles[13],
                tiles[14],
                tiles[15],
                tiles[16],
                tiles[17],
                tiles[18],
                tiles[19],
                tiles[20],
                tiles[21],
                tiles[22],
                tiles[23],
              ],
            ),
            Row(
              children: [
                tiles[24],
                tiles[25],
                tiles[26],
                tiles[27],
                tiles[28],
                tiles[29],
                tiles[30],
                tiles[31],
                tiles[32],
                tiles[33],
                tiles[34],
                tiles[35],
              ],
            ),
            Row(
              children: [
                tiles[36],
                tiles[37],
                tiles[38],
                tiles[39],
                tiles[40],
                tiles[41],
                tiles[42],
                tiles[43],
                tiles[44],
                tiles[45],
                tiles[46],
                tiles[47],
              ],
            ),
            Row(
              children: [
                tiles[48],
                tiles[49],
                tiles[50],
                tiles[51],
                tiles[52],
                tiles[53],
                tiles[54],
                tiles[55],
                tiles[56],
                tiles[57],
                tiles[58],
                tiles[59],
              ],
            ),
            Row(
              children: [
                tiles[60],
                tiles[61],
                tiles[62],
                tiles[63],
                tiles[64],
                tiles[65],
                tiles[66],
                tiles[67],
                tiles[68],
                tiles[69],
                tiles[70],
                tiles[71],
              ],
            ),
            Row(
              children: [
                tiles[72],
                tiles[73],
                tiles[74],
                tiles[75],
                tiles[76],
                tiles[77],
                tiles[78],
                tiles[79],
                tiles[80],
                tiles[81],
                tiles[82],
                tiles[83],
              ],
            ),
            Row(
              children: [
                tiles[84],
                tiles[85],
                tiles[86],
                tiles[87],
                tiles[88],
                tiles[89],
                tiles[90],
                tiles[91],
                tiles[92],
                tiles[93],
                tiles[94],
                tiles[95],
              ],
            ),
            Row(
              children: [
                tiles[96],
                tiles[97],
                tiles[98],
                tiles[99],
                tiles[100],
                tiles[101],
                tiles[102],
                tiles[103],
                tiles[104],
                tiles[105],
                tiles[106],
                tiles[107],
              ],
            ),
            Row(
              children: [
                tiles[108],
                tiles[109],
                tiles[110],
                tiles[111],
                tiles[112],
                tiles[113],
                tiles[114],
                tiles[115],
                tiles[116],
                tiles[117],
                tiles[118],
                tiles[119],
              ],
            ),
            Row(
              children: [
                tiles[120],
                tiles[121],
                tiles[122],
                tiles[123],
                tiles[124],
                tiles[125],
                tiles[126],
                tiles[127],
                tiles[128],
                tiles[129],
                tiles[130],
                tiles[131],
              ],
            ),
            Row(
              children: [
                tiles[132],
                tiles[133],
                tiles[134],
                tiles[135],
                tiles[136],
                tiles[137],
                tiles[138],
                tiles[139],
                tiles[140],
                tiles[141],
                tiles[142],
                tiles[143],
              ],
            ),
            Row(
              children: [
                tiles[144],
                tiles[145],
                tiles[146],
                tiles[147],
                tiles[148],
                tiles[149],
                tiles[150],
                tiles[151],
                tiles[152],
                tiles[153],
                tiles[154],
                tiles[155],
              ],
            ),
            Row(
              children: [
                tiles[156],
                tiles[157],
                tiles[158],
                tiles[159],
                tiles[160],
                tiles[161],
                tiles[162],
                tiles[163],
                tiles[164],
                tiles[165],
                tiles[166],
                tiles[167],
              ],
            ),
            Row(
              children: [
                tiles[168],
                tiles[169],
                tiles[170],
                tiles[171],
                tiles[172],
                tiles[173],
                tiles[174],
                tiles[175],
                tiles[176],
                tiles[177],
                tiles[178],
                tiles[179],
              ],
            ),
            Row(
              children: [
                tiles[180],
                tiles[181],
                tiles[182],
                tiles[183],
                tiles[184],
                tiles[185],
                tiles[186],
                tiles[187],
                tiles[188],
                tiles[189],
                tiles[190],
                tiles[191],
              ],
            ),
            Row(
              children: [
                tiles[192],
                tiles[193],
                tiles[194],
                tiles[195],
                tiles[196],
                tiles[197],
                tiles[198],
                tiles[199],
                tiles[200],
                tiles[201],
                tiles[202],
                tiles[203],
              ],
            ),
            Row(
              children: [
                tiles[204],
                tiles[205],
                tiles[206],
                tiles[207],
                tiles[208],
                tiles[209],
                tiles[210],
                tiles[211],
                tiles[212],
                tiles[213],
                tiles[214],
                tiles[215],
              ],
            ),
            Row(
              children: [
                tiles[216],
                tiles[217],
                tiles[218],
                tiles[219],
                tiles[220],
                tiles[221],
                tiles[222],
                tiles[223],
                tiles[224],
                tiles[225],
                tiles[226],
                tiles[227],
              ],
            ),
            Row(
              children: [
                tiles[228],
                tiles[229],
                tiles[230],
                tiles[231],
                tiles[232],
                tiles[233],
                tiles[234],
                tiles[235],
                tiles[236],
                tiles[237],
                tiles[238],
                tiles[239],
              ],
            ),
            Row(
              children: [
                tiles[240],
                tiles[241],
                tiles[242],
                tiles[243],
                tiles[244],
                tiles[245],
                tiles[246],
                tiles[247],
                tiles[248],
                tiles[249],
                tiles[250],
                tiles[251],
              ],
            ),
            Row(
              children: [
                tiles[252],
                tiles[253],
                tiles[254],
                tiles[255],
                tiles[256],
                tiles[257],
                tiles[258],
                tiles[259],
                tiles[260],
                tiles[261],
                tiles[262],
                tiles[263],
              ],
            ),
            Row(
              children: [
                tiles[264],
                tiles[265],
                tiles[266],
                tiles[267],
                tiles[268],
                tiles[269],
                tiles[270],
                tiles[271],
                tiles[272],
                tiles[273],
                tiles[274],
                tiles[275],
              ],
            ),
          ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onNavigation,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
