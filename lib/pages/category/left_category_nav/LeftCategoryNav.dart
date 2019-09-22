import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../model/CategoryDataModel.dart';


// 左侧分类导航组件
class LeftCategoryNav extends StatefulWidget {
  List<CategoryDataModle> categoryModleList; //定义接收分类数据对象集合
  LeftCategoryNav({this.categoryModleList});
  _LeftCategoryNavState createState() => _LeftCategoryNavState(this.categoryModleList);
}

class _LeftCategoryNavState extends State<LeftCategoryNav> {
   List<CategoryDataModle> categoryModleList;
  _LeftCategoryNavState(this.categoryModleList);

  @override
  Widget build(BuildContext context) {
    return Container(
       width: ScreenUtil().setWidth(180),
       decoration: BoxDecoration(
         border: Border(right: BorderSide(width: 1, color: Colors.black12),),
       ),
       child: ListView.builder( //分类列表
         itemCount: categoryModleList.length,
         itemBuilder: (context, index){
           return _itemBox(index);
         },
       ),
    );
  }

  //每一项分类盒子
  Widget _itemBox(int index){
    return InkWell(
      onTap: (){},
      child: Container(
        height: ScreenUtil().setHeight(100),
        padding: EdgeInsets.only(left: 10, top: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12),),
        ),
        child: Text(this.categoryModleList[index].mallCategoryName), //分类名称
      ),
    );
  }

}