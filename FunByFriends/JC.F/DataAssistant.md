## 助理全栈数据工程师
### 全栈的定义
1. 在简单产品项目上，具备使用python语言独立将产品理念转化为产品价值的技术能力
2. 对于软件工程的生命周期的复杂性有初步认识，并能使用成熟方法和工具来控制复杂性
### 职能描述
#### 你的主要任务是把代码写对（Code Right）。
* 你最重要的角色是做一个合格的助理后端工程师。
* 你能够独立完成一个模块的开发和测试。
* 你能够向一个架构明确的项目中增补功能而不破坏现有代码或者降低整体代码质量；
* 你能够编写必要的单元测试、集成测试和网页自动化测试；
* 如果给你提供线上报错的堆栈，你能在合理的时间内找到bug所在并消灭之。
* 为此，你应该了解计算机科学的基础性知识，熟悉最基本的设计模式，并践行测试驱动的代码开发和重构。
* 此外，你对于python语言本身的特性有了初步了解。 
  * 你能理解python语法的灵活性对于软件工程的益处和害处。
  * 你知道python性能的障碍，并知道如何使用async或者并行的方法来解决性能问题。

#### 此外，你还需要兼具以下几个角色：
* （1） 一个合格的助理devops 能够维护一个Linux/unix的开发环境，进行利用既有平台工具实现单一应用服务的持续集成和持续部署（CI/CD）。
  * 为此，你应该掌握常见的shell脚本；
  * 掌握基于git的项目流程管理；
  * 熟练使用pipenv来维护软件虚拟环境；
  * 并使用docker及其关联的平台组件来构建CI/CD流程。
* （2）一个合格的助理前端开发，能够根据原型图实现网页开发。
  * 你能够渲染基础的网页组件；
  * 处理简单用户交互带来的前后端数据交互；
  * 你对于用户交互体验有基本的认知，能够察觉并优化易用性问题。
  * 为此，你应该熟悉H5和CSS的基本语法，了解MVC模式，并且了解用户界面设计的基本原则。
* （3）一个合格的初级数据科学家，
  * 能够对于一个应用场景明确、数据操作化定义明晰的业务问题进行描述统计、简单假设检验、分类与预测。
  * 你能够从不同来源的数据库中获得你想要的原始数据，通过数据清洗构建特征，并利用成熟数据模型和流程得到结论。
  * 为此，你应该了解基本的统计学知识，掌握OLS/logit模型，学会调用常见的机器学习模型，并且具备基本的业务分析（Business Intelligence）能力。

在大多数公司，这是四个人的job description。因此，你一年内需要学习的，可能相当于别人三四年的经验。这是对你天赋、毅力和时间管理能力的重要考验。
除了向书本和教程学习，你更需要向前辈和同僚学习：
能够在code review过程中接受他们的建设性意见，并且积极向他们提出有意思的问题。
最后，你需要“学会上班”。遵守公司/团队的组织纪律，学会高效利用上班时间，学会团队合作，并开始有自己职业规划。

#### 01.非技术要求
1. Google It
   * 定义：使用Google作为搜索引擎；（大部分情况下）使用stack overflow
   * 训练方法：将Google做为默认地址栏搜索工具将英语做为默认搜索语言
