## 本项目实现的最终作用是基于JSP高校教材平台网站管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 公告信息管理
 - 学生管理
 - 教师管理
 - 教材入库管理
 - 教材出库管理
 - 教材管理
 - 教材订购管理
 - 教材订购统计
 - 班级查询
 - 管理员登陆
 - 管理员管理
### 第2个角色为教师角色，实现了如下功能：
 - 公告信息查看
 - 教师角色登陆
 - 教师角色首页
 - 教材订购
 - 查看提交的教材订单
 - 查看教材详情
### 第3个角色为学生角色，实现了如下功能：
 - 修改个人资料
 - 公告信息查看
 - 学生角色登陆
 - 学生角色首页
 - 教材订购
 - 查看提交的教材订单
 - 查看教材详情
## 数据库设计如下：
# 数据库设计文档

**数据库名：** gxjiaocai_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [banjixinxi](#banjixinxi) |  |
| [dx](#dx) |  |
| [jiaocaichuku](#jiaocaichuku) |  |
| [jiaocaidinggou](#jiaocaidinggou) |  |
| [jiaocairuku](#jiaocairuku) |  |
| [jiaocaixinxi](#jiaocaixinxi) |  |
| [jiaoshixinxi](#jiaoshixinxi) |  |
| [liuyanban](#liuyanban) |  |
| [pinglun](#pinglun) |  |
| [shoucangjilu](#shoucangjilu) |  |
| [xinwentongzhi](#xinwentongzhi) |  |
| [xueshengxinxi](#xueshengxinxi) |  |
| [yonghuzhuce](#yonghuzhuce) |  |
| [youqinglianjie](#youqinglianjie) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="banjixinxi">banjixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | banjiming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | ruxueshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | suozaiyuanxi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | suozaizhuanye |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | renshu |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  7   | fudaoyuandianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="dx">dx</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  3   | content |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |

**表名：** <a id="jiaocaichuku">jiaocaichuku</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | chukubianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | shuhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | jiaocaimingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | zuozhe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 作者  |
|  6   | chubanshe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 出版社  |
|  7   | chukushuliang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | chukushijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | jingbanren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="jiaocaidinggou">jiaocaidinggou</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | dingdanhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | shuhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | caigouriqi |   timestamp   | 19 |   0    |    Y     |  N   |   NULL    |   |
|  5   | caigouzongshu |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | caigouren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | caigouzongjine |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | iszf |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | addtime |   timestamp   | 19 |   0    |    Y     |  N   |   NULL    | 添加时间  |

**表名：** <a id="jiaocairuku">jiaocairuku</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | rukubianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | shuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | jiaocaimingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | zuozhe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 作者  |
|  6   | chubanshe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 出版社  |
|  7   | rukushuliang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | rukushijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | jingbanren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="jiaocaixinxi">jiaocaixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | shuhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | jiaocaimingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | zuozhe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 作者  |
|  5   | chubanshe |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 出版社  |
|  6   | chubanbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | chubanriqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | danjia |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | fengmian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="jiaoshixinxi">jiaoshixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xuegonghao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | xibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | chushengriqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | lianxidianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 联系电话  |
|  9   | jiguan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="liuyanban">liuyanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | cheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  4   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  5   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  6   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  7   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  9   | huifuneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="pinglun">pinglun</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xinwenID |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pinglunneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | pinglunren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | pingfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="shoucangjilu">shoucangjilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | xwid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | ziduan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="xinwentongzhi">xinwentongzhi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  4   | neirong |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 添加人  |
|  6   | shouyetupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 首页图片  |
|  7   | dianjilv |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | zhaiyao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="xueshengxinxi">xueshengxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 学号  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | banji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  8   | chushengriqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  10   | lianxidianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 联系电话  |
|  11   | jiguan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yonghuzhuce">yonghuzhuce</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  6   | chushengnianyue |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  8   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  9   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  10   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | touxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 头像  |
|  12   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  14   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  15   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="youqinglianjie">youqinglianjie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | wangzhanmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | wangzhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | logo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
