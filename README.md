# springbootMath是<a href="https://github.com/XTF1182741213/weixinxiaochengxuMath">微信小程序数学测试的后台Math</a>


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
![Image text](http://)