2. Ask Right Question [5]
   * 定义：你可以问一个愚蠢的问题，但是你不应该问一个没有思考过、没有探索过的问题训练方法：
   * [How to ask questions the smartest way By Eric Raymond and Rick Moen](https://www.osadl.org/Eric-Raymond-How-to-ask-questions-the-s.questions-the-smart-way.0.html?accessToken=eyJhbGciOiJIUzI1NiIsImtpZCI6ImRlZmF1bHQiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJhY2Nlc3NfcmVzb3VyY2UiLCJleHAiOjE2NDUwODA5MDUsImciOiI2YVJocG5ReXI4STk2UFBnIiwiaWF0IjoxNjQ1MDgwNjA1LCJ1c2VySWQiOi0xNzg0OTEyNzc4fQ.W9qA25ZVTo1QcFi8_kCDLRyXNXOtm-LMssW6N1SsCJE)
   * [How do I ask a good question by StackOverflow](https://stackoverflow.com/help/how-to-ask?accessToken=eyJhbGciOiJIUzI1NiIsImtpZCI6ImRlZmF1bHQiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJhY2Nlc3NfcmVzb3VyY2UiLCJleHAiOjE2NDUwODA5MDUsImciOiI2YVJocG5ReXI4STk2UFBnIiwiaWF0IjoxNjQ1MDgwNjA1LCJ1c2VySWQiOi0xNzg0OTEyNzc4fQ.W9qA25ZVTo1QcFi8_kCDLRyXNXOtm-LMssW6N1SsCJE)

3. Be A Team Player
   * 定义：
     * Trust, conflict, committment, accountability, results
     * Care personally, challenge directly
     * Radically Transparent
   * 训练方法：
     * 阅读 Five Dysfunctions of a Team by Patrick Lecioni
     * 阅读 Radical Candor By Kim Scott
     * 阅读 Principles By Ray Dalio
#### 2 基础知识 
1. IT/CS 基础知识 
   * 理解互联网协议：IP地址，端口，socket，TCP协议
   * 理解web工作方式：URL/DNS，HTTP协议，request种类，response结构，状态码
   * CPU管理：CPU, Core, 进程/线程/协程
   * [互联网协议入门 by 阮一峰](https://www.ruanyifeng.com/blog/2012/05/internet_protocol_suite_part_i.html)
   * [web工作方式 by Asta Xie](https://github.com/astaxie/build-web-application-with-golang/blob/master/zh/03.1.md)
   * [Intro to Threads and Processes in Python, by Breden Fortuner](https://medium.com/@bfortuner/python-multithreading-vs-multiprocessing-73072ce5600b)
2. 编程基础知识
   * 数据类型 string，int，floatlist，tuple, dictionary, namedtupledata abstraction
   * 控制 if, for, while, yield
   * 组件 function, higher order function(decorator) recursion object 
     * function oriented programming
     * object oriented programming2.2.4 
   * IO
     * txt, csv, json的读写
     * bytes
     * unicode
   * python包 
     * os(主要是path函数)
     * sys(主要是subprocess和命令行传参)
     * collections(这里面函数值得研究)
     * black
     * ipdb
     * datetime
   * [cs61a by UC Berkeley](https://cs61a.org/)
   * [Learn python the hard way by Zed Shaw](https://learnpythonthehardway.org/)
   * [A Hitchhiker’s guide to Python by realPython](http://docs.python-guide.org/en/latest/)

3. 统计学 
    * 事件/随机变量条件概率/独立事件/贝叶斯常见离散分布（Bernoulli，Binomial， Poisson）
    * 常见连续分布（Uniform，Normal，Beta）
    * 统计量(均值，方差，分位数)
    * [Think Stats(Chp.1,2,5,7) by Allen B Downey](https://www.oreilly.com/library/view/think-stats-2nd/9781491907344/)
#### 3. 技术要求
1. Server, Network, and Hosting Environment
   1. Shell
      1. yum/apt-get/brew isntall
      2. nohup文件通道符crontabgrep
      3. [The art of command line by jlevy](https://github.com/jlevy/the-art-of-command-line)
   2. GIT
      * git pull - commit - push
      * git checkout
      * git rebase
      * git merge / resolve conflict
      * git tag
      * [Git tutorial，着重学习workflow management](http://www.atlassian.com/git/tutorials)
      * https://www.coursera.org/learn/git-distributed-development#syllabus
   3. PIPENV
      * pipenv --py / --three/two / --rm
      * pipenv install (--dev) (--skip-lock)
      * pipenv install git+
      * pipenv shell
      * pipenv graph
      * 理解Pipfile和Pipfile.lock的作用
      * [pipenv 文档](https://github.com/pypa/pipenv)
      * 从0构建一个pipenv，分开安装生产/开发包，通过git在另一个服务器上复制该环境
   4. vim
      * 学使用vim，并配置以下插件
        * syntastic(或其他语法检查)
        * youcompleteme(或其他自动补全)
        * black
      * 能够自定义快捷键
      * https://vim-adventures.com
      * 在vim8(with python3 support)上配置vimrc来安装这些包，确保可以使用
2. Data Modeling
   1. 数据库
      * 理解SQL和NO SQL的概念和优劣
      * 理解 Key-Value Store的优势和局限
      * 理解ElasticSearch的基本原理
      * [Database by 付剑](https://github.com/jian-en/flask-training/tree/master/05-models)
   2. MySQL
      * create table的基本语法 
      * left /inner / right join 
      * group by 
      * order by
      * index
      * insert (overwrite)
      * load data in file
      * (transaction)update
      * [HackerRank SQL module](https://www.hackerrank.com/domains/sql)
      * [sqlalchemy tutorial](https://docs.sqlalchemy.org/en/14/orm/tutorial.html)
   3. Mongo
      * insert/delete/update/replace/find/unique
      * elemMatch
      * group_by / aggregate
      * [pymongo tutorial](https://docs.mongodb.com/drivers/pymongo/)
      * [mongoengine tutorial](http://docs.mongoengine.org/tutorial.html)
   4. ELK
      * Kafka的基本概念和用法
      * ElasticSearch基本语法
      * Kibana制作visualize dashboard
      * [python kafka tutorial](https://kafka-python.readthedocs.io/en/master/usage.html)
      * [python elasticsearch tutorial by Julie Qiu](https://us.pycon.org/2018/schedule/presentation/53/)
3. Business Logic
   1. Acceptance Test
      * behavior driven development
      * behave框架
      * [introduction to bdd by Dan North & Associates](https://dannorth.net/introducing-bdd/)
   2. Unit Test
      * 单元测试编写的基本原则
      * python unittest（特别是mock和monkey patch）
      * [A programming episode by Robert C. Martin, Micah Martin](https://www.oreilly.com/library/view/agile-principles-patterns/0131857258/ch06.html)
      * [python web tdd by Harry Parcival](http://www.obeythetestinggoat.com/pages/book.html)
   3. 测试自动化
      * 使用selenium进行web测试自动化训练方法
      * [python selenium tutorial](http://selenium-python.readthedocs.io/getting-started.html)

   4. 设计模式
      1. Single Responsibility
      2. Open Close Principle
      3. Liskov Substitution Principle
      4. Interface Segregation Principle
      5. Dependency Inversion Principle
      6. [Agile Principles, Patterns, and Practices in C# (Chp.8-12) By Robert C. Martin, Micah Martin](https://www.oreilly.com/library/view/agile-principles-patterns/0131857258/)
      7. [SOLID in Python by dboyliao](https://github.com/dboyliao/SOLID)
      8. 提交一个code refactor/design例子来证明你在工作中使用了这些原则（LSP可以不考核

   5. Refactor
      1. 了解基本的重构原则熟悉重构的一般步骤
      2. train your nose for the smell of the bad code
      3. [Refactoring by Martin Folwer](https://martinfowler.com/books/refactoring.html)
      4. [Clean Code：A Handbook of Agile Software Craftmanship By Robert C. Martin](https://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)

   6. 性能监控
      1. 使用python profiler和snakeviz对于代码进行性能监控
      2. 能够进行API压力测试
      3. [cProfile tutorial](https://julien.danjou.info/guide-to-python-profiling-cprofile-concrete-case-carbonara/)

4. Action Layer
   1. MVC
      * 理解模型层、展现层和控制层的功能及这种设计模式的优点
      * [Simple Example of MVC Design](https://www.codeproject.com/Articles/25057/Simple-Example-of-MVC-Model-View-Controller-Design)
   2. API
      * API设计flask api服务
      * [Effective API Design](https://www.infoq.com/presentations/effective-api-design/)
   3. 交互控件
      * 提供基本交互：按钮、下拉、alert、弹窗
      * [Forms by 付](https://github.com/jian-en/flask-training/tree/master/04-forms)
   4. Flask：
      * 能够用flask完成后端驱动的网页服务
      * [CURD application with Flask by Mbithe Nzomo](https://www.digitalocean.com/community/tutorials/build-a-crud-web-app-with-python-and-flask-part-one)
      * [Test a Flask App with Selenium Web Driver by Mbithe Nzomo](https://www.digitalocean.com/community/tutorials/test-a-flask-app-with-selenium-webdriver-part-1)
      * [Flask-bootstrap Tutorial](https://pythonhosted.org/Flask-Bootstrap/basic-usage.html)
   5. Asyncio
      * asyncio
      * aiohttp
      * motor
      * [Get to grips with asyncio in Python 3 by Robert Smallshire](https://www.youtube.com/watch?v=M-UcUs7IMIM)
      * [A Guide to Asynchronous Programming in Python with Asyncio by Roman Gaponov](https://www.freecodecamp.org/news/tag/python)
      * [http request parallel](https://skipperkongen.dk/2016/09/09/easy-parallel-http-requests-with-python-and-asyncio/)
      * [python-concurrency](https://realpython.com/python-concurrency/)

5. User Interface
   1. HTML5 & css
      * 元素：doc/ p / div / table / img/ hyperlink / iframe
      * 属性：height, width, color, align, position, etc
      * 事件：windows, form, keyboard, mouse, etc
      * 能够在flask-jinja-bootstrap的框架下实现简单的single page application
   2. 基础数据可视化工具
      * [Tufte 可视化原则](https://thedoublethink.com/tuftes-principles-for-visualizing-quantitative-information/)
      * 散点图
      * 条形图i
      * 线图
      * 概率直方图
      * boxplot
      * [Matplotlib Intro Tutorial](https://matplotlib.org/stable/tutorials/introductory/pyplot.html) 
      * [Matplotlib Tutorial](https://matplotlib.org/stable/tutorials/index.html)

6. User Experience 
   1. [定义尼尔森十大交互原则](https://www.nngroup.com/articles/ten-usability-heuristics/)
   2. [MVP](http://www.startuplessonslearned.com/2009/03/minimum-viable-product.html)