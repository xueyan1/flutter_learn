# Row
## 构造函数
``` 
 Row({
  Key key,
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  MainAxisSize mainAxisSize = MainAxisSize.max,
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  TextDirection textDirection,
  VerticalDirection verticalDirection = VerticalDirection.down,
  TextBaseline textBaseline,
  List<Widget> children = const <Widget>[],
}) : super(
  children: children,
  key: key,
  direction: Axis.horizontal,
  mainAxisAlignment: mainAxisAlignment,
  mainAxisSize: mainAxisSize,
  crossAxisAlignment: crossAxisAlignment,
  textDirection: textDirection,
  verticalDirection: verticalDirection,
  textBaseline: textBaseline,
);
```
### 创建一个水平方向排列的widget