void main(){
  //https://juejin.im/post/5ce5db696fb9a07ed136acea
  print('hello dart');

  //变量声明用var 关键字，未初始化的变量初始值都为 null，数字也为 null

  var name = 'zhangsan';
  print(name);
  name = 'lisi';
  print('my name is $name');

  int i;
  print('i is $i');
  i = 1;
  print('i is $i again');

  // final  const
  // final 只能赋值 1次
  final String sex = '男';

  // const 定义常量
  const int ID_CODE = 1;
  const List<int> list = [1,2];
  print('list:$list');

  //Dart的基本数据类型包括Number、String、Boolean、List、Set、Map、 Symbol、Runes。
  //number 类型为两类
  // int 整数值不大于64位，具体取决于平台
  // double 双精度 浮点数
  int _int = 100;
  double _double = 100.0;
  print('_int = $_int');
  print('_double = $_double');
  //String 字符串 UTF-16编码字符串
  String _str1 = '字符串';
  String _str2 = '''www
  .
  baidu
  .
  com''';
  print('_str2：$_str2');

  // Boolean  bool  dart 是强bool类型检查
  bool isOk = true;
  print('isOk--1-:$isOk');
  String okStr = 'false';
  isOk = bool.fromEnvironment(okStr);
  print('isOK --- 2-:$isOk');
  //6.4 list
  var list1 = [1,2,3];
  print('list length:${list1.length}');

  //6.5 Set Set是一组无序的集合
  var set1 = ['张无忌','张三丰','赵敏'];
  // 创建空集合
  var set2 = <String>[];
  set2.add('1');
  print('set2:$set2');
  //6.6  键值对集合
  var map = {'张三':20,'李四':21,'王五':22};
  print(map);
  Map<String,String> map2 = Map();
  map2['数学'] = '90';
  map2['英语'] = '100';
  print(map2);

  print(map2['英语']); // 取值

  // 7 函数
  print(add(10, 20));
  //7.1可选参数 ,, k
}

// 返回值类型可省略，为了阅读最好不省略
int add(int a,int b) => a+b;

String go(String to,[String who]){

}