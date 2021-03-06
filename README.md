# springbootMath是<a href="https://github.com/XTF1182741213/weixinxiaochengxuMath">微信小程序数学测试Math</a>的后台


#数学题库存取显示方案及后台设置<br/>
一、	理论分析<br/>
1.设计基础——后台的实现 <br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;该小程序后台使用现在最新的后台架构spring+jpa+thymeleaf实现。通过使用该架构实现对数据库中的题目进行增删查改操作。每个功能，后台通过url与微信小程序结合使用。微信小程序通过传入必要的参数对后台数据库进行操作。<br/>
2. 设计背景<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;自微信小程序出现以来，热度一直增加，解决了用户需要安装app的麻烦。小组根据老师给予的用户需求设计一款关于数学测试的小程序，能实现给出若干随机题目，针对用户回答情况给出成绩、用时、错题与正确率。现阶段需要设计一种方法，解决题目从题库的存取与显示问题。经讨论，决定放弃使用文件存储的方法，改为使用数据库存储，通过url与微信小程序结合使用，微信小程序通过url得到必要的数据。<br/> 
3. 设计目的 <br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）．实现对数据库中的题目进行增删查改<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）. 学生登录后能够查询到上一次的成绩，并本次本次成绩。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）. 家长能够查询到自己孩子的成绩。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）. 老师能够查询自己所教学生的成绩。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）. 每次随机重数据库抽10到题。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）. 抽出的10道题目每次题目和选项随机打乱。<br/> 
4. 参考资料<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）.微信小程序官方文档<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）.《springbooot  javaEE的颠覆者》 作者:汪云飞<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）. 百度<br/> 
二、	后台总体设计<br/> 
1.题目存储方式<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小程序的题目以文本的方式存储在数据库中，而图片的存储方式则是将它放在服务器的硬盘里面，数据库中存储着图片的虚拟路径（url），可以根据虚拟路径找到服务器中的图片。<br/> 
2.功能<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（1）．实现对数据库中的题目进行增删查改<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（2）. 每次随机重数据库抽10到题。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（3）. 抽出的10道题目每次题目和选项随机打乱。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（4）. 学生登录后能够查询到上一次的成绩，并本次本次成绩。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（5）. 家长能够查询到自己孩子的成绩。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（6）. 老师能够查询自己所教学生的成绩。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;（7）. 学生注册时绑定家长<br/> 
二、	具体实现<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.处理大量的题目并上传到服务器：小程序的题目是在拿到word版本的题目之后，安排小组成员进行截图，然后通过自己搭配的<a href="https://www.tengfeistudio.cn">后台管理网站</a>上传题目和选项，上传到指定的规范的路径，然后小程序从数据库中获取题目和图片链接，再在界面中显示题目和答案出来。<br/> 
其中为了让题目能更清晰地显示在页面上，一般的截图工具直接向word截图的话，会发现图片非常模糊，所以最终显示效果非常差。后来我们放大word题目，使用电脑版微信进行截图，获得了高分辨率的题目跟答案，最终清晰地显示在页面上。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.数据库设计：数据库采用了MYSQL数据库，数据库先在自己的电脑下载安装包，通过远程传输软件传到服务器，然后在服务器电脑解压，并安装。服务器采用tomcat服务器，也是通过远程传输软件传输到服务器电脑安装，并开启服务器端口。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(1)answer（选项表），保存每道题目的选项内容或图片，通过questinid外键与question表关联起来。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2)question（题目表），保存每道题目的图片和内容。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(3)parent（家长表），保存家长数据。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(4)teacher（老师表），保存老师数据。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(5)student（学生表），保存学生数据及测试的分数和测试用时，并且通过parentid和teacherid与家长表parent及老师表teacher关联起来。<br/> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.小程序与服务器数据库连接：小程序与服务器数据库的连接是通过后台控制器提供的url进行链接，后台通过控制器提供小程序url，小程序使用url向后台传递参数，再通过参数结合数据库查询语句对数据库操作，然后返回json数据。控制器通过映射方法给小程序使用，各控制器映射方法如下图。<br/> 
![Image text](https://github.com/XTF1182741213/springbootMath/blob/master/%E6%95%B0%E5%AD%A6%E9%A2%98%E6%B5%8B%E8%AF%95%E5%B0%8F%E7%A8%8B%E5%BA%8F.png)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4．后台管理与服务器连接：后台增加题目是通过将题目截图，然后利用文件上传功能上传到服务器的硬盘，用springboot项目自带的tomcat把服务器的物理路径通过虚拟路径连接起来，然后将虚拟路径放到数据库。后台管理也是使用映射，只是映射的方式与映射到小程序的方式稍有不同，不过只改变映射方式即可和小程序使用同一数据库操作语句，无需再重新写操作语句。后台管理Html使用到的映射方法如下图，该映射不再是返回json数据，而是返回html文件所需的数据。<br/>
![Image text](https://github.com/XTF1182741213/springbootMath/blob/master/%E6%95%B0%E5%AD%A6%E6%B5%8B%E8%AF%95%E5%90%8E%E5%8F%B0%E7%AE%A1%E7%90%86.png)<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5.小程序向后台发送请求：通过以下代码实现其他页面所需方法也类似,其中getApp().globalData.domain为全局变量，这样做的好处是:如果更改服务器地址，只要在全局变量那改一个即可。<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6.本项目详细设计描述如下：<br/>
 
(1).配置文件<br/>
pom包配置<br/>
pom包里面添加jpa和thymeleaf的相关包引用<br/>
在application.properties中添加配置<br/>
其中propertiesspring.thymeleaf.cache=false是关闭thymeleaf的缓存，不然在开发过程中修改页面不会立刻生效需要重启，生产可配置为true。
在项目resources目录下会有两个文件夹：static目录用于放置网站的静态内容如css、js、图片；templates目录用于放置项目使用的页面模板。<br/>
(2).启动类<br/>
启动类需要添加Servlet的支持<br/>
(3).数据库层代码<br/>
实体类映射数据库表<br/>
继承JpaRepository类会自动实现很多内置的方法，包括增删改查。也可以根据方法名来自动生成相关sql，具体可以参考：springboot(五)：spring data jpa的使用<br/>
(4).业务层处理<br/>
service调用jpa实现相关的增删改查，实际项目中service层处理具体的业务代码。<br/>
Controller负责接收请求，处理完后将页面内容返回给前端。<br/>
(5).页面内容<br/>
QuestionList列表<br/>
三、	实验总结<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为了便于小程序的以后维护，我们这次采用现在最新的spring+jpa+thymeleaf后台架构，通过使用jpa大大节省了sql操作语句书写。通过一个数据库操作，2种映射方式，使得微信小程序和后台管理共用一个操作方法，这样不会出现延时的情况。任何一个软件都不可能一次全部完善的，由于我们采用的架构添加功能简单，后续想添加任何功能都是非常简单的。一个项目的完成离不开团队的团结合作，经过8周的奋斗总算完成了。


