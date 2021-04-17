create table article
(
    t_id       int auto_increment,
    t_video    varchar(200)  null,
    t_fid      int           null,
    t_fname    varchar(60)   null,
    t_cid      int           null,
    t_cname    varchar(60)   null,
    t_data     text          null,
    t_view     int default 0 not null,
    t_abstract text          null,
    constraint article_t_id_uindex
        unique (t_id)
);

alter table article
    add primary key (t_id);

INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (0, null, null, null, null, null, null, 1, null);
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (1, null, 1, 'HTML教程', 1, null, '测试内容', 3, null);
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (2, null, 1, 'HTML教程', 3, null, null, 2, null);
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (3, null, 2, 'Python教程', 2, null, null, 1, null);
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (4, null, 2, 'Python教程', 1, null, null, 2, null);
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (5, null, 3, 'MySQL教程', 1, 'MySQL 教程', '# MySQL 教程

<img width="100" height="74" src="/images/9c5568e7db804300b61b55d5ecbb41c7.jpg"/>

MySQL 是最流行的关系型数据库管理系统，在 WEB 应用方面 MySQL 是最好的 RDBMS(Relational Database Management System：关系数据库管理系统)应用软件之一。

在本教程中，会让大家快速掌握 MySQL 的基本知识，并轻松使用 MySQL 数据库。

* * *

## 什么是数据库？

数据库（Database）是按照数据结构来组织、存储和管理数据的仓库。

每个数据库都有一个或多个不同的 API 用于创建，访问，管理，搜索和复制所保存的数据。

我们也可以将数据存储在文件中，但是在文件中读写数据速度相对较慢。

所以，现在我们使用关系型数据库管理系统（RDBMS）来存储和管理大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。

RDBMS 即关系数据库管理系统(Relational Database Management System)的特点：

- 1.数据以表格的形式出现
- 2.每行为各种记录名称
- 3.每列为记录名称所对应的数据域
- 4.许多的行和列组成一张表单
- 5.若干的表单组成database

* * *

## RDBMS 术语

在我们开始学习MySQL 数据库前，让我们先了解下RDBMS的一些术语：

- **数据库:** 数据库是一些关联表的集合。
- **数据表:** 表是数据的矩阵。在一个数据库中的表看起来像一个简单的电子表格。
- **列:** 一列(数据元素) 包含了相同类型的数据, 例如邮政编码的数据。
- **行：**一行（=元组，或记录）是一组相关的数据，例如一条用户订阅的数据。
- **冗余**：存储两倍数据，冗余降低了性能，但提高了数据的安全性。
- **主键**：主键是唯一的。一个数据表中只能包含一个主键。你可以使用主键来查询数据。
- **外键：**外键用于关联两个表。
- **复合键**：复合键（组合键）将多个列作为一个索引键，一般用于复合索引。
- **索引：**使用索引可快速访问数据库表中的特定信息。索引是对数据库表中一列或多列的值进行排序的一种结构。类似于书籍的目录。
- **参照完整性:** 参照的完整性要求关系中不允许引用不存在的实体。与实体完整性是关系模型必须满足的完整性约束条件，目的是保证数据的一致性。

MySQL 为关系型数据库(Relational Database Management System), 这种所谓的"关系型"可以理解为"表格"的概念, 一个关系型数据库由一个或数个表格组成, 如图所示的一个表格:

<img width="835" height="358" src="/images/4b8e41c7739f44249a135d5546fb2825.jpg"/>

- 表头(header): 每一列的名称;
- 列(col): 具有相同数据类型的数据的集合;
- 行(row): 每一行用来描述某条记录的具体信息;
- 值(value): 行的具体信息, 每个值必须与该列的数据类型相同;
- **键(key)**: 键的值在当前列中具有唯一性。

* * *

## MySQL数据库

MySQL 是一个关系型数据库管理系统，由瑞典 MySQL AB 公司开发，目前属于 Oracle 公司。MySQL 是一种关联数据库管理系统，关联数据库将数据保存在不同的表中，而不是将所有数据放在一个大仓库内，这样就增加了速度并提高了灵活性。

- MySQL 是开源的，目前隶属于 Oracle 旗下产品。
- MySQL 支持大型的数据库。可以处理拥有上千万条记录的大型数据库。
- MySQL 使用标准的 SQL 数据语言形式。
- MySQL 可以运行于多个系统上，并且支持多种语言。这些编程语言包括 C、C++、Python、Java、Perl、PHP、Eiffel、Ruby 和 Tcl 等。
- MySQL 对PHP有很好的支持，PHP 是目前最流行的 Web 开发语言。
- MySQL 支持大型数据库，支持 5000 万条记录的数据仓库，32 位系统表文件最大可支持 4GB，64 位系统支持最大的表文件为8TB。
- MySQL 是可以定制的，采用了 GPL 协议，你可以修改源码来开发自己的 MySQL 系统。

* * *

## 在开始学习本教程前你应该了解？

在开始学习本教程前你应该了解 PHP 和 HTML 的基础知识，并能简单的应用。

本教程的很多例子都跟 PHP 语言有关，我们的实例基本上是采用 PHP 语言来演示。

如果你还不了解 PHP，你可以通过本站的 [PHP教程](https://www.runoob.com/php/php-tutorial.html "PHP 教程")来了解该语言。
', 387, 'MySQL 是最流行的关系型数据库管理系统，在 WEB 应用方面 MySQL 是最好的 RDBMS(Relational Database Management System：关系数据库管理系统)应用软件之一。
在本教程中，会让大家快速掌握 MySQL 的基本知识，并轻松使用 MySQL 数据库。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (6, null, 1, 'HTML教程', 2, null, null, 2, null);
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (7, null, 4, 'Maven教程', 1, 'Maven 教程', '# Maven 教程

![](/images/dbbf0001edc5408cafcb589b968a60ad.png)

Maven 翻译为"专家"、"内行"，是 Apache 下的一个纯 Java 开发的开源项目。基于项目对象模型（缩写：POM）概念，Maven利用一个中央信息片断能管理一个项目的构建、报告和文档等步骤。

Maven 是一个项目管理工具，可以对 Java 项目进行构建、依赖管理。

Maven 也可被用于构建和管理各种项目，例如 C#，Ruby，Scala 和其他语言编写的项目。Maven 曾是 Jakarta 项目的子项目，现为由 Apache 软件基金会主持的独立 Apache 项目。

* * *

## 阅读本教程前，您需要了解的知识

本教程主要针对初学者，帮助他们学习 Maven 工具的基本功能。完成本教程的学习后你的 Apache Maven 的专业知识将达到中等水平，随后你可以学习更高级的知识了。

阅读本教程，您需要有以下基础：[Java 基础](https://www.runoob.com/java/java-tutorial.html)。

* * *

## Maven 功能

Maven 能够帮助开发者完成以下工作：

- 构建
- 文档生成
- 报告
- 依赖
- SCMs
- 发布
- 分发
- 邮件列表

* * *

## 约定配置

Maven 提倡使用一个共同的标准目录结构，Maven 使用约定优于配置的原则，大家尽可能的遵守这样的目录结构。如下所示：

| 目录  | 目的  |
| --- | --- |
| ${basedir} | 存放pom.xml和所有的子目录 |
| ${basedir}/src/main/java | 项目的java源代码 |
| ${basedir}/src/main/resources | 项目的资源，比如说property文件，springmvc.xml |
| ${basedir}/src/test/java | 项目的测试类，比如说Junit代码 |
| ${basedir}/src/test/resources | 测试用的资源 |
| ${basedir}/src/main/webapp/WEB-INF | web应用文件目录，web项目的信息，比如存放web.xml、本地图片、jsp视图页面 |
| ${basedir}/target | 打包输出目录 |
| ${basedir}/target/classes | 编译输出目录 |
| ${basedir}/target/test-classes | 测试编译输出目录 |
| Test.java | Maven只会自动运行符合该命名规则的测试类 |
| ~/.m2/repository | Maven默认的本地仓库目录位置 |

* * *

## Maven 特点

- 项目设置遵循统一的规则。

- 任意工程中共享。

- 依赖管理包括自动更新。

- 一个庞大且不断增长的库。

- 可扩展，能够轻松编写 Java 或脚本语言的插件。

- 只需很少或不需要额外配置即可即时访问新功能。

- **基于模型的构建** − Maven能够将任意数量的项目构建到预定义的输出类型中，如 JAR，WAR 或基于项目元数据的分发，而不需要在大多数情况下执行任何脚本。

- **项目信息的一致性站点** − 使用与构建过程相同的元数据，Maven 能够生成一个网站或PDF，包括您要添加的任何文档，并添加到关于项目开发状态的标准报告中。

- **发布管理和发布单独的输出** − Maven 将不需要额外的配置，就可以与源代码管理系统（如 Subversion 或 Git）集成，并可以基于某个标签管理项目的发布。它也可以将其发布到分发位置供其他项目使用。Maven 能够发布单独的输出，如 JAR，包含其他依赖和文档的归档，或者作为源代码发布。

- **向后兼容性** − 您可以很轻松的从旧版本 Maven 的多个模块移植到 Maven 3 中。

- 子项目使用父项目依赖时，正常情况子项目应该继承父项目依赖，无需使用版本号，

- **并行构建** − 编译的速度能普遍提高20 - 50 %。

- **更好的错误报告** − Maven 改进了错误报告，它为您提供了 Maven wiki 页面的链接，您可以点击链接查看错误的完整描述。
', 284, 'Maven 翻译为"专家"、"内行"，是 Apache 下的一个纯 Java 开发的开源项目。基于项目对象模型（缩写：POM）概念，Maven利用一个中央信息片断能管理一个项目的构建、报告和文档等步骤。
Maven 是一个项目管理工具，可以对 Java 项目进行构建、依赖管理。
Maven 也可被用于构建和管理各种项目，例如 C#，Ruby，Scala 和其他语言编写的项目。Maven 曾是 Jakarta 项目的子项目，现为由 Apache 软件基金会主持的独立 Apache 项目。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (8, null, 5, 'Docker教程', 1, 'Docker 教程', '# Docker 教程

![](/images/de8e69032e25435dbb5f3c6f7a2640d4.png)

Docker 是一个开源的应用容器引擎，基于 [Go 语言](https://www.runoob.com/go/go-tutorial.html) 并遵从 Apache2.0 协议开源。

Docker 可以让开发者打包他们的应用以及依赖包到一个轻量级、可移植的容器中，然后发布到任何流行的 Linux 机器上，也可以实现虚拟化。

容器是完全使用沙箱机制，相互之间不会有任何接口（类似 iPhone 的 app）,更重要的是容器性能开销极低。

Docker 从 17.03 版本之后分为 CE（Community Edition: 社区版） 和 EE（Enterprise Edition: 企业版），我们用社区版就可以了。

* * *

## 谁适合阅读本教程？

本教程适合运维工程师及后端开发人员，通过本教程你可以一步一步了解 Docker 的使用。

* * *

## 阅读本教程前，您需要了解的知识

在阅读本教程前，你需要掌握 Linux 的常用命令。你可以通过本站的 [Linux 教程](https://www.runoob.com/linux/linux-tutorial.html) 来学习相关命令。

* * *

## Docker的应用场景

- Web 应用的自动化打包和发布。
    
- 自动化测试和持续集成、发布。
    
- 在服务型环境中部署和调整数据库或其他的后台应用。
    
- 从头编译或者扩展现有的 OpenShift 或 Cloud Foundry 平台来搭建自己的 PaaS 环境。
    

* * *

## Docker 的优点

Docker 是一个用于开发，交付和运行应用程序的开放平台。Docker 使您能够将应用程序与基础架构分开，从而可以快速交付软件。借助 Docker，您可以与管理应用程序相同的方式来管理基础架构。通过利用 Docker 的方法来快速交付，测试和部署代码，您可以大大减少编写代码和在生产环境中运行代码之间的延迟。

### 1、快速，一致地交付您的应用程序

Docker 允许开发人员使用您提供的应用程序或服务的本地容器在标准化环境中工作，从而简化了开发的生命周期。

容器非常适合持续集成和持续交付（CI / CD）工作流程，请考虑以下示例方案：

- 您的开发人员在本地编写代码，并使用 Docker 容器与同事共享他们的工作。
- 他们使用 Docker 将其应用程序推送到测试环境中，并执行自动或手动测试。
- 当开发人员发现错误时，他们可以在开发环境中对其进行修复，然后将其重新部署到测试环境中，以进行测试和验证。
- 测试完成后，将修补程序推送给生产环境，就像将更新的镜像推送到生产环境一样简单。

### 2、响应式部署和扩展

Docker 是基于容器的平台，允许高度可移植的工作负载。Docker 容器可以在开发人员的本机上，数据中心的物理或虚拟机上，云服务上或混合环境中运行。

Docker 的可移植性和轻量级的特性，还可以使您轻松地完成动态管理的工作负担，并根据业务需求指示，实时扩展或拆除应用程序和服务。

### 3、在同一硬件上运行更多工作负载

Docker 轻巧快速。它为基于虚拟机管理程序的虚拟机提供了可行、经济、高效的替代方案，因此您可以利用更多的计算能力来实现业务目标。Docker 非常适合于高密度环境以及中小型部署，而您可以用更少的资源做更多的事情。

* * *

## 相关链接

Docker 官网：[https://www.docker.com](https://www.docker.com/)

Github Docker 源码：https://github.com/docker/docker-ce', 464, 'Docker 是一个开源的应用容器引擎，基于 Go 语言 并遵从 Apache2.0 协议开源。
Docker 可以让开发者打包他们的应用以及依赖包到一个轻量级、可移植的容器中，然后发布到任何流行的 Linux 机器上，也可以实现虚拟化。
容器是完全使用沙箱机制，相互之间不会有任何接口（类似 iPhone 的 app）,更重要的是容器性能开销极低。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (9, null, 6, 'BootStrap4教程', null, null, null, 1, null);
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (10, null, 5, 'Docker教程', 28, 'Docker 安装 MongoDB', '# Docker 安装 MongoDB

MongoDB 是一个免费的开源跨平台面向文档的 NoSQL 数据库程序。

### 1、查看可用的 MongoDB 版本

访问 MongoDB 镜像库地址： https://hub.docker.com/_/mongo?tab=tags&page=1。

可以通过 Sort by 查看其他版本的 MongoDB，默认是最新版本 **mongo:latest**。

[<img width="835" height="634" src="/images/61ae9b14692547df94c704f17f1e2ef4.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mongo1.png)

你也可以在下拉列表中找到其他你想要的版本：

[![](/images/1993a53a997f4b08affc26a752f37072.png)](https://www.runoob.com/wp-content/uploads/2016/06/docker-mongo2.png)

此外，我们还可以用 docker search mongo 命令来查看可用版本：

$ docker search mongo
NAME                              DESCRIPTION                      STARS     OFFICIAL   AUTOMATED
mongo MongoDB document databases ...  1989  \\[OK\\] mongo-express Web-based MongoDB admin int...  22  \\[OK\\] mvertes/alpine-mongo              light MongoDB container 19  \\[OK\\] mongooseim/mongooseim-docker MongooseIM server the lates...  9  \\[OK\\] torusware/speedus-mongo Always updated official Mon...  9  \\[OK\\] jacksoncage/mongo Instant  MongoDB sharded cluster 6  \\[OK\\] mongoclient/mongoclient Official docker image for M...  4  \\[OK\\] jadsonlourenco/mongo-rocks Percona  Mongodb  with  Rocksd...  4  \\[OK\\] asteris/apache-php-mongo Apache2.4  + PHP +  Mongo  + m...  2  \\[OK\\]  19hz/mongo-container Mongodb replicaset for coreos 1  \\[OK\\] nitra/mongo Mongo3 centos7 1  \\[OK\\] ackee/mongo MongoDB  with  fixed  Bluemix p...  1  \\[OK\\] kobotoolbox/mongo                 https://github.com/kobotoolb...  1                    \\[OK\\] valtlfelipe/mongo Docker  Image based on the la...  1  \\[OK\\]

### 2、取最新版的 MongoDB 镜像

这里我们拉取官方的最新版本的镜像：

$ docker pull mongo:latest

[<img width="835" height="377" src="/images/789774d8cdfd4e66937c1d808a126ba8.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mongo3.png)

### 3、查看本地镜像

使用以下命令来查看是否已安装了 mongo：

$ docker images

[<img width="835" height="121" src="/images/0c17933cf671480bb9a372681241705b.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mongo4.png)

在上图中可以看到我们已经安装了最新版本（latest）的 mongo 镜像。

### 4、运行容器

安装完成后，我们可以使用以下命令来运行 mongo 容器：

$ docker run -itd --name mongo -p 27017:27017 mongo --auth

参数说明：

- **-p 27017:27017** ：映射容器服务的 27017 端口到宿主机的 27017 端口。外部可以直接通过 宿主机 ip:27017 访问到 mongo 的服务。
- **--auth**：需要密码才能访问容器服务。

[![](/images/9ab165fadaae41d58ceaaaf928433720.png)](https://www.runoob.com/wp-content/uploads/2016/06/docker-mongo5.png)

### 5、安装成功

最后我们可以通过 **docker ps** 命令查看容器的运行信息：

[<img width="835" height="73" src="/images/bbe5d41d519a4256b27ebea8d78ac712.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mongo6.png)

接着使用以下命令添加用户和设置密码，并且尝试连接。

$ docker exec  -it mongo mongo admin \\# 创建一个名为 admin，密码为 123456 的用户。  > db.createUser({ user:''admin'',pwd:''123456'',roles:\\[  { role:''userAdminAnyDatabase'', db:  ''admin''},"readWriteAnyDatabase"\\]});  \\# 尝试使用上面创建的用户信息进行连接。  > db.auth(''admin'',  ''123456'')

[<img width="835" height="301" src="/images/2384780ca2924740bdc65ec4eea1b2d1.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mongo7.png)
', 52, 'MongoDB 是一个免费的开源跨平台面向文档的 NoSQL 数据库程序。
1、查看可用的 MongoDB 版本
访问 MongoDB 镜像库地址： https://hub.docker.com/_/mongo?tab=tags&page=1。
可以通过 Sort by 查看其他版本的 MongoDB，默认是最新版本 mongo:latest。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (11, null, 5, 'Docker教程', 27, 'Docker 安装 Redis', '# Docker 安装 Redis

Redis 是一个开源的使用 ANSI C 语言编写、支持网络、可基于内存亦可持久化的日志型、Key-Value 的 NoSQL 数据库，并提供多种语言的 API。

### 1、查看可用的 Redis 版本

访问 Redis 镜像库地址： https://hub.docker.com/_/redis?tab=tags。

可以通过 Sort by 查看其他版本的 Redis，默认是最新版本 **redis:latest**。

[<img width="835" height="635" src="/images/fbd6a2f19ed64544bce6ce33eaa43863.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-redis1.png)

你也可以在下拉列表中找到其他你想要的版本：

[![](/images/05a15013a5a14136b7b146748249dc15.png)](https://www.runoob.com/wp-content/uploads/2016/06/docker-redis2.png)

此外，我们还可以用 docker search redis 命令来查看可用版本：

$ docker search  redis
NAME                      DESCRIPTION                   STARS  OFFICIAL  AUTOMATED
redis Redis  is an open source ...  2321  \\[OK\\] sameersbn/redis 32  \\[OK\\] torusware/speedus-redis Always updated official ...  29 \\[OK\\] bitnami/redis Bitnami  Redis  Docker  Image  22  \\[OK\\] anapsix/redis 11MB  Redis server image ...  6  \\[OK\\] webhippie/redis Docker images for redis 4  \\[OK\\] clue/redis-benchmark      A minimal docker image t...  3  \\[OK\\] williamyeh/redis Redis image for  Docker  3  \\[OK\\] unblibraries/redis Leverages phusion/baseim...  2  \\[OK\\] greytip/redis             redis 3.0.3  1  \\[OK\\] servivum/redis Redis  Docker  Image  1  \\[OK\\]  ...

### 2、取最新版的 Redis 镜像

这里我们拉取官方的最新版本的镜像：

$ docker pull redis:latest

[<img width="835" height="243" src="/images/ae985ade98bf47138920456909cc084c.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-redis3.png)

### 3、查看本地镜像

使用以下命令来查看是否已安装了 redis：

$ docker images

[<img width="835" height="137" src="/images/778c9fc1d6794ae1852405b21f489348.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-redis4.png)

在上图中可以看到我们已经安装了最新版本（latest）的 redis 镜像。

### 4、运行容器

安装完成后，我们可以使用以下命令来运行 redis 容器：

$ docker run -itd --name redis-test -p 6379:6379 redis

参数说明：

- **-p 6379:6379**：映射容器服务的 6379 端口到宿主机的 6379 端口。外部可以直接通过宿主机ip:6379 访问到 Redis 的服务。

[<img width="835" height="51" src="/images/982a2116dc4e4a829203ae3905816ebd.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-redis5.png)

### 5、安装成功

最后我们可以通过 **docker ps** 命令查看容器的运行信息：

[<img width="835" height="83" src="/images/caff8a10d0424dc293eed302196db2ab.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-redis6.png)

接着我们通过 redis-cli 连接测试使用 redis 服务。

$ docker exec  -it redis-test /bin/bash

[![](/images/c1e942c4e7264d639209f3143ed5e668.png)](https://www.runoob.com/wp-content/uploads/2016/06/docker-redis7.png)
', 40, 'Redis 是一个开源的使用 ANSI C 语言编写、支持网络、可基于内存亦可持久化的日志型、Key-Value 的 NoSQL 数据库，并提供多种语言的 API。
1、查看可用的 Redis 版本
访问 Redis 镜像库地址： https://hub.docker.com/_/redis?tab=tags。
可以通过 Sort by 查看其他版本的 Redis，默认是最新版本 redis:latest。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (12, null, 5, 'Docker教程', 26, 'Docker 安装 Python', '# Docker 安装 Python

* * *

### 方法一、docker pull python:3.5

查找 [Docker Hub](https://hub.docker.com/_/python?tab=tags) 上的 Python 镜像:

[<img width="835" height="585" src="https://www.runoob.com/wp-content/uploads/2016/06/B32A6862-3599-4B41-A8EA-05A361000865.jpg"/>](https://www.runoob.com/wp-content/uploads/2016/06/B32A6862-3599-4B41-A8EA-05A361000865.jpg)

可以通过 Sort by 查看其他版本的 python，默认是最新版本 **python:lastest**。

此外，我们还可以用 docker search python 命令来查看可用版本：

```
runoob@runoob:~/python$ docker search python
NAME				DESCRIPTION				STARS	OFFICIAL	AUTOMATED
python				Python is an interpreted,...  		982	[OK]
kaggle/python 			Docker image for  Python...  		33  			[OK]
azukiapp/python 		Docker image to run Python  ...  	3  			[OK]
vimagick/python			mini python 					2  		[OK]
tsuru/python 			Image for the Python  ...  		2  			[OK]
pandada8/alpine-python		An alpine based python image 			1  		[OK]  
1science/python Python		Docker images based on ...  		1  			[OK]
lucidfrontier45/python-uwsgi	Python  with uWSGI 			1  			[OK]
orbweb/python 			Python image 				1  			[OK]
pathwar/python			Python  template  for  Pathwar levels 	1  			[OK]
rounds/10m-python 		Python, setuptools and pip.  		0  			[OK]
ruimashita/python		ubuntu 14.04 python 			0  			[OK]
tnanba/python 			Python on CentOS-7 image.  		0  			[OK]
```

这里我们拉取官方的镜像,标签为3.5

`runoob@runoob:~/python$ docker pull python:3.5`

等待下载完成后，我们就可以在本地镜像列表里查到 REPOSITORY 为python, 标签为 3.5 的镜像。

```
runoob@runoob:~/python$ docker images python:3.5
REPOSITORY	TAG		IMAGE ID		CREATED		SIZE
python 		3.5  		045767ddf24a  		9 days ago 	684.1 MB
```

### 方法二、通过 Dockerfile 构建

**创建 Dockerfile<**/p>

首先，创建目录 python，用于存放后面的相关东西。

`runoob@runoob:~$ mkdir -p ~/python ~/python/myapp`

myapp 目录将映射为 python 容器配置的应用目录。

进入创建的 python 目录，创建 Dockerfile。

```
FROM buildpack-deps:jessie

# remove several traces of debian python
RUN apt-get purge -y python.*  

# http://bugs.python.org/issue19846  
# > At the moment, setting "LANG=C" on a Linux system *fundamentally breaks Python 3*, and that''s not OK.
ENV LANG C.UTF-8  

# gpg: key F73C700D: public key "Larry Hastings &lt;larry@hastings.org&gt;" imported
ENV GPG_KEY 97FC712E4C024BBEA48A61ED3A5CA953F73C700D

ENV PYTHON_VERSION 3.5.1  

# if this is called "PIP_VERSION", pip explodes with "ValueError: invalid truth value ''<VERSION>''"
ENV PYTHON\\_PIP\\_VERSION 8.1.2

RUN set -ex \\
		&& curl -fSL "https://www.python.org/ftp/python/${PYTHON\\_VERSION%%\\[a-z\\]*}/Python-$PYTHON\\_VERSION.tar.xz"  -o python.tar.xz \\
		&& curl -fSL "https://www.python.org/ftp/python/${PYTHON\\_VERSION%%\\[a-z\\]*}/Python-$PYTHON\\_VERSION.tar.xz.asc"  -o python.tar.xz.asc \\
		&& export GNUPGHOME="$(mktemp -d)" \\
		&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" \\
		&& gpg --batch --verify python.tar.xz.asc python.tar.xz \\
		&& rm -r "$GNUPGHOME" python.tar.xz.asc \\
		&& mkdir -p /usr/src/python \\
		&& tar -xJC /usr/src/python --strip-components=1  -f python.tar.xz \\
		&& rm python.tar.xz \\
        \\
		&& cd /usr/src/python \\
		&&  ./configure --enable-shared --enable-unicode=ucs4 \\
		&& make -j$(nproc) \\
		&& make install \\
		&& ldconfig \\
		&& pip3 install --no-cache-dir --upgrade --ignore-installed pip==$PYTHON\\_PIP\\_VERSION \\
		&& find /usr/local  -depth \\
                \\( \\
                    \\( -type d -a -name test -o -name tests \\) \\
					-o \\
                    \\( -type f -a -name ''*.pyc''  -o -name ''*.pyo'' \\) \\
                \\) -exec rm -rf ''{}''  + \\
		&& rm -rf /usr/src/python ~/.cache

# make some useful symlinks that are expected to exist
RUN cd /usr/local/bin \\
		&& ln -s easy_install-3.5 easy_install \\
		&& ln -s idle3 idle \\
		&& ln -s pydoc3 pydoc \\
		&& ln -s python3 python \\
		&& ln -s python3-config python-config

CMD ["python3"]
```

通过 Dockerfile 创建一个镜像，替换成你自己的名字：

`runoob@runoob:~/python$ docker build -t python:3.5  .`

创建完成后，我们可以在本地的镜像列表里查找到刚刚创建的镜像：

```
runoob@runoob:~/python$ docker images python:3.5
REPOSITORY		TAG		IMAGE ID		CREATED		SIZE
python 			3.5  		045767ddf24a  		9 days ago 	684.1 MB
```

* * *

## 使用 python 镜像

在 ~/python/myapp 目录下创建一个 helloworld.py 文件，代码如下：

```
#!/usr/bin/python  

print("Hello, World!");
```

### 运行容器

```
runoob@runoob:~/python$ docker run  -v $PWD/myapp:/usr/src/myapp -w /usr/src/myapp python:3.5 python helloworld.py
```

命令说明：

**-v $PWD/myapp:/usr/src/myapp:** 将主机中当前目录下的 myapp 挂载到容器的 /usr/src/myapp。

**-w /usr/src/myapp:** 指定容器的 /usr/src/myapp 目录为工作目录。

**python helloworld.py:** 使用容器的 python 命令来执行工作目录中的 helloworld.py 文件。

输出结果：

`Hello,  World!`
', 413, 'docker pull python:3.5
查找 Docker Hub 上的 Python 镜像:

可以通过 Sort by 查看其他版本的 python，默认是最新版本 python:lastest。
此外，我们还可以用 docker search python 命令来查看可用版本');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (13, null, 5, 'Docker教程', 25, 'Docker 安装 Tomcat', '# Docker 安装 Tomcat

### 方法一、docker pull tomcat

查找 [Docker Hub](https://hub.docker.com/_/tomcat?tab=tags) 上的 Tomcat 镜像:

[<img width="835" height="470" src="/images/936994b761dc4b3e93d83c56438db007.jpg"/>](https://www.runoob.com/wp-content/uploads/2016/06/F5FE5252-6FD3-4DE3-880B-808477E45676.jpg)

可以通过 Sort by 查看其他版本的 tomcat，默认是最新版本 **tomcat:latest**。

此外，我们还可以用 docker search tomcat 命令来查看可用版本：

runoob@runoob:~/tomcat$ docker search tomcat
NAME                       DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
tomcat Apache  Tomcat  is an open source implementa...  744  \\[OK\\] dordoka/tomcat Ubuntu  14.04,  Oracle JDK 8  and  Tomcat  8 ba...  19  \\[OK\\] consol/tomcat-7.0  Tomcat  7.0.57,  8080,  "admin/admin"  16  \\[OK\\] consol/tomcat-8.0  Tomcat  8.0.15,  8080,  "admin/admin"  14  \\[OK\\] cloudesire/tomcat Tomcat server,  6/7/8  8  \\[OK\\] davidcaste/alpine-tomcat Apache  Tomcat  7/8  using  Oracle  Java  7/8 wi...  6  \\[OK\\] andreptb/tomcat Debian  Jessie based image with  Apache  Tomc...  4  \\[OK\\] kieker/tomcat 2  \\[OK\\] fbrx/tomcat Minimal  Tomcat image based on Alpine  Linux  2  \\[OK\\] jtech/tomcat Latest  Tomcat production distribution on l...  1  \\[OK\\]

这里我们拉取官方的镜像：

runoob@runoob:~/tomcat$ docker pull tomcat

等待下载完成后，我们就可以在本地镜像列表里查到 REPOSITORY 为 tomcat 的镜像。

runoob@runoob:~/tomcat$ docker images|grep tomcat
tomcat              latest 70f819d3d2d9  7 days ago 335.8 MB

### 方法二、通过 Dockerfile 构建

创建Dockerfile

首先，创建目录tomcat,用于存放后面的相关东西。

runoob@runoob:~$ mkdir -p ~/tomcat/webapps ~/tomcat/logs ~/tomcat/conf

webapps 目录将映射为 tomcat 容器配置的应用程序目录。

logs 目录将映射为 tomcat 容器的日志目录。

conf 目录里的配置文件将映射为 tomcat 容器的配置文件。

进入创建的 tomcat 目录，创建 Dockerfile。

FROM openjdk:8-jre

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME" WORKDIR $CATALINA_HOME \\# let "Tomcat Native" live somewhere isolated ENV TOMCAT\\_NATIVE\\_LIBDIR $CATALINA_HOME/native-jni-lib
ENV LD\\_LIBRARY\\_PATH ${LD\\_LIBRARY\\_PATH:+$LD\\_LIBRARY\\_PATH:}$TOMCAT\\_NATIVE\\_LIBDIR \\# runtime dependencies for Tomcat Native Libraries  \\# Tomcat Native 1.2+ requires a newer version of OpenSSL than debian:jessie has available  \\# \\> checking OpenSSL library version >= 1.0.2...  \\# \\> configure: error: Your version of OpenSSL is not compatible with this version of tcnative  \\# see http://tomcat.10.x6.nabble.com/VOTE-Release-Apache-Tomcat-8-0-32-tp5046007p5046024.html (and following discussion)  \\# and https://github.com/docker-library/tomcat/pull/31 ENV OPENSSL_VERSION 1.1.0f-3+deb9u2
RUN set  -ex; \\
    currentVersion="$(dpkg-query --show --showformat ''${Version}\\\\n'' openssl)"; \\if dpkg --compare-versions "$currentVersion"  ''<<''  "$OPENSSL_VERSION";  then \\if  ! grep -q stretch /etc/apt/sources.list;  then \\ \\# only add stretch if we''re not already building from within stretch { \\
                echo ''deb http://deb.debian.org/debian stretch main''; \\
                echo ''deb http://security.debian.org stretch/updates main''; \\
                echo ''deb http://deb.debian.org/debian stretch-updates main''; \\}  >  /etc/apt/sources.list.d/stretch.list; \\{ \\ \\# add a negative "Pin-Priority" so that we never ever get packages from stretch unless we explicitly request them echo ''Package: *''; \\
                echo ''Pin: release n=stretch*''; \\
                echo ''Pin-Priority: -10''; \\
                echo; \\ \\# ... except OpenSSL, which is the reason we''re here echo ''Package: openssl libssl*''; \\
                echo "Pin: version $OPENSSL_VERSION"; \\
                echo ''Pin-Priority: 990''; \\}  >  /etc/apt/preferences.d/stretch-openssl; \\fi; \\
        apt-get update; \\
        apt-get install -y --no-install-recommends openssl="$OPENSSL_VERSION"; \\
        rm -rf /var/lib/apt/lists/*; \\
    fi

RUN apt-get update && apt-get install -y --no-install-recommends \\
        libapr1 \\
    && rm -rf /var/lib/apt/lists/*

\\# see https://www.apache.org/dist/tomcat/tomcat-$TOMCAT_MAJOR/KEYS
\\# see also "update.sh" (https://github.com/docker-library/tomcat/blob/master/update.sh)
ENV GPG_KEYS 05AB33110949707C93A279E3D3EFE6B686867BA6 07E48665A34DCAFAE522E5E6266191C37C037D42 47309207D818FFD8DCD3F83F1931D684307A10A5 541FBE7D8F78B25E055DDEE13C370389288584E7 61B832AC2F1C5A90F0F9B00A1C506407564C17A3 713DA88BE50911535FE716F5208B0AB1D63011C7 79F7026C690BAA50B92CD8B66A3AD3F4F22C4FED 9BA44C2621385CB966EBA586F72C284D731FABEE A27677289986DB50844682F8ACB77FC2E86E29AC A9C5DF4D22E99998D9875A5110C01C5A2F6059E7 DCFD35E0BF8CA7344752DE8B6FB21E8933C60243 F3A04C595DB5B6A5F1ECA43E3B7BBB100D811BBE F7DA48BB64BCB84ECBA7EE6935CD23C10D498E23

ENV TOMCAT_MAJOR 8
ENV TOMCAT_VERSION 8.5.32
ENV TOMCAT_SHA512 fc010f4643cb9996cad3812594190564d0a30be717f659110211414faf8063c61fad1f18134154084ad3ddfbbbdb352fa6686a28fbb6402d3207d4e0a88fa9ce

ENV TOMCAT\\_TGZ\\_URLS \\
\\# https://issues.apache.org/jira/browse/INFRA-8753?focusedCommentId=14735394#comment-14735394
    https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-$TOMCAT\\_MAJOR/v$TOMCAT\\_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz \\
\\# if the version is outdated, we might have to pull from the dist/archive :/
    https://www-us.apache.org/dist/tomcat/tomcat-$TOMCAT\\_MAJOR/v$TOMCAT\\_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz \\
    https://www.apache.org/dist/tomcat/tomcat-$TOMCAT\\_MAJOR/v$TOMCAT\\_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz \\
    https://archive.apache.org/dist/tomcat/tomcat-$TOMCAT\\_MAJOR/v$TOMCAT\\_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz

ENV TOMCAT\\_ASC\\_URLS \\
    https://www.apache.org/dyn/closer.cgi?action=download&filename=tomcat/tomcat-$TOMCAT\\_MAJOR/v$TOMCAT\\_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc \\
\\# not all the mirrors actually carry the .asc files :''(
    https://www-us.apache.org/dist/tomcat/tomcat-$TOMCAT\\_MAJOR/v$TOMCAT\\_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc \\
    https://www.apache.org/dist/tomcat/tomcat-$TOMCAT\\_MAJOR/v$TOMCAT\\_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc \\
    https://archive.apache.org/dist/tomcat/tomcat-$TOMCAT\\_MAJOR/v$TOMCAT\\_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz.asc

RUN set -eux; \\
    \\
    savedAptMark="$(apt-mark showmanual)"; \\
    apt-get update; \\
    \\
    apt-get install -y --no-install-recommends gnupg dirmngr; \\
    \\
    export GNUPGHOME="$(mktemp -d)"; \\
    for key in $GPG_KEYS; do \\
        gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; \\
    done; \\
    \\
    apt-get install -y --no-install-recommends wget ca-certificates; \\
    \\
    success=; \\
    for url in $TOMCAT\\_TGZ\\_URLS; do \\
        if wget -O tomcat.tar.gz "$url"; then \\
            success=1; \\
            break; \\
        fi; \\
    done; \\
    \\[ -n "$success" \\]; \\
    \\
    echo "$TOMCAT_SHA512 *tomcat.tar.gz" | sha512sum -c -; \\
    \\
    success=; \\
    for url in $TOMCAT\\_ASC\\_URLS; do \\
        if wget -O tomcat.tar.gz.asc "$url"; then \\
            success=1; \\
            break; \\
        fi; \\
    done; \\
    \\[ -n "$success" \\]; \\
    \\
    gpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; \\
    tar -xvf tomcat.tar.gz --strip-components=1; \\
    rm bin/*.bat; \\
    rm tomcat.tar.gz*; \\
    rm -rf "$GNUPGHOME"; \\
    \\
    nativeBuildDir="$(mktemp -d)"; \\
    tar -xvf bin/tomcat-native.tar.gz -C "$nativeBuildDir" --strip-components=1; \\
    apt-get install -y --no-install-recommends \\
        dpkg-dev \\
        gcc \\
        libapr1-dev \\
        libssl-dev \\
        make \\
        "openjdk-${JAVA\\_VERSION%%\\[.~bu-\\]*}-jdk=$JAVA\\_DEBIAN_VERSION" \\
    ; \\
    ( \\
        export CATALINA_HOME="$PWD"; \\
        cd "$nativeBuildDir/native"; \\
        gnuArch="$(dpkg-architecture --query DEB\\_BUILD\\_GNU_TYPE)"; \\
        ./configure \\
            --build="$gnuArch" \\
            --libdir="$TOMCAT\\_NATIVE\\_LIBDIR" \\
            --prefix="$CATALINA_HOME" \\
            --with-apr="$(which apr-1-config)" \\
            --with-java-home="$(docker-java-home)" \\
            --with-ssl=yes; \\
        make -j "$(nproc)"; \\
        make install; \\
    ); \\
    rm -rf "$nativeBuildDir"; \\
    rm bin/tomcat-native.tar.gz; \\
    \\
\\# reset apt-mark''s "manual" list so that "purge --auto-remove" will remove all build dependencies
    apt-mark auto ''.*'' > /dev/null; \\
    \\[ -z "$savedAptMark" \\] || apt-mark manual $savedAptMark; \\
    apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \\
    rm -rf /var/lib/apt/lists/*; \\
    \\
\\# sh removes env vars it doesn''t support (ones with periods)
\\# https://github.com/docker-library/tomcat/issues/77
    find ./bin/ -name ''*.sh'' -exec sed -ri ''s|^#!/bin/sh$|#!/usr/bin/env bash|'' ''{}'' +

\\# verify Tomcat Native is working properly
RUN set -e \\
    && nativeLines="$(catalina.sh configtest 2>&1)" \\
    && nativeLines="$(echo "$nativeLines" | grep ''Apache Tomcat Native'')" \\
    && nativeLines="$(echo "$nativeLines" | sort -u)" \\
    && if ! echo "$nativeLines" | grep ''INFO: Loaded APR based Apache Tomcat Native library'' >&2; then \\
        echo >&2 "$nativeLines"; \\
        exit 1; \\
    fi

EXPOSE 8080
CMD \\["catalina.sh", "run"\\]

通过 Dockerfile 创建一个镜像，替换成你自己的名字：

runoob@runoob:~/tomcat$ docker build -t tomcat .

创建完成后，我们可以在本地的镜像列表里查找到刚刚创建的镜像：

runoob@runoob:~/tomcat$ docker images|grep tomcat
tomcat              latest 70f819d3d2d9  7 days ago 335.8 MB

* * *

## 使用 tomcat 镜像

### 运行容器

runoob@runoob:~/tomcat$ docker run --name tomcat -p 8080:8080 -v $PWD/test:/usr/local/tomcat/webapps/test -d tomcat  
acb33fcb4beb8d7f1ebace6f50f5fc204b1dbe9d524881267aa715c61cf75320
runoob@runoob:~/tomcat$

命令说明：

**-p 8080:8080：**将主机的 8080 端口映射到容器的 8080 端口。

**-v $PWD/test:/usr/local/tomcat/webapps/test：**将主机中当前目录下的 test 挂载到容器的 /test。

查看容器启动情况

runoob@runoob:~/tomcat$ docker ps 
CONTAINER ID    IMAGE     COMMAND ... PORTS                    NAMES
acb33fcb4beb    tomcat "catalina.sh run"  ...  0.0.0.0:8080->8080/tcp   tomcat

通过浏览器访问

<img width="835" height="267" src="/images/0276b4499ffa417bb90c7eda9e18e02d.png"/>', 270, 'webapps 目录将映射为 tomcat 容器配置的应用程序目录。
logs 目录将映射为 tomcat 容器的日志目录。
conf 目录里的配置文件将映射为 tomcat 容器的配置文件。
进入创建的 tomcat 目录，创建 Dockerfile。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (14, null, 5, 'Docker教程', 24, 'Docker 安装 Apache', '# Docker 安装 Apache

* * *

### 方法一、docker pull httpd

查找 [Docker Hub](https://hub.docker.com/_/httpd?tab=tags) 上的 httpd 镜像:

[<img width="835" height="452" src="/images/2fd4bb0d2f6d4dab86840de5001e615c.jpg"/>](https://www.runoob.com/wp-content/uploads/2016/06/DD4D706F-7D45-41F6-9506-069E12A87F9D.jpg)

可以通过 Sort by 查看其他版本的 httpd，默认是最新版本 **httpd:latest**。

此外，我们还可以用 docker search httpd 命令来查看可用版本：

runoob@runoob:~/apache$ docker search httpd
NAME                           DESCRIPTION                  STARS  OFFICIAL AUTOMATED
httpd The  Apache HTTP Server  ..  524  \\[OK\\] centos/httpd 7  \\[OK\\] rgielen/httpd-image-php5 Docker image for  Apache...  1  \\[OK\\] microwebapps/httpd-frontend Httpd frontend allowing...  1  \\[OK\\] lolhens/httpd Apache httpd 2  Server  1  \\[OK\\] publici/httpd                  httpd:latest 0  \\[OK\\] publicisworldwide/httpd The  Apache httpd webser...  0  \\[OK\\] rgielen/httpd-image-simple Docker image for simple...  0  \\[OK\\] solsson/httpd Derivatives of the offi...  0  \\[OK\\] rgielen/httpd-image-drush Apache HTTPD +  Drupal S...  0  \\[OK\\] learninglayers/httpd 0  \\[OK\\] sohrabkhan/httpd Docker httpd + php5.6  (...  0  \\[OK\\] aintohvri/docker-httpd Apache HTTPD Docker ext...  0  \\[OK\\] alizarion/httpd                httpd on centos with mo...  0  \\[OK\\]  ...

这里我们拉取官方的镜像

runoob@runoob:~/apache$ docker pull httpd

等待下载完成后，我们就可以在本地镜像列表里查到REPOSITORY为httpd的镜像。

runoob@runoob:~/apache$ docker images httpd
REPOSITORY     TAG        IMAGE ID        CREATED           SIZE
httpd          latest     da1536b4ef14 23 seconds ago 195.1 MB

### 方法二、通过 Dockerfile 构建

**创建 Dockerfile**

首先，创建目录apache,用于存放后面的相关东西。

runoob@runoob:~$ mkdir -p ~/apache/www ~/apache/logs ~/apache/conf

www 目录将映射为 apache 容器配置的应用程序目录。

logs 目录将映射为 apache 容器的日志目录。

conf 目录里的配置文件将映射为 apache 容器的配置文件。

进入创建的 apache 目录，创建 Dockerfile。

FROM debian:jessie \\# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added  #RUN groupadd -r www-data && useradd -r --create-home -g www-data www-data ENV HTTPD_PREFIX /usr/local/apache2
ENV PATH $PATH:$HTTPD_PREFIX/bin
RUN mkdir -p "$HTTPD_PREFIX" \\&& chown www-data:www-data "$HTTPD_PREFIX" WORKDIR $HTTPD_PREFIX \\# install httpd runtime dependencies  \\# https://httpd.apache.org/docs/2.4/install.html#requirements RUN apt-get update \\&& apt-get install -y --no-install-recommends \\
        libapr1 \\
        libaprutil1 \\
        libaprutil1-ldap \\
        libapr1-dev \\
        libaprutil1-dev \\
        libpcre++0 \\
        libssl1.0.0 \\&& rm -r /var/lib/apt/lists/*

ENV HTTPD_VERSION 2.4.20
ENV HTTPD\\_BZ2\\_URL https://www.apache.org/dist/httpd/httpd-$HTTPD_VERSION.tar.bz2

RUN buildDeps='' \\
        ca-certificates \\
        curl \\
        bzip2 \\
        gcc \\
        libpcre++-dev \\
        libssl-dev \\
        make \\
    '' \\
    set -x \\
    && apt-get update \\
    && apt-get install -y --no-install-recommends $buildDeps \\
    && rm -r /var/lib/apt/lists/* \\
    \\
    && curl -fSL "$HTTPD\\_BZ2\\_URL" -o httpd.tar.bz2 \\
    && curl -fSL "$HTTPD\\_BZ2\\_URL.asc" -o httpd.tar.bz2.asc \\
\\# see https://httpd.apache.org/download.cgi#verify
    && export GNUPGHOME="$(mktemp -d)" \\
    && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A93D62ECC3C8EA12DB220EC934EA76E6791485A8 \\
    && gpg --batch --verify httpd.tar.bz2.asc httpd.tar.bz2 \\
    && rm -r "$GNUPGHOME" httpd.tar.bz2.asc \\
    \\
    && mkdir -p src \\
    && tar -xvf httpd.tar.bz2 -C src --strip-components=1 \\
    && rm httpd.tar.bz2 \\
    && cd src \\
    \\
    && ./configure \\
        --prefix="$HTTPD_PREFIX" \\
        --enable-mods-shared=reallyall \\
    && make -j"$(nproc)" \\
    && make install \\
    \\
    && cd .. \\
    && rm -r src \\
    \\
    && sed -ri \\
        -e ''s!^(\\\\s*CustomLog)\\\\s+\\\\S+!\\\\1 /proc/self/fd/1!g'' \\
        -e ''s!^(\\\\s*ErrorLog)\\\\s+\\\\S+!\\\\1 /proc/self/fd/2!g'' \\
        "$HTTPD_PREFIX/conf/httpd.conf" \\
    \\
    && apt-get purge -y --auto-remove $buildDeps

COPY httpd-foreground /usr/local/bin/

EXPOSE 80
CMD \\["httpd-foreground"\\]

Dockerfile文件中 COPY httpd-foreground /usr/local/bin/ 是将当前目录下的httpd-foreground拷贝到镜像里，作为httpd服务的启动脚本，所以我们要在本地创建一个脚本文件httpd-foreground

#!/bin/bash  set  -e \\# Apache gets grumpy about PID files pre-existing rm -f /usr/local/apache2/logs/httpd.pid exec httpd -DFOREGROUND

赋予 httpd-foreground 文件可执行权限。

runoob@runoob:~/apache$ chmod +x httpd-foreground

通过 Dockerfile 创建一个镜像，替换成你自己的名字。

runoob@runoob:~/apache$ docker build -t httpd .

创建完成后，我们可以在本地的镜像列表里查找到刚刚创建的镜像。

runoob@runoob:~/apache$ docker images httpd
REPOSITORY     TAG        IMAGE ID        CREATED           SIZE
httpd          latest     da1536b4ef14 23 seconds ago 195.1 MB

* * *

## 使用 apache 镜像

### 运行容器

docker run -p 80:80  -v $PWD/www/:/usr/local/apache2/htdocs/  -v $PWD/conf/httpd.conf:/usr/local/apache2/conf/httpd.conf -v $PWD/logs/:/usr/local/apache2/logs/  -d httpd

命令说明：

**-p 80:80:** 将容器的 80 端口映射到主机的 80 端口。

**-v $PWD/www/:/usr/local/apache2/htdocs/:** 将主机中当前目录下的 www 目录挂载到容器的 /usr/local/apache2/htdocs/。

**-v $PWD/conf/httpd.conf:/usr/local/apache2/conf/httpd.conf:** 将主机中当前目录下的 conf/httpd.conf 文件挂载到容器的 /usr/local/apache2/conf/httpd.conf。

**-v $PWD/logs/:/usr/local/apache2/logs/:** 将主机中当前目录下的 logs 目录挂载到容器的 /usr/local/apache2/logs/。

查看容器启动情况：

runoob@runoob:~/apache$ docker ps
CONTAINER ID  IMAGE   COMMAND ... PORTS               NAMES 79a97f2aac37 httpd "httpd-foreground"  ...  0.0.0.0:80->80/tcp  sharp_swanson

通过浏览器访问

![](/images/0704d2de60a844509b357c329d03f6f8.png)
', 271, 'docker pull httpd
查找 Docker Hub 上的 httpd 镜像可以通过 Sort by 查看其他版本的 httpd，默认是最新版本 httpd:latest。
此外，我们还可以用 docker search httpd 命令来查看可用版本：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (15, null, 5, 'Docker教程', 23, 'Docker 安装 MySQL', '# Docker 安装 MySQL

MySQL 是世界上最受欢迎的开源数据库。凭借其可靠性、易用性和性能，MySQL 已成为 Web 应用程序的数据库优先选择。

### 1、查看可用的 MySQL 版本

访问 MySQL 镜像库地址：https://hub.docker.com/_/mysql?tab=tags 。

可以通过 Sort by 查看其他版本的 MySQL，默认是最新版本 **mysql:latest** 。

[<img width="835" height="620" src="/images/abe0cc28d7894608951c987c1ae56d75.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mysql1.png)

你也可以在下拉列表中找到其他你想要的版本：

[![](/images/c92db5b65d91493cb6e2fc6cf257ef94.png)](https://www.runoob.com/wp-content/uploads/2016/06/docker-mysql2.png)

此外，我们还可以用 docker search mysql 命令来查看可用版本：

$ docker search mysql
NAME                     DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
mysql MySQL  is a widely used, open-source relati...  2529  \\[OK\\] mysql/mysql-server Optimized  MySQL  Server  Docker images.  Crea...  161  \\[OK\\] centurylink/mysql Image containing mysql.  Optimized to be li...  45  \\[OK\\] sameersbn/mysql 36  \\[OK\\] google/mysql MySQL server for  Google  Compute  Engine  16  \\[OK\\] appcontainers/mysql Centos/Debian  Based  Customizable  MySQL  Con...  8  \\[OK\\] marvambass/mysql MySQL  Server based on Ubuntu  14.04  6  \\[OK\\] drupaldocker/mysql MySQL  for  Drupal  2  \\[OK\\] azukiapp/mysql Docker image to run MySQL  by  Azuki  - http:...  2  \\[OK\\]  ...

### 2、拉取 MySQL 镜像

这里我们拉取官方的最新版本的镜像：

$ docker pull mysql:latest

[<img width="835" height="356" src="/images/3a32d87cbc874f0eaa78ac23e48f7dc7.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mysql3.png)

### 3、查看本地镜像

使用以下命令来查看是否已安装了 mysql：

$ docker images

[<img width="835" height="111" src="/images/9619403b2fbe4fa4bd6c2b5e02852d1e.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mysql6.png)

在上图中可以看到我们已经安装了最新版本（latest）的 mysql 镜像。

### 4、运行容器

安装完成后，我们可以使用以下命令来运行 mysql 容器：

$ docker run -itd --name mysql-test -p 3306:3306  -e MYSQL\\_ROOT\\_PASSWORD=123456 mysql

参数说明：

- **-p 3306:3306** ：映射容器服务的 3306 端口到宿主机的 3306 端口，外部主机可以直接通过 宿主机ip:3306 访问到 MySQL 的服务。
- **MYSQL\\_ROOT\\_PASSWORD=123456**：设置 MySQL 服务 root 用户的密码。

[<img width="835" height="47" src="/images/899d01fca1094d9c811bce1bf81b6a95.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mysql4.png)

### 5、安装成功

通过 docker ps 命令查看是否安装成功：

[<img width="835" height="59" src="/images/1c1b76c7e2d7422292a6d39f1d4ea150.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mysql5.png)

本机可以通过 root 和密码 123456 访问 MySQL 服务。

[<img width="835" height="318" src="/images/6893af72912049959564259385ab9dd9.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-mysql7.png)', 37, 'MySQL 是世界上最受欢迎的开源数据库。凭借其可靠性、易用性和性能，MySQL 已成为 Web 应用程序的数据库优先选择。
1、查看可用的 MySQL 版本
访问 MySQL 镜像库地址：https://hub.docker.com/_/mysql?tab=tags 。
可以通过 Sort by 查看其他版本的 MySQL，默认是最新版本 mysql:latest 。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (16, null, 5, 'Docker教程', 22, 'Docker 安装 PHP', '# Docker 安装 PHP

## 安装 PHP 镜像

### 方法一、docker pull php

查找 [Docker Hub](https://hub.docker.com/_/php?tab=tags) 上的 php 镜像:

[<img width="835" height="474" src="/images/4a80680436bc4fe394b6ab5df1e57e32.jpg"/>](https://www.runoob.com/wp-content/uploads/2016/06/0D34717D-1D07-4655-8559-A8661BCB4A3D.jpg)

可以通过 Sort by 查看其他版本的 php，默认是最新版本 **php:latest**。

此外，我们还可以用 docker search php 命令来查看可用版本：

runoob@runoob:~/php-fpm$ docker search php
NAME                      DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
php While designed for web development, the PH...  1232  \\[OK\\] richarvey/nginx-php-fpm Container running Nginx  + PHP-FPM capable ...  207  \\[OK\\] phpmyadmin/phpmyadmin     A web interface  for  MySQL  and  MariaDB.  123  \\[OK\\] eboraas/apache-php        PHP5 on Apache  (with SSL support), built o...  69  \\[OK\\] php-zendserver Zend  Server  - the integrated PHP applicati...  69  \\[OK\\] million12/nginx-php Nginx  + PHP-FPM 5.5,  5.6,  7.0  (NG),  CentOS...  67  \\[OK\\] webdevops/php-nginx Nginx  with PHP-FPM 39  \\[OK\\] webdevops/php-apache Apache  with PHP-FPM (based on webdevops/php)  14  \\[OK\\] phpunit/phpunit PHPUnit  is a programmer-oriented testing f...  14  \\[OK\\] tetraweb/php              PHP 5.3,  5.4,  5.5,  5.6,  7.0  for CI and run...  12  \\[OK\\] webdevops/php             PHP (FPM and CLI) service container 10  \\[OK\\]  ...

这里我们拉取官方的镜像,标签为5.6-fpm

runoob@runoob:~/php-fpm$ docker pull php:5.6-fpm

等待下载完成后，我们就可以在本地镜像列表里查到REPOSITORY为php,标签为5.6-fpm的镜像。

runoob@runoob:~/php-fpm$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
php 5.6-fpm 025041cd3aa5  6 days ago 456.3 MB

* * *

## Nginx + PHP 部署

Nginx 部署可以查看：[Docker 安装 Nginx](https://www.runoob.com/docker/docker-install-nginx.html)，一些 Nginx 的配置参考这篇文章。

启动 PHP：

$ docker run --name  myphp-fpm -v ~/nginx/www:/www -d php:5.6-fpm

命令说明：

- **--name myphp-fpm** : 将容器命名为 myphp-fpm。
    
- **-v ~/nginx/www:/www** : 将主机中项目的目录 www 挂载到容器的 /www
    

创建 ~/nginx/conf/conf.d 目录：

mkdir ~/nginx/conf/conf.d 

在该目录下添加 **~/nginx/conf/conf.d/runoob-test-php.conf** 文件，内容如下：

server { listen 80; server_name  localhost; location /  { root /usr/share/nginx/html; index  index.html index.htm index.php;  } error_page 500  502  503  504  /50x.html; location =  /50x.html { root /usr/share/nginx/html;  } location ~ \\\\.php$ { fastcgi_pass   php:9000; fastcgi_index  index.php; fastcgi\\_param  SCRIPT\\_FILENAME /www/$fastcgi\\_script\\_name; include        fastcgi_params;  }  }

配置文件说明：

- **php:9000**: 表示 php-fpm 服务的 URL，下面我们会具体说明。
- **/www/**: 是 **myphp-fpm** 中 php 文件的存储路径，映射到本地的 ~/nginx/www 目录。

启动 nginx：

docker run --name runoob-php-nginx -p 8083:80  -d \\ -v ~/nginx/www:/usr/share/nginx/html:ro \\ -v ~/nginx/conf/conf.d:/etc/nginx/conf.d:ro \\ --link myphp-fpm:php \\
    nginx

- **-p 8083:80**: 端口映射，把 **nginx** 中的 80 映射到本地的 8083 端口。
- **~/nginx/www**: 是本地 html 文件的存储目录，/usr/share/nginx/html 是容器内 html 文件的存储目录。
- **~/nginx/conf/conf.d**: 是本地 nginx 配置文件的存储目录，/etc/nginx/conf.d 是容器内 nginx 配置文件的存储目录。
- **--link myphp-fpm:php**: 把 **myphp-fpm** 的网络并入 ***nginx***，并通过修改 **nginx** 的 /etc/hosts，把域名 **php** 映射成 127.0.0.1，让 nginx 通过 php:9000 访问 php-fpm。

接下来我们在 ~/nginx/www 目录下创建 index.php，代码如下：

<?php
echo phpinfo();  ?>

浏览器打开 **http://127.0.0.1:8083/index.php**，显示如下：

<img width="835" height="443" src="/images/01a2286acbc2482fb1f3c055a0daa370.jpg"/>', 36, ' data 目录将映射为 mysql 容器配置的数据文件存放路径
 logs 目录将映射为 mysql 容器的日志目录
 conf 目录里的配置文件将映射为 mysql 容器的配置文件
');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (17, null, 5, 'Docker教程', 21, 'Docker 安装 Node.js', '# Docker 安装 Node.js

Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境，是一个让 JavaScript 运行在服务端的开发平台。

### 1、查看可用的 Node 版本

访问 Node 镜像库地址： https://hub.docker.com/_/node?tab=tags。

可以通过 Sort by 查看其他版本的 Node，默认是最新版本 **node:latest**。

[<img width="835" height="635" src="/images/18260ea6d38a4726ab16a3fb589aa162.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-node1.png)

你也可以在下拉列表中找到其他你想要的版本：

[![](/images/6948a9b3f3e94d6ebadc9d23f06eecbc.png)](https://www.runoob.com/wp-content/uploads/2019/11/docker-node2.png)

此外，我们还可以用 docker search node 命令来查看可用版本：

$ docker search node

### 2、取最新版的 node 镜像

这里我们拉取官方的最新版本的镜像：

$ docker pull node:latest

[<img width="835" height="295" src="/images/aacb88c1676e4142b16b4ebb758003e3.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-node3.png)

### 3、查看本地镜像

使用以下命令来查看是否已安装了 node

$ docker images

[<img width="835" height="179" src="/images/eb892134826a4c3285514911ac07fdf1.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-node4.png)

在上图中可以看到我们已经安装了最新版本（latest）的 node 镜像。

### 4、运行容器

安装完成后，我们可以使用以下命令来运行 node 容器：

$ docker run -itd --name node-test node

参数说明：

- **--name node-test**：容器名称。

[![](/images/fa2db547875a4616ab8f101c6c1a643f.png)](https://www.runoob.com/wp-content/uploads/2019/11/docker-node5.png)

### 5、安装成功

最后进入查看容器运行的 node 版本:

$ docker exec  -it node-test /bin/bash
root@6c5d265c68a6:/# node -v

[![](/images/d397a10dcc24405fbd47280a11d87e81.png)](https://www.runoob.com/wp-content/uploads/2019/11/docker-node6.png)', 31, 'Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境，是一个让 JavaScript 运行在服务端的开发平台。
1、查看可用的 Node 版本
访问 Node 镜像库地址： https://hub.docker.com/_/node?tab=tags。
可以通过 Sort by 查看其他版本的 Node，默认是最新版本 node:latest。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (18, null, 5, 'Docker教程', 20, 'Docker 安装 Nginx', '# Docker 安装 Nginx

Nginx 是一个高性能的 HTTP 和反向代理 web 服务器，同时也提供了 IMAP/POP3/SMTP 服务 。

### 1、查看可用的 Nginx 版本

访问 Nginx 镜像库地址： https://hub.docker.com/_/nginx?tab=tags。

可以通过 Sort by 查看其他版本的 Nginx，默认是最新版本 **nginx:latest**。

[<img width="835" height="642" src="/images/32816e1c6d79463b9c1921e6bf712076.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-nginx1.png)

你也可以在下拉列表中找到其他你想要的版本：

[![](/images/04b35ade3c4e439e996f0fa375752786.png)](https://www.runoob.com/wp-content/uploads/2016/06/docker-nginx2.png)

此外，我们还可以用 docker search nginx 命令来查看可用版本：

$ docker search nginx
NAME                      DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
nginx Official build of Nginx.  3260  \\[OK\\] jwilder/nginx-proxy Automated  Nginx reverse proxy for docker c...  674  \\[OK\\] richarvey/nginx-php-fpm Container running Nginx  + PHP-FPM capable ...  207  \\[OK\\] million12/nginx-php Nginx  + PHP-FPM 5.5,  5.6,  7.0  (NG),  CentOS...  67  \\[OK\\] maxexcloo/nginx-php Docker framework container with  Nginx  and  ...  57  \\[OK\\]  ...

### 2、取最新版的 Nginx 镜像

这里我们拉取官方的最新版本的镜像：

$ docker pull nginx:latest

[<img width="835" height="179" src="/images/756f41c6fb20495ab5f9c92d08dcd5a5.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-nginx3.png)

### 3、查看本地镜像

使用以下命令来查看是否已安装了 nginx：

$ docker images

[<img width="835" height="163" src="/images/c3de274c1722416a98560e1bc9c5df99.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-nginx4.png)

在上图中可以看到我们已经安装了最新版本（latest）的 nginx 镜像。

### 4、运行容器

安装完成后，我们可以使用以下命令来运行 nginx 容器：

$ docker run --name nginx-test -p 8080:80  -d nginx

参数说明：

- **--name nginx-test**：容器名称。
- **-p 8080:80**： 端口进行映射，将本地 8080 端口映射到容器内部的 80 端口。
- **-d nginx**： 设置容器在在后台一直运行。

[<img width="835" height="47" src="/images/ca2f42be026c4214afc70f92a2008708.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-nginx5.png)

### 5、安装成功

最后我们可以通过浏览器可以直接访问 8080 端口的 nginx 服务：

[<img width="835" height="366" src="/images/494ac2565104490bad0ccb69a53e252a.png"/>](https://www.runoob.com/wp-content/uploads/2016/06/docker-nginx6.png)', 20, 'Nginx 是一个高性能的 HTTP 和反向代理 web 服务器，同时也提供了 IMAP/POP3/SMTP 服务 。
1、查看可用的 Nginx 版本
访问 Nginx 镜像库地址： https://hub.docker.com/_/nginx?tab=tags。
可以通过 Sort by 查看其他版本的 Nginx，默认是最新版本 nginx:latest。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (19, null, 5, 'Docker教程', 19, 'Docker 安装 CentOS', '# Docker 安装 CentOS

CentOS（Community Enterprise Operating System）是 Linux 发行版之一，它是来自于 Red Hat Enterprise Linux(RHEL) 依照开放源代码规定发布的源代码所编译而成。由于出自同样的源代码，因此有些要求高度稳定性的服务器以 CentOS 替代商业版的 Red Hat Enterprise Linux 使用。

### 1、查看可用的 CentOS 版本

访问 CentOS 镜像库地址：https://hub.docker.com/_/centos?tab=tags&page=1。

可以通过 Sort by 查看其他版本的 CentOS 。默认是最新版本 centos:latest 。

[<img width="835" height="639" src="/images/07bc06b243924106822912625b674c13.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-centos1.png)

你也可以在下拉列表中找到其他你想要的版本：

[![](/images/2fa9a73da6f349b58c3e90ac7df428ca.png)](https://www.runoob.com/wp-content/uploads/2019/11/docker-centos2.png)

### 2、拉取指定版本的 CentOS 镜像，这里我们安装指定版本为例(centos7):

$ docker pull centos:centos7

[<img width="835" height="122" src="/images/12716846a7244587ac8a3772fd5c153c.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-centos3.png)

### 3、查看本地镜像

使用以下命令来查看是否已安装了 centos7：

$ docker images

[<img width="835" height="88" src="/images/8322b49d3cbe43819f2ab43f27b930b9.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-centos4.png)

### 4、运行容器，并且可以通过 exec 命令进入 CentOS 容器。

$ docker run -itd --name centos-test centos:centos7

[<img width="835" height="135" src="/images/8016c2b7f2aa49308e058aa9e8fa354b.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/dcoker-centos6.png)

### 5、安装成功

最后我们可以通过 docker ps 命令查看容器的运行信息：

[<img width="835" height="56" src="/images/b09c350aca4046d09ed9061c185b5ee1.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-centos7.png)', 23, 'CentOS（Community Enterprise Operating System）是 Linux 发行版之一，它是来自于 Red Hat Enterprise Linux(RHEL) 依照开放源代码规定发布的源代码所编译而成。由于出自同样的源代码，因此有些要求高度稳定性的服务器以 CentOS 替代商业版的 Red Hat Enterprise Linux 使用。
1、查看可用的 CentOS 版本
访问 CentOS 镜像库地址：https://hub.docker.com/_/centos?tab=tags&page=1。
可以通过 Sort by 查看其他版本的 CentOS 。默认是最新版本 centos:latest 。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (20, null, 5, 'Docker教程', 18, 'Docker 安装 Ubuntu', '# Docker 安装 Ubuntu

Ubuntu 是基于 Debian 的 Linux 操作系统。

### 1、查看可用的 Ubuntu 版本

访问 Ubuntu 镜像库地址： https://hub.docker.com/_/ubuntu?tab=tags&page=1。

可以通过 Sort by 查看其他版本的 Ubuntu。默认是最新版本 ubuntu:latest 。

<img width="835" height="494" src="/images/348616472ff0414bb901e1755793460c.jpg"/>

你也可以在下拉列表中找到其他你想要的版本：

![](/images/e620f8ac86464f278ce33889967c0ed9.jpg)

### 2、拉取最新版的 Ubuntu 镜像

$ docker pull ubuntu

或者：

$ docker pull ubuntu:latest

[<img width="835" height="201" src="/images/428d60b4141f4d848da0fff65a99e27d.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-ubuntu1.png)

### 3、查看本地镜像

$ docker images

[<img width="835" height="56" src="/images/0347b24c87df4d6082de6e4bb90c9013.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-ubuntu2.png)

在上图中可以看到我们已经安装了最新版本的 ubuntu。

### 4、运行容器，并且可以通过 exec 命令进入 ubuntu 容器

$ docker run -itd --name ubuntu-test ubuntu

[<img width="835" height="131" src="/images/009f8bd95b2148b4bb001a896225ef05.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-ubuntu3.png)

### 5、安装成功

最后我们可以通过 docker ps 命令查看容器的运行信息：

[<img width="835" height="47" src="/images/17a95fa13baa4891a70385e00393c221.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-ubuntu4.png)', 18, 'Ubuntu 是基于 Debian 的 Linux 操作系统。
1、查看可用的 Ubuntu 版本
访问 Ubuntu 镜像库地址： https://hub.docker.com/
可以通过 Sort by 查看其他版本的 Ubuntu。默认是最新版本 ubuntu:latest 。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (21, null, 5, 'Docker教程', 17, 'Swarm 集群管理', '# Swarm 集群管理

### 简介

Docker Swarm 是 Docker 的集群管理工具。它将 Docker 主机池转变为单个虚拟 Docker 主机。 Docker Swarm 提供了标准的 Docker API，所有任何已经与 Docker 守护程序通信的工具都可以使用 Swarm 轻松地扩展到多个主机。

支持的工具包括但不限于以下各项：

- Dokku
- Docker Compose
- Docker Machine
- Jenkins

### 原理

如下图所示，swarm 集群由管理节点（manager）和工作节点（work node）构成。

- **swarm mananger**：负责整个集群的管理工作包括集群配置、服务管理等所有跟集群有关的工作。
- **work node**：即图中的 available node，主要负责运行相应的服务来执行任务（task）。

[![](/images/2793b4add2d9452c9ecee261e1250f51.png)](https://www.runoob.com/wp-content/uploads/2019/11/services-diagram.png)

* * *

## 使用

以下示例，均以 Docker Machine 和 virtualbox 进行介绍，确保你的主机已安装 virtualbox。

### 1、创建 swarm 集群管理节点（manager）

创建 docker 机器：

$ docker-machine create -d virtualbox swarm-manager

[<img width="835" height="471" src="/images/468143988c5845da984aed02a2afb19e.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm1.png)

初始化 swarm 集群，进行初始化的这台机器，就是集群的管理节点。

$ docker-machine ssh swarm-manager
$ docker swarm init --advertise-addr 192.168.99.107  #这里的 IP 为创建机器时分配的 ip。

[<img width="835" height="108" src="/images/532cb82f02eb452ba1f12b0a7ffb5dc2.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm2.png)

以上输出，证明已经初始化成功。需要把以下这行复制出来，在增加工作节点时会用到：

docker swarm join --token SWMTKN-1-4oogo9qziq768dma0uh3j0z0m5twlm10iynvz7ixza96k6jh9p-ajkb6w7qd06y1e33yrgko64sk 192.168.99.107:2377

### 2、创建 swarm 集群工作节点（worker）

这里直接创建好俩台机器，swarm-worker1 和 swarm-worker2 。

[<img width="835" height="102" src="/images/ef1f48be91d8403fa434b045c2a30170.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm3.png)

分别进入两个机器里，指定添加至上一步中创建的集群，这里会用到上一步复制的内容。

[<img width="835" height="155" src="/images/ed7f8371258a4a8a85aa2bc63b10db99.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm4.png)

以上数据输出说明已经添加成功。

上图中，由于上一步复制的内容比较长，会被自动截断，实际上在图运行的命令如下：

docker@swarm-worker1:~$ docker swarm join --token SWMTKN-1-4oogo9qziq768dma0uh3j0z0m5twlm10iynvz7ixza96k6jh9p-ajkb6w7qd06y1e33yrgko64sk 192.168.99.107:2377

### 3、查看集群信息

进入管理节点，执行：docker info 可以查看当前集群的信息。

$ docker info

[<img width="835" height="731" src="/images/836c778713064f2aa7cc189277b56473.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm5.png)

通过画红圈的地方，可以知道当前运行的集群中，有三个节点，其中有一个是管理节点。

### 4、部署服务到集群中

**注意**：跟集群管理有关的任何操作，都是在管理节点上操作的。

以下例子，在一个工作节点上创建一个名为 helloworld 的服务，这里是随机指派给一个工作节点：

docker@swarm-manager:~$ docker service create --replicas 1  --name helloworld alpine ping docker.com

[<img width="835" height="102" src="/images/84f58d29b2b64b929b98b65bda9fb839.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm6.png)

### 5、查看服务部署情况

查看 helloworld 服务运行在哪个节点上，可以看到目前是在 swarm-worker1 节点：

docker@swarm-manager:~$ docker service ps helloworld

[<img width="835" height="52" src="/images/8d94d038458b4840acb7c265dce8c02f.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm7.png)

查看 helloworld 部署的具体信息：

docker@swarm-manager:~$ docker service inspect --pretty helloworld

[<img width="835" height="416" src="/images/a99b18a63cdf41beb3a9a3dbb506f8a9.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm8.png)

### 6、扩展集群服务

我们将上述的 helloworld 服务扩展到俩个节点。

docker@swarm-manager:~$ docker service scale helloworld=2

[<img width="835" height="147" src="/images/197a46ae916445d1ab2e82781da4d1ad.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm9.png)

可以看到已经从一个节点，扩展到两个节点。

[<img width="835" height="85" src="/images/2a01d537965a4c30b68c78cc08e75a07.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm10.png)

### 7、删除服务

docker@swarm-manager:~$ docker service rm helloworld

[![](/images/2a3a53994b074c3986647c468d81a99c.png)](https://www.runoob.com/wp-content/uploads/2019/11/swarm11.png)

查看是否已删除：

[![](/images/dc55d72c485b48589469ded12fb5f82f.png)](https://www.runoob.com/wp-content/uploads/2019/11/swarm12.png)

### 8、滚动升级服务

以下实例，我们将介绍 redis 版本如何滚动升级至更高版本。

创建一个 3.0.6 版本的 redis。

docker@swarm-manager:~$ docker service create --replicas 1  --name redis --update-delay 10s redis:3.0.6

[<img width="835" height="88" src="/images/61cb4668c7f740cda984ad1add722f18.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm13.png)

滚动升级 redis 。

docker@swarm-manager:~$ docker service update --image redis:3.0.7 redis

[<img width="835" height="103" src="/images/bb4105e9c87541fea5b608edf4aa3491.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm14.png)

看图可以知道 redis 的版本已经从 3.0.6 升级到了 3.0.7，说明服务已经升级成功。

### 9、停止某个节点接收新的任务

查看所有的节点：

docker@swarm-manager:~$ docker node ls

[<img width="835" height="69" src="/images/cfcc9254facd4bcc8284a27f987eaecb.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm16.png)

可以看到目前所有的节点都是 Active, 可以接收新的任务分配。

停止节点 swarm-worker1：

[<img width="835" height="113" src="/images/207100949de747fa83c9a65347e8dae0.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm17.png)

**注意**：swarm-worker1 状态变为 Drain。不会影响到集群的服务，只是 swarm-worker1 节点不再接收新的任务，集群的负载能力有所下降。

可以通过以下命令重新激活节点：

docker@swarm-manager:~$  docker node update --availability active swarm-worker1

[<img width="835" height="95" src="/images/4ecf07e4d96a4c09be2892310af965b2.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/swarm19.png)', 17, '简介
Docker Swarm 是 Docker 的集群管理工具。它将 Docker 主机池转变为单个虚拟 Docker 主机。 Docker Swarm 提供了标准的 Docker API，所有任何已经与 Docker 守护程序通信的工具都可以使用 Swarm 轻松地扩展到多个主机。
支持的工具包括但不限于以下各项：
Dokku
Docker Compose
Docker Machine
Jenkins');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (22, null, 5, 'Docker教程', 16, 'Docker Machine', '# Docker Machine

### 简介

Docker Machine 是一种可以让您在虚拟主机上安装 Docker 的工具，并可以使用 docker-machine 命令来管理主机。

Docker Machine 也可以集中管理所有的 docker 主机，比如快速的给 100 台服务器安装上 docker。

![](/images/6849ba9c8fad4fa2bedf6e8d0d6d88e5.png)

Docker Machine 管理的虚拟主机可以是机上的，也可以是云供应商，如阿里云，腾讯云，AWS，或 DigitalOcean。

使用 docker-machine 命令，您可以启动，检查，停止和重新启动托管主机，也可以升级 Docker 客户端和守护程序，以及配置 Docker 客户端与您的主机进行通信。

![](/images/2bb7c4db48844a9aac53834fcfa7fb2b.png)

* * *

## 安装

安装 Docker Machine 之前你需要先安装 Docker。

Docker Machine 可以在多种平台上安装使用，包括 Linux 、MacOS 以及 windows。

### Linux 安装命令

$ base=https://github.com/docker/machine/releases/download/v0.16.0 && curl -L $base/docker-machine-$(uname -s)-$(uname -m)  >/tmp/docker-machine && sudo mv /tmp/docker-machine /usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine

### macOS 安装命令

$ base=https://github.com/docker/machine/releases/download/v0.16.0 && curl -L $base/docker-machine-$(uname -s)-$(uname -m)  >/usr/local/bin/docker-machine && chmod +x /usr/local/bin/docker-machine

### Windows 安装命令

如果你是 Windows 平台，可以使用 [Git BASH](https://git-for-windows.github.io/)，并输入以下命令：

$ base=https://github.com/docker/machine/releases/download/v0.16.0 && mkdir -p "$HOME/bin"  && curl -L $base/docker-machine-Windows-x86_64.exe >  "$HOME/bin/docker-machine.exe"  && chmod +x "$HOME/bin/docker-machine.exe"

查看是否安装成功：

$ docker-machine version
docker-machine version 0.16.0, build 9371605

* * *

## 使用

本章通过 virtualbox 来介绍 docker-machine 的使用方法。其他云服务商操作与此基本一致。具体可以参考每家服务商的指导文档。

### 1、列出可用的机器

可以看到目前只有这里默认的 default 虚拟机。

$ docker-machine ls

[<img width="835" height="70" src="/images/2ed212957b3649639145d9e4211617b1.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-machine1.png)

### 2、创建机器

创建一台名为 test 的机器。

$ docker-machine create --driver virtualbox test

- **--driver**：指定用来创建机器的驱动类型，这里是 virtualbox。

[<img width="835" height="500" src="/images/d3c6a489fb614fb89bb1aef742488fbb.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-machine2.png)

### 3、查看机器的 ip

$ docker-machine ip test

[![](/images/87a686197d3d4be9a70f100ed64f4b5d.png)](https://www.runoob.com/wp-content/uploads/2019/11/docker-machine3.png)

### 4、停止机器

$ docker-machine stop test

[![](/images/0f5d62bf8258420cb3d1e28c62c878d8.png)](https://www.runoob.com/wp-content/uploads/2019/11/docker-machine4.png)

### 5、启动机器

$ docker-machine start test

[<img width="835" height="115" src="/images/ec7f5e4288f8484e9c672797fa1e26f7.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-machine5.png)

### 6、进入机器

$ docker-machine ssh test

[<img width="835" height="126" src="/images/dd06832e86f94ea490c123a22179ee8d.png"/>](https://www.runoob.com/wp-content/uploads/2019/11/docker-machine6.png)

### docker-machine 命令参数说明

- **docker-machine active**：查看当前激活状态的 Docker 主机。

    $ docker-machine ls

    NAME      ACTIVE   DRIVER         STATE     URL
    dev - virtualbox Running tcp://192.168.99.103:2376 staging * digitalocean Running tcp://203.0.113.81:2376 $ echo $DOCKER_HOST
    tcp://203.0.113.81:2376 $ docker-machine active
    staging

- **config**：查看当前激活状态 Docker 主机的连接信息。
- **creat**：创建 Docker 主机
- **env**：显示连接到某个主机需要的环境变量
- **inspect**： 以 json 格式输出指定Docker的详细信息
- **ip**： 获取指定 Docker 主机的地址
- **kill**： 直接杀死指定的 Docker 主机
- **ls**： 列出所有的管理主机
- **provision**： 重新配置指定主机
- **regenerate-certs**： 为某个主机重新生成 TLS 信息
- **restart**： 重启指定的主机
- **rm**： 删除某台 Docker 主机，对应的虚拟机也会被删除
- **ssh**： 通过 SSH 连接到主机上，执行命令
- **scp**： 在 Docker 主机之间以及 Docker 主机和本地主机之间通过 scp 远程复制数据
- **mount**： 使用 SSHFS 从计算机装载或卸载目录
- **start**： 启动一个指定的 Docker 主机，如果对象是个虚拟机，该虚拟机将被启动
- **status**： 获取指定 Docker 主机的状态(包括：Running、Paused、Saved、Stopped、Stopping、Starting、Error)等
- **stop**： 停止一个指定的 Docker 主机
- **upgrade**： 将一个指定主机的 Docker 版本更新为最新
- **url**： 获取指定 Docker 主机的监听 URL
- **version**： 显示 Docker Machine 的版本或者主机 Docker 版本
- **help**： 显示帮助信息
', 42, 'Docker Machine 是一种可以让您在虚拟主机上安装 Docker 的工具，并可以使用 docker-machine 命令来管理主机。
Docker Machine 也可以集中管理所有的 docker 主机，比如快速的给 100 台服务器安装上 docker。

Docker Machine 管理的虚拟主机可以是机上的，也可以是云供应商，如阿里云，腾讯云，AWS，或 DigitalOcean。
使用 docker-machine 命令，您可以启动，检查，停止和重新启动托管主机，也可以升级 Docker 客户端和守护程序，以及配置 Docker 客户端与您的主机进行通信。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (23, null, 5, 'Docker教程', 15, 'Docker Compose', '# Docker Compose

### Compose 简介

Compose 是用于定义和运行多容器 Docker 应用程序的工具。通过 Compose，您可以使用 YML 文件来配置应用程序需要的所有服务。然后，使用一个命令，就可以从 YML 文件配置中创建并启动所有服务。

如果你还不了解 YML 文件配置，可以先阅读 [YAML 入门教程](https://www.runoob.com/w3cnote/yaml-intro.html)。

Compose 使用的三个步骤：

- 使用 Dockerfile 定义应用程序的环境。
    
- 使用 docker-compose.yml 定义构成应用程序的服务，这样它们可以在隔离环境中一起运行。
    
- 最后，执行 docker-compose up 命令来启动并运行整个应用程序。
    

docker-compose.yml 的配置案例如下（配置参数参考下文）：

## 实例

\\# yaml 配置实例
version: ''3''
services:
  web:
    build: .
    ports:
   \\- "5000:5000"
    volumes:
   \\- .:/code
    \\- logvolume01:/var/log
    links:
   \\- redis
  redis:
    image: redis
volumes:
  logvolume01: {}

* * *

## Compose 安装

Linux

Linux 上我们可以从 Github 上下载它的二进制包来使用，最新发行的版本地址：https://github.com/docker/compose/releases。

运行以下命令以下载 Docker Compose 的当前稳定版本：

$ sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)"  -o /usr/local/bin/docker-compose

要安装其他版本的 Compose，请替换 1.24.1。

将可执行权限应用于二进制文件：

$ sudo chmod +x /usr/local/bin/docker-compose

创建软链：

$ sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

测试是否安装成功：

$ docker-compose --version
cker-compose version 1.24.1, build 4667896b

**注意**： 对于 alpine，需要以下依赖包： py-pip，python-dev，libffi-dev，openssl-dev，gcc，libc-dev，和 make。

### macOS

Mac 的 Docker 桌面版和 Docker Toolbox 已经包括 Compose 和其他 Docker 应用程序，因此 Mac 用户不需要单独安装 Compose。Docker 安装说明可以参阅 [MacOS Docker 安装](https://www.runoob.com/docker/macos-docker-install.html)。

### windows PC

Windows 的 Docker 桌面版和 Docker Toolbox 已经包括 Compose 和其他 Docker 应用程序，因此 Windows 用户不需要单独安装 Compose。Docker 安装说明可以参阅 [Windows Docker 安装](https://www.runoob.com/docker/windows-docker-install.html)。

* * *

## 使用

### 1、准备

创建一个测试目录：

$ mkdir composetest
$ cd composetest

在测试目录中创建一个名为 app.py 的文件，并复制粘贴以下内容：

## composetest/app.py 文件代码

import time

import redis
from flask import Flask

app = Flask(\\_\\_name\\_\\_)
cache = redis.Redis(host=''redis'', port=6379)

def get\\_hit\\_count():
    retries = 5
    while True:
        try:
            return cache.incr(''hits'')
        except redis.exceptions.ConnectionError as exc:
            if retries == 0:
                raise exc
            retries -= 1
            time.sleep(0.5)

@app.route(''/'')
def hello():
    count = get\\_hit\\_count()
    return ''Hello World! I have been seen {} times.\\\\n''.format(count)

在此示例中，redis 是应用程序网络上的 redis 容器的主机名，该主机使用的端口为 6379。

在 composetest 目录中创建另一个名为 requirements.txt 的文件，内容如下：

flask
redis

### 2、创建 Dockerfile 文件

在 composetest 目录中，创建一个名为的文件 Dockerfile，内容如下：

FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP app.py
ENV FLASK\\_RUN\\_HOST 0.0.0.0 RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY .  . CMD \\["flask",  "run"\\]

**Dockerfile 内容解释：**

- **FROM python:3.7-alpine**: 从 Python 3.7 映像开始构建镜像。
- **WORKDIR /code**: 将工作目录设置为 /code。
- ENV FLASK_APP app.py
    ENV FLASK\\_RUN\\_HOST 0.0.0.0
    
    设置 flask 命令使用的环境变量。
    
- **RUN apk add --no-cache gcc musl-dev linux-headers**: 安装 gcc，以便诸如 MarkupSafe 和 SQLAlchemy 之类的 Python 包可以编译加速。
- COPY requirements.txt requirements.txt
    RUN pip install -r requirements.txt
    
    复制 requirements.txt 并安装 Python 依赖项。
    
- **COPY . .**: 将 . 项目中的当前目录复制到 . 镜像中的工作目录。
- **CMD \\["flask", "run"\\]**: 容器提供默认的执行命令为：flask run。

### 3、创建 docker-compose.yml

在测试目录中创建一个名为 docker-compose.yml 的文件，然后粘贴以下内容：

## docker-compose.yml 配置文件

\\# yaml 配置
version: ''3''
services:
  web:
    build: .
    ports:
     \\- "5000:5000"
  redis:
    image: "redis:alpine"

该 Compose 文件定义了两个服务：web 和 redis。

- **web**：该 web 服务使用从 Dockerfile 当前目录中构建的镜像。然后，它将容器和主机绑定到暴露的端口 5000。此示例服务使用 Flask Web 服务器的默认端口 5000 。
- **redis**：该 redis 服务使用 Docker Hub 的公共 Redis 映像。

### 4、使用 Compose 命令构建和运行您的应用

在测试目录中，执行以下命令来启动应用程序：

docker-compose up

如果你想在后台执行该服务可以加上 -d 参数：

docker-compose up -d

* * *

## yml 配置指令参考

### version

指定本 yml 依从的 compose 哪个版本制定的。

### build

指定为构建镜像上下文路径：

例如 webapp 服务，指定为从上下文路径 ./dir/Dockerfile 所构建的镜像：

version:  "3.7" services: webapp: build:  ./dir

或者，作为具有在上下文指定的路径的对象，以及可选的 Dockerfile 和 args：

version:  "3.7" services: webapp: build: context:  ./dir
      dockerfile:  Dockerfile-alternate
      args: buildno:  1 labels:  -  "com.example.description=Accounting webapp"  -  "com.example.department=Finance"  -  "com.example.label-with-empty-value" target: prod

- context：上下文路径。
- dockerfile：指定构建镜像的 Dockerfile 文件名。
- args：添加构建参数，这是只能在构建过程中访问的环境变量。
- labels：设置构建镜像的标签。
- target：多层构建，可以指定构建哪一层。

### cap\\_add，cap\\_drop

添加或删除容器拥有的宿主机的内核功能。

cap_add:  - ALL \\# 开启全部权限 cap_drop:  - SYS_PTRACE \\# 关闭 ptrace权限

### cgroup_parent

为容器指定父 cgroup 组，意味着将继承该组的资源限制。

cgroup_parent: m-executor-abcd

### command

覆盖容器启动的默认命令。

command:  \\["bundle",  "exec",  "thin",  "-p",  "3000"\\]

### container_name

指定自定义容器名称，而不是生成的默认名称。

container_name:  my-web-container

### depends_on

设置依赖关系。

- docker-compose up ：以依赖性顺序启动服务。在以下示例中，先启动 db 和 redis ，才会启动 web。
- docker-compose up SERVICE ：自动包含 SERVICE 的依赖项。在以下示例中，docker-compose up web 还将创建并启动 db 和 redis。
- docker-compose stop ：按依赖关系顺序停止服务。在以下示例中，web 在 db 和 redis 之前停止。

version:  "3.7" services: web: build:  . depends_on:  - db - redis
  redis: image: redis
  db: image: postgres

注意：web 服务不会等待 redis db 完全启动 之后才启动。

### deploy

指定与服务的部署和运行有关的配置。只在 swarm 模式下才会有用。

version:  "3.7" services: redis: image: redis:alpine
    deploy: mode：replicated
      replicas:  6 endpoint_mode: dnsrr
      labels: description:  "This redis service label" resources: limits: cpus:  ''0.50'' memory:  50M reservations: cpus:  ''0.25'' memory:  20M restart_policy: condition: on-failure
        delay:  5s max_attempts:  3 window:  120s

可以选参数：

**endpoint_mode**：访问集群服务的方式。

endpoint_mode: vip \\# Docker 集群服务一个对外的虚拟 ip。所有的请求都会通过这个虚拟 ip 到达集群服务内部的机器。 endpoint_mode: dnsrr \\# DNS 轮询（DNSRR）。所有的请求会自动轮询获取到集群 ip 列表中的一个 ip 地址。

**labels**：在服务上设置标签。可以用容器上的 labels（跟 deploy 同级的配置） 覆盖 deploy 下的 labels。

**mode**：指定服务提供的模式。

- **replicated**：复制服务，复制指定服务到集群的机器上。
    
- **global**：全局服务，服务将部署至集群的每个节点。
    
- 图解：下图中黄色的方块是 replicated 模式的运行情况，灰色方块是 global 模式的运行情况。
    
    <img width="786" height="562" src="/images/e876147d86074e07a074280f4cfb3f39.png"/>
    

**replicas：mode** 为 replicated 时，需要使用此参数配置具体运行的节点数量。

**resources**：配置服务器资源使用的限制，例如上例子，配置 redis 集群运行需要的 cpu 的百分比 和 内存的占用。避免占用资源过高出现异常。

**restart_policy**：配置如何在退出容器时重新启动容器。

- condition：可选 none，on-failure 或者 any（默认值：any）。
- delay：设置多久之后重启（默认值：0）。
- max_attempts：尝试重新启动容器的次数，超出次数，则不再尝试（默认值：一直重试）。
- window：设置容器重启超时时间（默认值：0）。

**rollback_config**：配置在更新失败的情况下应如何回滚服务。

- parallelism：一次要回滚的容器数。如果设置为0，则所有容器将同时回滚。
- delay：每个容器组回滚之间等待的时间（默认为0s）。
- failure_action：如果回滚失败，该怎么办。其中一个 continue 或者 pause（默认pause）。
- monitor：每个容器更新后，持续观察是否失败了的时间 (ns|us|ms|s|m|h)（默认为0s）。
- max\\_failure\\_ratio：在回滚期间可以容忍的故障率（默认为0）。
- order：回滚期间的操作顺序。其中一个 stop-first（串行回滚），或者 start-first（并行回滚）（默认 stop-first ）。

**update_config**：配置应如何更新服务，对于配置滚动更新很有用。

- parallelism：一次更新的容器数。
- delay：在更新一组容器之间等待的时间。
- failure_action：如果更新失败，该怎么办。其中一个 continue，rollback 或者pause （默认：pause）。
- monitor：每个容器更新后，持续观察是否失败了的时间 (ns|us|ms|s|m|h)（默认为0s）。
- max\\_failure\\_ratio：在更新过程中可以容忍的故障率。
- order：回滚期间的操作顺序。其中一个 stop-first（串行回滚），或者 start-first（并行回滚）（默认stop-first）。

**注**：仅支持 V3.4 及更高版本。

### devices

指定设备映射列表。

devices:  -  "/dev/ttyUSB0:/dev/ttyUSB0"

### dns

自定义 DNS 服务器，可以是单个值或列表的多个值。

dns:  8.8.8.8 dns:  -  8.8.8.8  -  9.9.9.9

### dns_search

自定义 DNS 搜索域。可以是单个值或列表。

dns_search: example.com

dns_search:  - dc1.example.com - dc2.example.com

### entrypoint

覆盖容器默认的 entrypoint。

entrypoint:  /code/entrypoint.sh

也可以是以下格式：

entrypoint:  - php -  -d - zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20100525/xdebug.so -  -d - memory_limit=-1  - vendor/bin/phpunit

### env_file

从文件添加环境变量。可以是单个值或列表的多个值。

env_file:  .env

也可以是列表格式：

env_file:  -  ./common.env -  ./apps/web.env -  /opt/secrets.env

### environment

添加环境变量。您可以使用数组或字典、任何布尔值，布尔值需要用引号引起来，以确保 YML 解析器不会将其转换为 True 或 False。

environment: RACK_ENV: development
  SHOW:  ''true''

### expose

暴露端口，但不映射到宿主机，只被连接的服务访问。

仅可以指定内部端口为参数：

expose:  -  "3000"  -  "8000"

### extra_hosts

添加主机名映射。类似 docker client --add-host。

extra_hosts:  -  "somehost:162.242.195.82"  -  "otherhost:50.31.209.229"

以上会在此服务的内部容器中 /etc/hosts 创建一个具有 ip 地址和主机名的映射关系：

162.242.195.82 somehost 50.31.209.229 otherhost

### healthcheck

用于检测 docker 服务是否健康运行。

healthcheck: test:  \\["CMD",  "curl",  "-f",  "http://localhost"\\]  \\# 设置检测程序 interval:  1m30s  \\# 设置检测间隔 timeout:  10s  \\# 设置检测超时时间 retries:  3  \\# 设置重试次数 start_period:  40s  \\# 启动后，多少秒开始启动检测程序

### image

指定容器运行的镜像。以下格式都可以：

image: redis
image: ubuntu:14.04 image: tutum/influxdb
image: example-registry.com:4000/postgresql
image: a4bc65fd \\# 镜像id

### logging

服务的日志记录配置。

driver：指定服务容器的日志记录驱动程序，默认值为json-file。有以下三个选项

driver:  "json-file" driver:  "syslog" driver:  "none"

仅在 json-file 驱动程序下，可以使用以下参数，限制日志得数量和大小。

logging: driver: json-file
  options: max-size:  "200k"  \\# 单个文件大小为200k max-file:  "10"  \\# 最多10个文件

当达到文件限制上限，会自动删除旧得文件。

syslog 驱动程序下，可以使用 syslog-address 指定日志接收地址。

logging: driver: syslog
  options: syslog-address:  "tcp://192.168.0.42:123"

### network_mode

设置网络模式。

network_mode:  "bridge" network_mode:  "host" network_mode:  "none" network_mode:  "service:\\[service name\\]" network_mode:  "container:\\[container name/id\\]"

networks

配置容器连接的网络，引用顶级 networks 下的条目 。

services: some-service: networks: some-network: aliases:  - alias1
      other-network: aliases:  - alias2
networks: some-network:  \\# Use a custom driver driver: custom-driver-1 other-network:  \\# Use a custom driver which takes special options driver: custom-driver-2

**aliases** ：同一网络上的其他容器可以使用服务名称或此别名来连接到对应容器的服务。

### restart

- no：是默认的重启策略，在任何情况下都不会重启容器。
- always：容器总是重新启动。
- on-failure：在容器非正常退出时（退出状态非0），才会重启容器。
- unless-stopped：在容器退出时总是重启容器，但是不考虑在Docker守护进程启动时就已经停止了的容器

restart:  "no" restart: always
restart: on-failure
restart:  unless-stopped

注：swarm 集群模式，请改用 restart_policy。

### secrets

存储敏感数据，例如密码：

version:  "3.1" services: mysql: image: mysql
  environment: MYSQL\\_ROOT\\_PASSWORD_FILE:  /run/secrets/my_secret
  secrets:  - my_secret

secrets: my_secret: file:  ./my_secret.txt

### security_opt

修改容器默认的 schema 标签。

security-opt：  - label:user:USER \\# 设置容器的用户标签  - label:role:ROLE \\# 设置容器的角色标签  - label:type:TYPE \\# 设置容器的安全策略标签  - label:level:LEVEL \\# 设置容器的安全等级标签

### stop\\_grace\\_period

指定在容器无法处理 SIGTERM (或者任何 stop_signal 的信号)，等待多久后发送 SIGKILL 信号关闭容器。

stop\\_grace\\_period:  1s  \\# 等待 1 秒 stop\\_grace\\_period:  1m30s  \\# 等待 1 分 30 秒 

默认的等待时间是 10 秒。

### stop_signal

设置停止容器的替代信号。默认情况下使用 SIGTERM 。

以下示例，使用 SIGUSR1 替代信号 SIGTERM 来停止容器。

stop_signal: SIGUSR1

### sysctls

设置容器中的内核参数，可以使用数组或字典格式。

sysctls: net.core.somaxconn:  1024 net.ipv4.tcp_syncookies:  0 sysctls:  - net.core.somaxconn=1024  - net.ipv4.tcp_syncookies=0

### tmpfs

在容器内安装一个临时文件系统。可以是单个值或列表的多个值。

tmpfs:  /run

tmpfs:  -  /run -  /tmp

### ulimits

覆盖容器默认的 ulimit。

ulimits: nproc:  65535 nofile: soft:  20000 hard:  40000

### volumes

将主机的数据卷或着文件挂载到容器里。

version:  "3.7" services: db: image: postgres:latest
    volumes:  -  "/localhost/postgres.sock:/var/run/postgres/postgres.sock"  -  "/localhost/data:/var/lib/postgresql/data"', 17, 'Compose 是用于定义和运行多容器 Docker 应用程序的工具。通过 Compose，您可以使用 YML 文件来配置应用程序需要的所有服务。然后，使用一个命令，就可以从 YML 文件配置中创建并启动所有服务。
如果你还不了解 YML 文件配置，可以先阅读 YAML 入门教程。
Compose 使用的三个步骤：
使用 Dockerfile 定义应用程序的环境。
使用 docker-compose.yml 定义构成应用程序的服务，这样它们可以在隔离环境中一起运行。
最后，执行 docker-compose up 命令来启动并运行整个应用程序。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (24, null, 5, 'Docker教程', 14, 'Docker Dockerfile', '# Docker Dockerfile

### 什么是 Dockerfile？

Dockerfile 是一个用来构建镜像的文本文件，文本内容包含了一条条构建镜像所需的指令和说明。

### 使用 Dockerfile 定制镜像

这里仅讲解如何运行 Dockerfile 文件来定制一个镜像，具体 Dockerfile 文件内指令详解，将在下一节中介绍，这里你只要知道构建的流程即可。

**1、下面以定制一个 nginx 镜像（构建好的镜像内会有一个 /usr/share/nginx/html/index.html 文件）**

在一个空目录下，新建一个名为 Dockerfile 文件，并在文件内添加以下内容：

FROM nginx
RUN echo ''这是一个本地构建的nginx镜像''  >  /usr/share/nginx/html/index.html

<img width="835" height="302" src="/images/c0d91a27acbf48669d7a18328111085c.png"/>

**2、FROM 和 RUN 指令的作用**

**FROM**：定制的镜像都是基于 FROM 的镜像，这里的 nginx 就是定制需要的基础镜像。后续的操作都是基于 nginx。

**RUN**：用于执行后面跟着的命令行命令。有以下俩种格式：

shell 格式：

RUN &lt;命令行命令&gt;  \\# &lt;命令行命令\\&gt; 等同于，在终端操作的 shell 命令。

exec 格式：

RUN \\["可执行文件",  "参数1",  "参数2"\\]  \\# 例如：  \\# RUN \\["./test.php", "dev", "offline"\\] 等价于 RUN ./test.php dev offline

**注意**：Dockerfile 的指令每执行一次都会在 docker 上新建一层。所以过多无意义的层，会造成镜像膨胀过大。例如：

FROM centos
RUN yum install wget
RUN wget -O redis.tar.gz "http://download.redis.io/releases/redis-5.0.3.tar.gz"
RUN tar -xvf redis.tar.gz
以上执行会创建 3 层镜像。可简化为以下格式：
FROM centos
RUN yum install wget \\
    && wget -O redis.tar.gz "http://download.redis.io/releases/redis-5.0.3.tar.gz" \\
    && tar -xvf redis.tar.gz

如上，以 && 符号连接命令，这样执行后，只会创建 1 层镜像。

### 开始构建镜像

在 Dockerfile 文件的存放目录下，执行构建动作。

以下示例，通过目录下的 Dockerfile 构建一个 nginx:v3（镜像名称:镜像标签）。

**注**：最后的 . 代表本次执行的上下文路径，下一节会介绍。

$ docker build -t nginx:v3 .

<img width="835" height="336" src="/images/3563192f9e914bf9a205d4bd2a223823.png"/>

以上显示，说明已经构建成功。

### 上下文路径

上一节中，有提到指令最后一个 . 是上下文路径，那么什么是上下文路径呢？

$ docker build -t nginx:v3 .

上下文路径，是指 docker 在构建镜像，有时候想要使用到本机的文件（比如复制），docker build 命令得知这个路径后，会将路径下的所有内容打包。

**解析**：由于 docker 的运行模式是 C/S。我们本机是 C，docker 引擎是 S。实际的构建过程是在 docker 引擎下完成的，所以这个时候无法用到我们本机的文件。这就需要把我们本机的指定目录下的文件一起打包提供给 docker 引擎使用。

如果未说明最后一个参数，那么默认上下文路径就是 Dockerfile 所在的位置。

**注意**：上下文路径下不要放无用的文件，因为会一起打包发送给 docker 引擎，如果文件过多会造成过程缓慢。

* * *

## 指令详解

### COPY

复制指令，从上下文目录中复制文件或者目录到容器里指定路径。

格式：

COPY \\[--chown=<user>:<group>\\]  <源路径1>...  &lt;目标路径&gt; COPY \\[--chown=<user>:<group>\\]  \\["&lt;源路径1&gt;",...  "&lt;目标路径&gt;"\\]

**\\[--chown=&lt;user&gt;:&lt;group&gt;\\]**：可选参数，用户改变复制到容器内文件的拥有者和属组。

**&lt;源路径&gt;**：源文件或者源目录，这里可以是通配符表达式，其通配符规则要满足 Go 的 filepath.Match 规则。例如：

COPY hom*  /mydir/ COPY hom?.txt /mydir/

**&lt;目标路径&gt;**：容器内的指定路径，该路径不用事先建好，路径不存在的话，会自动创建。

### ADD

ADD 指令和 COPY 的使用格式一致（同样需求下，官方推荐使用 COPY）。功能也类似，不同之处如下：

- ADD 的优点：在执行 &lt;源文件&gt; 为 tar 压缩文件的话，压缩格式为 gzip, bzip2 以及 xz 的情况下，会自动复制并解压到 &lt;目标路径&gt;。
- ADD 的缺点：在不解压的前提下，无法复制 tar 压缩文件。会令镜像构建缓存失效，从而可能会令镜像构建变得比较缓慢。具体是否使用，可以根据是否需要自动解压来决定。

### CMD

类似于 RUN 指令，用于运行程序，但二者运行的时间点不同:

- CMD 在docker run 时运行。
- RUN 是在 docker build。

**作用**：为启动的容器指定默认要运行的程序，程序运行结束，容器也就结束。CMD 指令指定的程序可被 docker run 命令行参数中指定要运行的程序所覆盖。

**注意**：如果 Dockerfile 中如果存在多个 CMD 指令，仅最后一个生效。

格式：

CMD <shell 命令> CMD \\["&lt;可执行文件或命令&gt;","&lt;param1&gt;","&lt;param2&gt;",...\\] CMD \\["&lt;param1&gt;","&lt;param2&gt;",...\\]  \\# 该写法是为 ENTRYPOINT 指令指定的程序提供默认参数

推荐使用第二种格式，执行过程比较明确。第一种格式实际上在运行的过程中也会自动转换成第二种格式运行，并且默认可执行文件是 sh。

### ENTRYPOINT

类似于 CMD 指令，但其不会被 docker run 的命令行参数指定的指令所覆盖，而且这些命令行参数会被当作参数送给 ENTRYPOINT 指令指定的程序。

但是, 如果运行 docker run 时使用了 --entrypoint 选项，将覆盖 CMD 指令指定的程序。

**优点**：在执行 docker run 的时候可以指定 ENTRYPOINT 运行所需的参数。

**注意**：如果 Dockerfile 中如果存在多个 ENTRYPOINT 指令，仅最后一个生效。

格式：

ENTRYPOINT \\["&lt;executeable&gt;","&lt;param1&gt;","&lt;param2&gt;",...\\]

可以搭配 CMD 命令使用：一般是变参才会使用 CMD ，这里的 CMD 等于是在给 ENTRYPOINT 传参，以下示例会提到。

示例：

假设已通过 Dockerfile 构建了 nginx:test 镜像：

FROM nginx

ENTRYPOINT \\["nginx",  "-c"\\]  \\# 定参 CMD \\["/etc/nginx/nginx.conf"\\]  \\# 变参

1、不传参运行

$ docker run  nginx:test

容器内会默认运行以下命令，启动主进程。

nginx -c /etc/nginx/nginx.conf

2、传参运行

$ docker run  nginx:test -c /etc/nginx/new.conf

容器内会默认运行以下命令，启动主进程(/etc/nginx/new.conf:假设容器内已有此文件)

nginx -c /etc/nginx/new.conf

### ENV

设置环境变量，定义了环境变量，那么在后续的指令中，就可以使用这个环境变量。

格式：

ENV &lt;key&gt;  &lt;value&gt; ENV &lt;key1&gt;=<value1>  &lt;key2&gt;=<value2>...

以下示例设置 NODE\\_VERSION = 7.2.0 ， 在后续的指令中可以通过 $NODE\\_VERSION 引用：

ENV NODE_VERSION 7.2.0 RUN curl -SLO "https://nodejs.org/dist/v$NODE\\_VERSION/node-v$NODE\\_VERSION-linux-x64.tar.xz" \\ && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"

### ARG

构建参数，与 ENV 作用一至。不过作用域不一样。ARG 设置的环境变量仅对 Dockerfile 内有效，也就是说只有 docker build 的过程中有效，构建好的镜像内不存在此环境变量。

构建命令 docker build 中可以用 --build-arg &lt;参数名&gt;=&lt;值&gt; 来覆盖。

格式：

ARG &lt;参数名&gt;\\[=&lt;默认值&gt;\\]

### VOLUME

定义匿名数据卷。在启动容器时忘记挂载数据卷，会自动挂载到匿名卷。

作用：

- 避免重要的数据，因容器重启而丢失，这是非常致命的。
- 避免容器不断变大。

格式：

VOLUME \\["&lt;路径1&gt;",  "&lt;路径2&gt;"...\\] VOLUME &lt;路径&gt;

在启动容器 docker run 的时候，我们可以通过 -v 参数修改挂载点。

### EXPOSE

仅仅只是声明端口。

作用：

- 帮助镜像使用者理解这个镜像服务的守护端口，以方便配置映射。
- 在运行时使用随机端口映射时，也就是 docker run -P 时，会自动随机映射 EXPOSE 的端口。

格式：

EXPOSE <端口1>  \\[<端口2>...\\]

### WORKDIR

指定工作目录。用 WORKDIR 指定的工作目录，会在构建镜像的每一层中都存在。（WORKDIR 指定的工作目录，必须是提前创建好的）。

docker build 构建镜像过程中的，每一个 RUN 命令都是新建的一层。只有通过 WORKDIR 创建的目录才会一直存在。

格式：

WORKDIR &lt;工作目录路径&gt;

### USER

用于指定执行后续命令的用户和用户组，这边只是切换后续命令执行的用户（用户和用户组必须提前已经存在）。

格式：

USER &lt;用户名&gt;\\[:&lt;用户组&gt;\\]

### HEALTHCHECK

用于指定某个程序或者指令来监控 docker 容器服务的运行状态。

格式：

HEALTHCHECK \\[选项\\] CMD &lt;命令&gt;：设置检查容器健康状况的命令 HEALTHCHECK NONE：如果基础镜像有健康检查指令，使用这行可以屏蔽掉其健康检查指令 HEALTHCHECK \\[选项\\] CMD &lt;命令&gt;  :  这边 CMD 后面跟随的命令使用，可以参考 CMD 的用法。

### ONBUILD

用于延迟构建命令的执行。简单的说，就是 Dockerfile 里用 ONBUILD 指定的命令，在本次构建镜像的过程中不会执行（假设镜像为 test-build）。当有新的 Dockerfile 使用了之前构建的镜像 FROM test-build ，这是执行新镜像的 Dockerfile 构建时候，会执行 test-build 的 Dockerfile 里的 ONBUILD 指定的命令。

格式：

ONBUILD &lt;其它指令&gt;', 17, '什么是 Dockerfile？
Dockerfile 是一个用来构建镜像的文本文件，文本内容包含了一条条构建镜像所需的指令和说明。
使用 Dockerfile 定制镜像
这里仅讲解如何运行 Dockerfile 文件来定制一个镜像，具体 Dockerfile 文件内指令详解，将在下一节中介绍，这里你只要知道构建的流程即可。
1、下面以定制一个 nginx 镜像（构建好的镜像内会有一个 /usr/share/nginx/html/index.html 文件）
在一个空目录下，新建一个名为 Dockerfile 文件，并在文件内添加以下内容：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (25, null, 5, 'Docker教程', 13, 'Docker 仓库管理', '# Docker 仓库管理

仓库（Repository）是集中存放镜像的地方。以下介绍一下 [Docker Hub](https://hub.docker.com/)。当然不止 docker hub，只是远程的服务商不一样，操作都是一样的。

## Docker Hub

目前 Docker 官方维护了一个公共仓库 [Docker Hub](https://hub.docker.com/)。

大部分需求都可以通过在 Docker Hub 中直接下载镜像来实现。

### 注册

在 [https://hub.docker.com](https://hub.docker.com/) 免费注册一个 Docker 账号。

### 登录和退出

登录需要输入用户名和密码，登录成功后，我们就可以从 docker hub 上拉取自己账号下的全部镜像。

$ docker login

[<img width="835" height="103" src="/images/fc133713e43846039c63d7145d6f46fa.jpg"/>](https://www.runoob.com/wp-content/uploads/2019/10/5974B2AE-945F-4DD0-A7C8-9D9B01BDAF62.jpg)

**退出**

退出 docker hub 可以使用以下命令：

$ docker logout

拉取镜像

你可以通过 docker search 命令来查找官方仓库中的镜像，并利用 docker pull 命令来将它下载到本地。

以 ubuntu 为关键词进行搜索：

$ docker search ubuntu

[<img width="835" height="195" src="/images/7fdf6ccf48874ec5b48d139f6c8b1824.png"/>](https://www.runoob.com/wp-content/uploads/2019/10/docker-search22.png)

使用 docker pull 将官方 ubuntu 镜像下载到本地：

$ docker pull ubuntu

[<img width="835" height="221" src="/images/908b152c218c454d81476f02cc6b9c02.png"/>](https://www.runoob.com/wp-content/uploads/2019/10/docker-pull22.png)

### 推送镜像

用户登录后，可以通过 docker push 命令将自己的镜像推送到 Docker Hub。

以下命令中的 username 请替换为你的 Docker 账号用户名。

$ docker tag ubuntu:18.04 username/ubuntu:18.04 $ docker image ls

REPOSITORY      TAG        IMAGE ID            CREATED ... ubuntu 18.04  275d79972a86  6 days ago ... username/ubuntu 18.04  275d79972a86  6 days ago ... $ docker push username/ubuntu:18.04 $ docker search username/ubuntu

NAME             DESCRIPTION       STARS         OFFICIAL    AUTOMATED
username/ubuntu', 15, '仓库（Repository）是集中存放镜像的地方。以下介绍一下 Docker Hub。当然不止 docker hub，只是远程的服务商不一样，操作都是一样的。
Docker Hub
目前 Docker 官方维护了一个公共仓库 Docker Hub。
大部分需求都可以通过在 Docker Hub 中直接下载镜像来实现。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (26, null, 5, 'Docker教程', 12, 'Docker 容器连接', '# Docker 容器连接

前面我们实现了通过网络端口来访问运行在 docker 容器内的服务。

容器中可以运行一些网络应用，要让外部也可以访问这些应用，可以通过 -P 或 -p 参数来指定端口映射。

下面我们来实现通过端口连接到一个 docker 容器。

* * *

## 网络端口映射

我们创建了一个 python 应用的容器。

runoob@runoob:~$ docker run -d -P training/webapp python app.py
fce072cc88cee71b1cdceb57c2821d054a4a59f67da6b416fceb5593f059fc6d

另外，我们可以指定容器绑定的网络地址，比如绑定 127.0.0.1。

我们使用 **-P** 参数创建一个容器，使用 **docker ps** 可以看到容器端口 5000 绑定主机端口 32768。

runoob@runoob:~$ docker ps
CONTAINER ID    IMAGE               COMMAND ... PORTS                     NAMES
fce072cc88ce    training/webapp "python app.py"  ...  0.0.0.0:32768->5000/tcp   grave_hopper

我们也可以使用 **-p** 标识来指定容器端口绑定到主机端口。

两种方式的区别是:

- **-P :**是容器内部端口**随机**映射到主机的高端口。
- **-p :** 是容器内部端口绑定到**指定**的主机端口。

runoob@runoob:~$ docker run -d -p 5000:5000 training/webapp python app.py 33e4523d30aaf0258915c368e66e03b49535de0ef20317d3f639d40222ba6bc0

runoob@runoob:~$ docker ps
CONTAINER ID        IMAGE               COMMAND ... PORTS                     NAMES 33e4523d30aa training/webapp "python app.py"  ...  0.0.0.0:5000->5000/tcp    berserk_bartik
fce072cc88ce        training/webapp "python app.py"  ...  0.0.0.0:32768->5000/tcp   grave_hopper

另外，我们可以指定容器绑定的网络地址，比如绑定 127.0.0.1。

runoob@runoob:~$ docker run -d -p 127.0.0.1:5001:5000 training/webapp python app.py 95c6ceef88ca3e71eaf303c2833fd6701d8d1b2572b5613b5a932dfdfe8a857c runoob@runoob:~$ docker ps
CONTAINER ID        IMAGE               COMMAND ... PORTS                                NAMES 95c6ceef88ca training/webapp "python app.py"  ...  5000/tcp,  127.0.0.1:5001->5000/tcp   adoring_stonebraker 33e4523d30aa training/webapp "python app.py"  ...  0.0.0.0:5000->5000/tcp               berserk_bartik
fce072cc88ce        training/webapp "python app.py"  ...  0.0.0.0:32768->5000/tcp              grave_hopper

这样我们就可以通过访问 127.0.0.1:5001 来访问容器的 5000 端口。

上面的例子中，默认都是绑定 tcp 端口，如果要绑定 UDP 端口，可以在端口后面加上 **/udp**。

runoob@runoob:~$ docker run -d -p 127.0.0.1:5000:5000/udp training/webapp python app.py 6779686f06f6204579c1d655dd8b2b31e8e809b245a97b2d3a8e35abe9dcd22a runoob@runoob:~$ docker ps
CONTAINER ID        IMAGE               COMMAND ... PORTS                                NAMES 6779686f06f6 training/webapp "python app.py"  ...  5000/tcp,  127.0.0.1:5000->5000/udp   drunk_visvesvaraya 95c6ceef88ca training/webapp "python app.py"  ...  5000/tcp,  127.0.0.1:5001->5000/tcp   adoring_stonebraker 33e4523d30aa training/webapp "python app.py"  ...  0.0.0.0:5000->5000/tcp               berserk_bartik
fce072cc88ce        training/webapp "python app.py"  ...  0.0.0.0:32768->5000/tcp              grave_hopper

**docker port** 命令可以让我们快捷地查看端口的绑定情况。

runoob@runoob:~$ docker port adoring_stonebraker 5000  127.0.0.1:5001

* * *

## Docker 容器互联

端口映射并不是唯一把 docker 连接到另一个容器的方法。

docker 有一个连接系统允许将多个容器连接在一起，共享连接信息。

docker 连接会创建一个父子关系，其中父容器可以看到子容器的信息。

* * *

### 容器命名

当我们创建一个容器的时候，docker 会自动对它进行命名。另外，我们也可以使用 **--name** 标识来命名容器，例如：

runoob@runoob:~$  docker run -d -P --name runoob training/webapp python app.py 43780a6eabaaf14e590b6e849235c75f3012995403f97749775e38436db9a441

我们可以使用 **docker ps** 命令来查看容器名称。

runoob@runoob:~$ docker ps -l
CONTAINER ID     IMAGE            COMMAND ... PORTS                     NAMES 43780a6eabaa training/webapp "python app.py"  ...  0.0.0.0:32769->5000/tcp   runoob

### 新建网络

下面先创建一个新的 Docker 网络。

$ docker network create -d bridge test-net

<img width="835" height="300" src="/images/19bc518e77bc4fa19153b5d691a2fd34.png"/>

参数说明：

**-d**：参数指定 Docker 网络类型，有 bridge、overlay。

其中 overlay 网络类型用于 Swarm mode，在本小节中你可以忽略它。

### 连接容器

运行一个容器并连接到新建的 test-net 网络:

$ docker run -itd --name test1 --network test-net ubuntu /bin/bash

打开新的终端，再运行一个容器并加入到 test-net 网络:

$ docker run -itd --name test2 --network test-net ubuntu /bin/bash

点击图片查看大图：

[<img width="835" height="63" src="/images/d81962b6cbe44cb9be51d48a163f8f53.png"/>](https://www.runoob.com/wp-content/uploads/2016/05/docker-net2.png)

下面通过 ping 来证明 test1 容器和 test2 容器建立了互联关系。

如果 test1、test2 容器内中无 ping 命令，则在容器内执行以下命令安装 ping（即学即用：可以在一个容器里安装好，提交容器到镜像，在以新的镜像重新运行以上俩个容器）。

apt-get update
apt install iputils-ping

在 test1 容器输入以下命令：

点击图片查看大图：

[<img width="835" height="141" src="/images/389104d9da0a42f29325586541f39929.png"/>](https://www.runoob.com/wp-content/uploads/2016/05/docker-net3.png)

同理在 test2 容器也会成功连接到:

点击图片查看大图：

[<img width="835" height="162" src="/images/d774359225514cf18c6020a85c1e40b4.png"/>](https://www.runoob.com/wp-content/uploads/2016/05/docker-net4.png)

这样，test1 容器和 test2 容器建立了互联关系。

如果你有多个容器之间需要互相连接，推荐使用 Docker Compose，后面会介绍。

* * *

## 配置 DNS

我们可以在宿主机的 /etc/docker/daemon.json 文件中增加以下内容来设置全部容器的 DNS：

{  "dns"  :  \\[  "114.114.114.114",  "8.8.8.8"  \\]  }

设置后，启动容器的 DNS 会自动配置为 114.114.114.114 和 8.8.8.8。

配置完，需要重启 docker 才能生效。

查看容器的 DNS 是否生效可以使用以下命令，它会输出容器的 DNS 信息：

$ docker run -it --rm  ubuntu  cat etc/resolv.conf

点击图片查看大图：

[<img width="835" height="99" src="/images/5180e566597646648b9321bce0091131.png"/>](https://www.runoob.com/wp-content/uploads/2016/05/docker-net5.png)

**手动指定容器的配置**

如果只想在指定的容器设置 DNS，则可以使用以下命令：

$ docker run -it --rm -h host_ubuntu --dns=114.114.114.114  --dns-search=test.com ubuntu

参数说明：

**--rm**：容器退出时自动清理容器内部的文件系统。

**-h HOSTNAME 或者 --hostname=HOSTNAME**： 设定容器的主机名，它会被写到容器内的 /etc/hostname 和 /etc/hosts。

**--dns=IP_ADDRESS**： 添加 DNS 服务器到容器的 /etc/resolv.conf 中，让容器用这个服务器来解析所有不在 /etc/hosts 中的主机名。

**--dns-search=DOMAIN**： 设定容器的搜索域，当设定搜索域为 .example.com 时，在搜索一个名为 host 的主机时，DNS 不仅搜索 host，还会搜索 host.example.com。

点击图片查看大图：

[<img width="835" height="168" src="/images/adf029eb40794f9196e1b882d0430b13.png"/>](https://www.runoob.com/wp-content/uploads/2016/05/docker-net6.png)

如果在容器启动时没有指定 **--dns** 和 **--dns-search**，Docker 会默认用宿主主机上的 /etc/resolv.conf 来配置容器的 DNS。', 255, '前面我们实现了通过网络端口来访问运行在 docker 容器内的服务。
容器中可以运行一些网络应用，要让外部也可以访问这些应用，可以通过 -P 或 -p 参数来指定端口映射。
下面我们来实现通过端口连接到一个 docker 容器。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (27, null, 5, 'Docker教程', 11, 'Docker 镜像使用', '# Docker 镜像使用

当运行容器时，使用的镜像如果在本地中不存在，docker 就会自动从 docker 镜像仓库中下载，默认是从 Docker Hub 公共镜像源下载。

下面我们来学习：

- 1、管理和使用本地 Docker 主机镜像
- 2、创建镜像

* * *

## 列出镜像列表

我们可以使用 **docker images** 来列出本地主机上的镜像。

runoob@runoob:~$ docker images           
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
ubuntu 14.04  90d5884b1ee0  5 days ago 188 MB
php 5.6 f40e9e0f10c8 9 days ago 444.8 MB
nginx               latest 6f8d099c3adc  12 days ago 182.7 MB
mysql 5.6 f2e8d6c772c0 3 weeks ago 324.6 MB
httpd               latest 02ef73cf1bc0  3 weeks ago 194.4 MB
ubuntu 15.10  4e3b13c8a266  4 weeks ago 136.3 MB
hello-world         latest 690ed74de00f  6 months ago 960 B
training/webapp     latest 6fae60ef3446  11 months ago 348.8 MB

各个选项说明:

- **REPOSITORY：**表示镜像的仓库源
    
- **TAG：**镜像的标签
    
- **IMAGE ID：**镜像ID
    
- **CREATED：**镜像创建时间
    
- **SIZE：**镜像大小
    

同一仓库源可以有多个 TAG，代表这个仓库源的不同个版本，如 ubuntu 仓库源里，有 15.10、14.04 等多个不同的版本，我们使用 REPOSITORY:TAG 来定义不同的镜像。

所以，我们如果要使用版本为15.10的ubuntu系统镜像来运行容器时，命令如下：

runoob@runoob:~$ docker run -t -i ubuntu:15.10  /bin/bash 
root@d77ccb2e5cca:/#

参数说明：

- **-i**: 交互式操作。
- **-t**: 终端。
- **ubuntu:15.10**: 这是指用 ubuntu 15.10 版本镜像为基础来启动容器。
- **/bin/bash**：放在镜像名后的是命令，这里我们希望有个交互式 Shell，因此用的是 /bin/bash。

如果要使用版本为 14.04 的 ubuntu 系统镜像来运行容器时，命令如下：

runoob@runoob:~$ docker run -t -i ubuntu:14.04  /bin/bash 
root@39e968165990:/#  

如果你不指定一个镜像的版本标签，例如你只使用 ubuntu，docker 将默认使用 ubuntu:latest 镜像。

* * *

## 获取一个新的镜像

当我们在本地主机上使用一个不存在的镜像时 Docker 就会自动下载这个镜像。如果我们想预先下载这个镜像，我们可以使用 docker pull 命令来下载它。

Crunoob@runoob:~$ docker pull ubuntu:13.10  13.10:  Pulling  from library/ubuntu 6599cadaf950:  Pull complete 23eda618d451:  Pull complete 
f0be3084efe9:  Pull complete 52de432f084b:  Pull complete 
a3ed95caeb02:  Pull complete Digest: sha256:15b79a6654811c8d992ebacdfbd5152fcf3d165e374e264076aa435214a947a3  Status:  Downloaded newer image for ubuntu:13.10

下载完成后，我们可以直接使用这个镜像来运行容器。

* * *

## 查找镜像

我们可以从 Docker Hub 网站来搜索镜像，Docker Hub 网址为： **https://hub.docker.com/**

我们也可以使用 docker search 命令来搜索镜像。比如我们需要一个 httpd 的镜像来作为我们的 web 服务。我们可以通过 docker search 命令搜索 httpd 来寻找适合我们的镜像。

runoob@runoob:~$  docker search httpd

点击图片查看大图：

[<img width="835" height="160" src="/images/c99a829fbb4e4706b45acc98378361c2.jpg"/>](https://www.runoob.com/wp-content/uploads/2016/05/423F2A2C-287A-4B03-855E-6A78E125B346.jpg)

**NAME:** 镜像仓库源的名称

**DESCRIPTION:** 镜像的描述

**OFFICIAL:** 是否 docker 官方发布

**stars:** 类似 Github 里面的 star，表示点赞、喜欢的意思。

**AUTOMATED:** 自动构建。

* * *

## 拖取镜像

我们决定使用上图中的 httpd 官方版本的镜像，使用命令 docker pull 来下载镜像。

runoob@runoob:~$ docker pull httpd Using  default tag: latest
latest:  Pulling  from library/httpd 8b87079b7a06:  Pulling fs layer 
a3ed95caeb02:  Download complete 0d62ec9c6a76:  Download complete 
a329d50397b9:  Download complete 
ea7c1f032b5c:  Waiting be44112b72c7:  Waiting

下载完成后，我们就可以使用这个镜像了。

runoob@runoob:~$ docker run httpd

* * *

## 删除镜像

镜像删除使用 **docker rmi** 命令，比如我们删除 hello-world 镜像：

$ docker rmi hello-world

<img width="835" height="99" src="/images/78ac39552bc140f69ad69849ed227803.png"/>

* * *

## 创建镜像

当我们从 docker 镜像仓库中下载的镜像不能满足我们的需求时，我们可以通过以下两种方式对镜像进行更改。

- 1、从已经创建的容器中更新镜像，并且提交这个镜像
- 2、使用 Dockerfile 指令来创建一个新的镜像

### 更新镜像

更新镜像之前，我们需要使用镜像来创建一个容器。

runoob@runoob:~$ docker run -t -i ubuntu:15.10  /bin/bash
root@e218edb10161:/#  

在运行的容器内使用 **apt-get update** 命令进行更新。

在完成操作之后，输入 exit 命令来退出这个容器。

此时 ID 为 e218edb10161 的容器，是按我们的需求更改的容器。我们可以通过命令 docker commit 来提交容器副本。

runoob@runoob:~$ docker commit -m="has update"  -a="runoob" e218edb10161 runoob/ubuntu:v2
sha256:70bf1840fd7c0d2d8ef0a42a817eb29f854c1af8f7c59fc03ac7bdee9545aff8

各个参数说明：

- **-m:** 提交的描述信息
    
- **-a:** 指定镜像作者
    
- **e218edb10161：**容器 ID
    
- **runoob/ubuntu:v2:** 指定要创建的目标镜像名
    

我们可以使用 **docker images** 命令来查看我们的新镜像 **runoob/ubuntu:v2**：

runoob@runoob:~$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
runoob/ubuntu       v2 70bf1840fd7c  15 seconds ago 158.5 MB
ubuntu 14.04  90d5884b1ee0  5 days ago 188 MB
php 5.6 f40e9e0f10c8 9 days ago 444.8 MB
nginx               latest 6f8d099c3adc  12 days ago 182.7 MB
mysql 5.6 f2e8d6c772c0 3 weeks ago 324.6 MB
httpd               latest 02ef73cf1bc0  3 weeks ago 194.4 MB
ubuntu 15.10  4e3b13c8a266  4 weeks ago 136.3 MB
hello-world         latest 690ed74de00f  6 months ago 960 B
training/webapp     latest 6fae60ef3446  12 months ago 348.8 MB

使用我们的新镜像 **runoob/ubuntu** 来启动一个容器

runoob@runoob:~$ docker run -t -i runoob/ubuntu:v2 /bin/bash                            
root@1a9fbdeb5da3:/#

### 构建镜像

我们使用命令 **docker build** ， 从零开始来创建一个新的镜像。为此，我们需要创建一个 Dockerfile 文件，其中包含一组指令来告诉 Docker 如何构建我们的镜像。

runoob@runoob:~$ cat Dockerfile FROM    centos:6.7 MAINTAINER Fisher  "fisher@sudops.com" RUN /bin/echo ''root:123456''  |chpasswd
RUN     useradd runoob
RUN /bin/echo ''runoob:123456''  |chpasswd
RUN /bin/echo -e "LANG=\\\\"en_US.UTF-8\\\\""  >/etc/default/local EXPOSE 22 EXPOSE 80 CMD /usr/sbin/sshd -D

每一个指令都会在镜像上创建一个新的层，每一个指令的前缀都必须是大写的。

第一条FROM，指定使用哪个镜像源

RUN 指令告诉docker 在镜像内执行命令，安装了什么。。。

然后，我们使用 Dockerfile 文件，通过 docker build 命令来构建一个镜像。

runoob@runoob:~$ docker build -t runoob/centos:6.7  .  Sending build context to Docker daemon 17.92 kB Step  1  : FROM centos:6.7  ---&gt; d95b5ca17cc3 Step  2  : MAINTAINER Fisher  "fisher@sudops.com"  ---&gt;  Using cache ---&gt;  0c92299c6f03  Step  3  : RUN /bin/echo ''root:123456''  |chpasswd ---&gt;  Using cache ---&gt;  0397ce2fbd0a  Step  4  : RUN useradd runoob ......

参数说明：

- **-t** ：指定要创建的目标镜像名
    
- **.** ：Dockerfile 文件所在目录，可以指定Dockerfile 的绝对路径
    

使用docker images 查看创建的镜像已经在列表中存在,镜像ID为860c279d2fec

runoob@runoob:~$ docker images 
REPOSITORY          TAG                 IMAGE ID            CREATED              SIZE
runoob/centos 6.7  860c279d2fec  About a minute ago 190.6 MB
runoob/ubuntu       v2 70bf1840fd7c  17 hours ago 158.5 MB
ubuntu 14.04  90d5884b1ee0  6 days ago 188 MB
php 5.6 f40e9e0f10c8 10 days ago 444.8 MB
nginx               latest 6f8d099c3adc  12 days ago 182.7 MB
mysql 5.6 f2e8d6c772c0 3 weeks ago 324.6 MB
httpd               latest 02ef73cf1bc0  3 weeks ago 194.4 MB
ubuntu 15.10  4e3b13c8a266  5 weeks ago 136.3 MB
hello-world         latest 690ed74de00f  6 months ago 960 B
centos 6.7 d95b5ca17cc3 6 months ago 190.6 MB
training/webapp     latest 6fae60ef3446  12 months ago 348.8 MB

我们可以使用新的镜像来创建容器

runoob@runoob:~$ docker run -t -i runoob/centos:6.7  /bin/bash \\[root@41c28d18b5fb /\\]# id runoob
uid=500(runoob) gid=500(runoob) groups=500(runoob)

从上面看到新镜像已经包含我们创建的用户 runoob。

### 设置镜像标签

我们可以使用 docker tag 命令，为镜像添加一个新的标签。

runoob@runoob:~$ docker tag 860c279d2fec runoob/centos:dev

docker tag 镜像ID，这里是 860c279d2fec ,用户名称、镜像源名(repository name)和新的标签名(tag)。

使用 docker images 命令可以看到，ID为860c279d2fec的镜像多一个标签。

runoob@runoob:~$ docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
runoob/centos 6.7  860c279d2fec  5 hours ago 190.6 MB
runoob/centos       dev 860c279d2fec  5 hours ago 190.6 MB
runoob/ubuntu       v2 70bf1840fd7c  22 hours ago 158.5 MB
ubuntu 14.04  90d5884b1ee0  6 days ago 188 MB
php 5.6 f40e9e0f10c8 10 days ago 444.8 MB
nginx               latest 6f8d099c3adc  13 days ago 182.7 MB
mysql 5.6 f2e8d6c772c0 3 weeks ago 324.6 MB
httpd               latest 02ef73cf1bc0  3 weeks ago 194.4 MB
ubuntu 15.10  4e3b13c8a266  5 weeks ago 136.3 MB
hello-world         latest 690ed74de00f  6 months ago 960 B
centos 6.7 d95b5ca17cc3 6 months ago 190.6 MB
training/webapp     latest 6fae60ef3446  12 months ago 348.8 MB', 11, '我们可以从 Docker Hub 网站来搜索镜像，Docker Hub 网址为： https://hub.docker.com/
我们也可以使用 docker search 命令来搜索镜像。比如我们需要一个 httpd 的镜像来作为我们的 web 服务。我们可以通过 docker search 命令搜索 httpd 来寻找适合我们的镜像。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (28, null, 5, 'Docker教程', 10, 'Docker 容器使用', '测试内容', 14, '前面我们运行的容器并没有一些什么特别的用处。
接下来让我们尝试使用 docker 构建一个 web 应用程序。
我们将在docker容器中运行一个 Python Flask 应用来运行一个web应用。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (29, null, 5, 'Docker教程', 9, 'Docker Hello World', '# Docker Hello World

Docker 允许你在容器内运行应用程序， 使用 **docker run** 命令来在容器内运行一个应用程序。

输出Hello world

runoob@runoob:~$ docker run ubuntu:15.10  /bin/echo "Hello world"  Hello world

![](/images/12189c4acadb4f909bc4954dbcffcd7b.png)

各个参数解析：

- **docker:** Docker 的二进制执行文件。
    
- **run:** 与前面的 docker 组合来运行一个容器。
    
- **ubuntu:15.10** 指定要运行的镜像，Docker 首先从本地主机上查找镜像是否存在，如果不存在，Docker 就会从镜像仓库 Docker Hub 下载公共镜像。
    
- **/bin/echo "Hello world":** 在启动的容器里执行的命令
    

以上命令完整的意思可以解释为：Docker 以 ubuntu15.10 镜像创建一个新容器，然后在容器里执行 bin/echo "Hello world"，然后输出结果。

* * *

## 运行交互式的容器

我们通过 docker 的两个参数 -i -t，让 docker 运行的容器实现**"对话"**的能力：

runoob@runoob:~$ docker run -i -t ubuntu:15.10  /bin/bash
root@0123ce188bd8:/#

各个参数解析：

- **-t:** 在新容器内指定一个伪终端或终端。
    
- **-i:** 允许你对容器内的标准输入 (STDIN) 进行交互。
    

注意第二行 root@0123ce188bd8:/#，此时我们已进入一个 ubuntu15.10 系统的容器

我们尝试在容器中运行命令 **cat /proc/version**和**ls**分别查看当前系统的版本信息和当前目录下的文件列表

root@0123ce188bd8:/#  cat /proc/version Linux version 4.4.0-151-generic  (buildd@lgw01-amd64-043)  (gcc version 5.4.0  20160609  (Ubuntu  5.4.0-6ubuntu1~16.04.10)  )  #178-Ubuntu SMP Tue Jun 11 08:30:22 UTC 2019 root@0123ce188bd8:/# ls
bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr var root@0123ce188bd8:/#  

我们可以通过运行 exit 命令或者使用 CTRL+D 来退出容器。

root@0123ce188bd8:/#  exit  exit root@runoob:~#  

注意第三行中 root@runoob:~# 表明我们已经退出了当前的容器，返回到当前的主机中。

* * *

## 启动容器（后台模式）

使用以下命令创建一个以进程方式运行的容器

runoob@runoob:~$ docker run -d ubuntu:15.10  /bin/sh -c "while true; do echo hello world; sleep 1; done"  2b1b7a428627c51ab8810d541d759f072b4fc75487eed05812646b8534a2fe63

在输出中，我们没有看到期望的 "hello world"，而是一串长字符

**2b1b7a428627c51ab8810d541d759f072b4fc75487eed05812646b8534a2fe63**

这个长字符串叫做容器 ID，对每个容器来说都是唯一的，我们可以通过容器 ID 来查看对应的容器发生了什么。

首先，我们需要确认容器有在运行，可以通过 **docker ps** 来查看：

runoob@runoob:~$ docker ps
CONTAINER ID        IMAGE                  COMMAND ...  5917eac21c36 ubuntu:15.10  "/bin/sh -c ''while t…"  ...

输出详情介绍：

**CONTAINER ID:** 容器 ID。

**IMAGE:** 使用的镜像。

**COMMAND:** 启动容器时运行的命令。

**CREATED:** 容器的创建时间。

**STATUS:** 容器状态。

状态有7种：

- created（已创建）
- restarting（重启中）
- running 或 Up（运行中）
- removing（迁移中）
- paused（暂停）
- exited（停止）
- dead（死亡）

**PORTS:** 容器的端口信息和使用的连接类型（tcp\\\\udp）。

**NAMES:** 自动分配的容器名称。

在宿主主机内使用 docker logs 命令，查看容器内的标准输出：

runoob@runoob:~$ docker logs 2b1b7a428627

![](/images/ff5d5fcab5e94d99b966551315a38987.png)

runoob@runoob:~$ docker logs amazing_cori

![](/images/d9821e9c2b6842b3b03473bcbcaadbec.png)

* * *

## 停止容器

我们使用 **docker stop** 命令来停止容器:

![](/images/57fd4da423414a7bb7817e50791ec292.png)

通过 docker ps 查看，容器已经停止工作:

runoob@runoob:~$ docker ps

可以看到容器已经不在了。

也可以用下面的命令来停止:

runoob@runoob:~$ docker stop amazing_cori', 10, '在输出中，我们没有看到期望的 "hello world"，而是一串长字符
这个长字符串叫做容器 ID，对每个容器来说都是唯一的，我们可以通过容器 ID 来查看对应的容器发生了什么。
首先，我们需要确认容器有在运行，可以通过 docker ps 来查看：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (30, null, 5, 'Docker教程', 8, 'Docker 镜像加速', '# Docker 镜像加速

国内从 DockerHub 拉取镜像有时会遇到困难，此时可以配置镜像加速器。Docker 官方和国内很多云服务商都提供了国内加速器服务，例如：

- 科大镜像：**https://docker.mirrors.ustc.edu.cn/**
- 网易：**https://hub-mirror.c.163.com/**
- 阿里云：**https://&lt;你的ID&gt;.mirror.aliyuncs.com**
- 七牛云加速器：**https://reg-mirror.qiniu.com**

当配置某一个加速器地址之后，若发现拉取不到镜像，请切换到另一个加速器地址。国内各大云服务商均提供了 Docker 镜像加速服务，建议根据运行 Docker 的云平台选择对应的镜像加速服务。

阿里云镜像获取地址：https://cr.console.aliyun.com/cn-hangzhou/instances/mirrors，登陆后，左侧菜单选中镜像加速器就可以看到你的专属地址了：

<img width="835" height="516" src="/images/faf75ed733e54c89bdc98adb907fb1f6.jpg"/>

之前还有 Docker 官方加速器 **https://registry.docker-cn.com** ，现在好像已经不能使用了，我们可以多添加几个国内的镜像，如果有不能使用的，会切换到可以使用个的镜像来拉取。

### Ubuntu14.04、Debian7Wheezy

对于使用 upstart 的系统而言，编辑 /etc/default/docker 文件，在其中的 DOCKER_OPTS 中配置加速器地址：

DOCKER_OPTS="--registry-mirror=https://registry.docker-cn.com"

重新启动服务:

$ sudo service docker restart

### Ubuntu16.04+、Debian8+、CentOS7

对于使用 systemd 的系统，请在 /etc/docker/daemon.json 中写入如下内容（如果文件不存在请新建该文件）：

{"registry-mirrors":\\["https://reg-mirror.qiniu.com/"\\]}

之后重新启动服务：

$ sudo systemctl daemon-reload
$ sudo systemctl restart docker

### Windows 10

对于使用 Windows 10 的系统，在系统右下角托盘 Docker 图标内右键菜单选择 Settings，打开配置窗口后左侧导航菜单选择 Daemon。在 Registrymirrors 一栏中填写加速器地址 **https://docker.mirrors.ustc.edu.cn/** ，之后点击 Apply 保存后 Docker 就会重启并应用配置的镜像地址了。

<img width="835" height="371" src="/images/61f6fe1592fb4ba6a2c005cf4144bf73.jpg"/>

### Mac OS X

对于使用 Mac OS X 的用户，在任务栏点击 Docker for mac 应用图标-> Perferences...-> Daemon-> Registrymirrors。在列表中填写加速器地址 **https://reg-mirror.qiniu.com** 。修改完成之后，点击 Apply&Restart 按钮，Docker 就会重启并应用配置的镜像地址了。

<img width="417" height="454" src="/images/fdf7750d32cf453e8fe21ee0593479f2.jpg"/>

### 检查加速器是否生效

检查加速器是否生效配置加速器之后，如果拉取镜像仍然十分缓慢，请手动检查加速器配置是否生效，在命令行执行 docker info，如果从结果中看到了如下内容，说明配置成功。

$ docker info Registry  Mirrors: https://reg-mirror.qiniu.com', 10, '当配置某一个加速器地址之后，若发现拉取不到镜像，请切换到另一个加速器地址。国内各大云服务商均提供了 Docker 镜像加速服务，建议根据运行 Docker 的云平台选择对应的镜像加速服务。
阿里云镜像获取地址：https://cr.console.aliyun.com，登陆后，左侧菜单选中镜像加速器就可以看到你的专属地址了：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (31, null, 5, 'Docker教程', 7, 'MacOS Docker 安装', '# MacOS Docker 安装

## 使用 Homebrew 安装

macOS 我们可以使用 Homebrew 来安装 Docker。

Homebrew 的 Cask 已经支持 Docker for Mac，因此可以很方便的使用 Homebrew Cask 来进行安装：

$ brew install --cask --appdir=/Applications docker ==>  Creating  Caskroom at /usr/local/Caskroom  ==>  We''ll set permissions properly so we won''t need sudo in the future Password:  \\# 输入 macOS 密码  ==>  Satisfying dependencies ==>  Downloading https://download.docker.com/mac/stable/21090/Docker.dmg  ######################################################################## 100.0%  ==>  Verifying checksum for  Cask docker ==>  Installing  Cask docker ==>  Moving  App  ''Docker.app'' to ''/Applications/Docker.app''.  &#x1f37a; docker was successfully installed!

在载入 Docker app 后，点击 Next，可能会询问你的 macOS 登陆密码，你输入即可。之后会弹出一个 Docker 运行的提示窗口，状态栏上也有有个小鲸鱼的图标（![](/images/62f591fd4ed84ef2b4c287c5ba994033.png)）。

* * *

## 手动下载安装

如果需要手动下载，请点击以下链接下载 [Stable](https://download.docker.com/mac/stable/Docker.dmg) 或 [Edge](https://download.docker.com/mac/edge/Docker.dmg) 版本的 Docker for Mac。

如同 macOS 其它软件一样，安装也非常简单，双击下载的 .dmg 文件，然后将鲸鱼图标拖拽到 Application 文件夹即可。

![](/images/b1a20ef4f4d34356a9d63cab8130bc88.png)

从应用中找到 Docker 图标并点击运行。可能会询问 macOS 的登陆密码，输入即可。

<img width="835" height="187" src="/images/c98c9631386647ff82e40d84cadda71b.png"/>

点击顶部状态栏中的鲸鱼图标会弹出操作菜单。

![](/images/a1f6d5c086354c81a980a143d1de6778.png)

![](/images/dd534088589d4f50b1ce1a0616c0c92a.png)

第一次点击图标，可能会看到这个安装成功的界面，点击 "Got it!" 可以关闭这个窗口。

![](/images/ec5c6540907e406aafde1556dfd90f51.png)

启动终端后，通过命令可以检查安装后的 Docker 版本。

$ docker --version Docker version 17.09.1-ce, build 19e2cf6

## 镜像加速

鉴于国内网络问题，后续拉取 Docker 镜像十分缓慢，我们可以需要配置加速器来解决，我使用的是网易的镜像地址：http://hub-mirror.c.163.com。

在任务栏点击 Docker for mac 应用图标 -> Perferences... -> Daemon -> Registry mirrors。在列表中填写加速器地址即可。修改完成之后，点击 Apply & Restart 按钮，Docker 就会重启并应用配置的镜像地址了。

![](/images/fb00ab8afa8143e69c806eaa56e8b322.png)

之后我们可以通过 docker info 来查看是否配置成功。

$ docker info ...  Registry  Mirrors: http://hub-mirror.c.163.com  Live  Restore  Enabled:  false
', 346, '使用 Homebrew 安装
macOS 我们可以使用 Homebrew 来安装 Docker。
Homebrew 的 Cask 已经支持 Docker for Mac，因此可以很方便的使用 Homebrew Cask 来进行安装：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (32, null, 5, 'Docker教程', 6, 'Windows Docker 安装', '# Windows Docker 安装

Docker 并非是一个通用的容器工具，它依赖于已存在并运行的 Linux 内核环境。

Docker 实质上是在已经运行的 Linux 下制造了一个隔离的文件环境，因此它执行的效率几乎等同于所部署的 Linux 主机。

因此，Docker 必须部署在 Linux 内核的系统上。如果其他系统想部署 Docker 就必须安装一个虚拟 Linux 环境。

<img width="417" height="271" src="/images/4b654edac8854144b36b73fb34b237ce.png"/>

在 Windows 上部署 Docker 的方法都是先安装一个虚拟机，并在安装 Linux 系统的的虚拟机中运行 Docker。

## Win10 系统

Docker Desktop 是 Docker 在 Windows 10 和 macOS 操作系统上的官方安装方式，这个方法依然属于先在虚拟机中安装 Linux 然后再安装 Docker 的方法。

Docker Desktop 官方下载地址： https://hub.docker.com/editions/community/docker-ce-desktop-windows

**注意：**此方法仅适用于 Windows 10 操作系统专业版、企业版、教育版和部分家庭版！

### 安装 Hyper-V

Hyper-V 是微软开发的虚拟机，类似于 VMWare 或 VirtualBox，仅适用于 Windows 10。这是 Docker Desktop for Windows 所使用的虚拟机。

但是，这个虚拟机一旦启用，QEMU、VirtualBox 或 VMWare Workstation 15 及以下版本将无法使用！如果你必须在电脑上使用其他虚拟机（例如开发 Android 应用必须使用的模拟器），请不要使用 Hyper-V！

### 开启 Hyper-V

![](/images/cb98a47145ab46f4b37011d2ae187b42.png)

程序和功能

![](/images/c8a20baf46404a2eae0ab8bddce557cc.png)

启用或关闭Windows功能

![](/images/e564c8cfbde24b7db9b478755c3fd9e7.png)

选中Hyper-V

![](/images/941262615e4f4fc89a6da03f9a1ad246.png)

也可以通过命令来启用 Hyper-V ，请右键开始菜单并以管理员身份运行 PowerShell，执行以下命令：

Enable-WindowsOptionalFeature  -Online  -FeatureName  Microsoft-Hyper-V -All

### 安装 Docker Desktop for Windows

点击 [Get started with Docker Desktop](https://hub.docker.com/?overlay=onboarding)，并下载 Windows 的版本，如果你还没有登录，会要求注册登录：

<img width="835" height="438" src="/images/9c1313a2b4934ba1aa7164f3c26a665e.png"/>

### 运行安装文件

双击下载的 Docker for Windows Installer 安装文件，一路 Next，点击 Finish 完成安装。

![](/images/7242e82ba70b4d24b5baa5d3f015d49f.png)

![](/images/4e83848f356b413a9c9671a4616e7957.png)

安装完成后，Docker 会自动启动。通知栏上会出现个小鲸鱼的图标![](/images/fc187a67962a4c5792c4861dc0b81478.png)，这表示 Docker 正在运行。

桌边也会出现三个图标，如下图所示：

我们可以在命令行执行 docker version 来查看版本号，docker run hello-world 来载入测试镜像测试。

如果没启动，你可以在 Windows 搜索 Docker 来启动：

![](/images/f569ecb80cf340d1ad0c6db203cd1acf.png)

启动后，也可以在通知栏上看到小鲸鱼图标：

![](/images/da150f9eb4d0441aab2957c9dbec8e83.png)

> 如果启动中遇到因 WSL 2 导致地错误，请安装 [WSL 2](https://docs.microsoft.com/zh-cn/windows/wsl/install-win10)。

安装之后，可以打开 PowerShell 并运行以下命令检测是否运行成功：

docker run hello-world

在成功运行之后应该会出现以下信息：

<img width="835" height="437" src="/images/9be6be329d184729acc2c96c98e832e9.png"/>

* * *

## win7、win8 系统

win7、win8 等需要利用 docker toolbox 来安装，国内可以使用阿里云的镜像来下载，下载地址：http://mirrors.aliyun.com/docker-toolbox/windows/docker-toolbox/

安装比较简单，双击运行，点下一步即可，可以勾选自己需要的组件：

![](/images/09855956a3a1444ea9bc7f27b0ef8a55.png)

docker toolbox 是一个工具集，它主要包含以下一些内容：

- Docker CLI - 客户端，用来运行 docker 引擎创建镜像和容器。
- Docker Machine - 可以让你在 Windows 的命令行中运行 docker 引擎命令。
- Docker Compose - 用来运行 docker-compose 命令。
- Kitematic - 这是 Docker 的 GUI 版本。
- Docker QuickStart shell - 这是一个已经配置好Docker的命令行环境。
- Oracle VM Virtualbox - 虚拟机。

下载完成之后直接点击安装，安装成功后，桌边会出现三个图标，如下图所示：

![](/images/35831b1d9d3142bb8ac8748ab8213cea.png)

点击 Docker QuickStart 图标来启动 Docker Toolbox 终端。

如果系统显示 User Account Control 窗口来运行 VirtualBox 修改你的电脑，选择 Yes。

<img width="835" height="322" src="/images/816017f3da7948d684897a119180e90d.png"/>

$ 符号那你可以输入以下命令来执行。

$ docker run hello-world Unable to find image ''hello-world:latest'' locally Pulling repository hello-world 91c95931e552:  Download complete
 a8219747be10:  Download complete Status:  Downloaded newer image for hello-world:latest Hello  from  Docker.  This message shows that your installation appears to be working correctly.  To generate this message,  Docker took the following steps:  1.  The  Docker  Engine CLI client contacted the Docker  Engine daemon.  2.  The  Docker  Engine daemon pulled the "hello-world" image from the Docker  Hub.  (Assuming it was not already locally available.)  3.  The  Docker  Engine daemon created a new container from that image which runs the
     executable that produces the output you are currently reading.  4.  The  Docker  Engine daemon streamed that output to the Docker  Engine CLI client, which sent it
     to your terminal.  To  try something more ambitious, you can run an Ubuntu container with: $ docker run -it ubuntu bash For more examples and ideas, visit: https://docs.docker.com/userguide/', 8, 'Docker 并非是一个通用的容器工具，它依赖于已存在并运行的 Linux 内核环境。
Docker 实质上是在已经运行的 Linux 下制造了一个隔离的文件环境，因此它执行的效率几乎等同于所部署的 Linux 主机。
因此，Docker 必须部署在 Linux 内核的系统上。如果其他系统想部署 Docker 就必须安装一个虚拟 Linux 环境。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (33, null, 5, 'Docker教程', 5, 'CentOS Docker 安装', '# CentOS Docker 安装

Docker 支持以下的 64 位 CentOS 版本：

- CentOS 7
- CentOS 8
- 更高版本...

* * *

## 使用官方安装脚本自动安装

安装命令如下：

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

也可以使用国内 daocloud 一键安装命令：

curl -sSL https://get.daocloud.io/docker | sh

* * *

## 手动安装

### 卸载旧版本

较旧的 Docker 版本称为 docker 或 docker-engine 。如果已安装这些程序，请卸载它们以及相关的依赖项。

$ sudo yum remove docker \\
                  docker-client \\
                  docker-client-latest \\
                  docker-common \\
                  docker-latest \\
                  docker-latest-logrotate \\
                  docker-logrotate \\
                  docker-engine

### 安装 Docker Engine-Community

### 使用 Docker 仓库进行安装

在新主机上首次安装 Docker Engine-Community 之前，需要设置 Docker 仓库。之后，您可以从仓库安装和更新 Docker。

**设置仓库**

安装所需的软件包。yum-utils 提供了 yum-config-manager ，并且 device mapper 存储驱动程序需要 device-mapper-persistent-data 和 lvm2。

$ sudo yum install -y yum-utils \\
  device-mapper-persistent-data \\
  lvm2

使用以下命令来设置稳定的仓库。

## 使用官方源地址（比较慢）

$ sudo yum-config-manager \\
    --add-repo \\
    https://download.docker.com/linux/centos/docker-ce.repo

可以选择国内的一些源地址：

## 阿里云

$ sudo yum-config-manager \\
    --add-repo \\
    http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

## 清华大学源

$ sudo yum-config-manager \\
    --add-repo \\
    https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/centos/docker-ce.repo

### 安装 Docker Engine-Community

安装最新版本的 Docker Engine-Community 和 containerd，或者转到下一步安装特定版本：

$ sudo yum install docker-ce docker-ce-cli containerd.io

如果提示您接受 GPG 密钥，请选是。

> **有多个 Docker 仓库吗？**
> 
> 如果启用了多个 Docker 仓库，则在未在 yum install 或 yum update 命令中指定版本的情况下，进行的安装或更新将始终安装最高版本，这可能不适合您的稳定性需求。

Docker 安装完默认未启动。并且已经创建好 docker 用户组，但该用户组下没有用户。

**要安装特定版本的 Docker Engine-Community，请在存储库中列出可用版本，然后选择并安装：**

1、列出并排序您存储库中可用的版本。此示例按版本号（从高到低）对结果进行排序。

$ yum list docker-ce --showduplicates | sort -r

docker-ce.x86_64  3:18.09.1-3.el7                     docker-ce-stable
docker-ce.x86_64  3:18.09.0-3.el7                     docker-ce-stable
docker-ce.x86_64  18.06.1.ce-3.el7                    docker-ce-stable
docker-ce.x86_64  18.06.0.ce-3.el7                    docker-ce-stable

2、通过其完整的软件包名称安装特定版本，该软件包名称是软件包名称（docker-ce）加上版本字符串（第二列），从第一个冒号（:）一直到第一个连字符，并用连字符（-）分隔。例如：docker-ce-18.09.1。

$ sudo yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io

启动 Docker。

$ sudo systemctl start docker

通过运行 hello-world 映像来验证是否正确安装了 Docker Engine-Community 。

$ sudo docker run hello-world', 8, 'Docker 支持以下的 64 位 CentOS 版本：
CentOS 7
CentOS 8
更高版本...
使用官方安装脚本自动安装');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (34, null, 5, 'Docker教程', 4, 'Debian Docker 安装', '# Debian Docker 安装

Docker 支持以下的 Debian 版本：

- Buster 10
- Stretch 9 (stable) / Raspbian Stretch

Docker Engine-Community 在 x86_64（或 amd64 ）armhf，和 arm64 体系结构上受支持。

* * *

## 使用官方安装脚本自动安装

安装命令如下：

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

也可以使用国内 daocloud 一键安装命令：

curl -sSL https://get.daocloud.io/docker | sh

* * *

## 手动安装

### 卸载旧版本

Docker 的旧版本被称为 docker，docker.io 或 docker-engine，如果已安装，请卸载它们：

$ sudo apt-get remove docker docker-engine docker.io containerd runc

### 安装 Docker Engine-Community

### 使用 Docker 仓库进行安装

在新主机上首次安装 Docker Engine-Community 之前，需要设置 Docker 仓库。之后，您可以从仓库安装和更新 Docker。

Raspbian 用户不能使用此方法！

对于 Raspbian，尚不支持使用仓库进行安装。您必须改为使用 shell 脚本方式。

### 设置仓库

更新 apt 包索引。

$ sudo apt-get update

安装 apt 依赖包，用于通过 HTTPS 来获取仓库。

$ sudo apt-get install \\
    apt-transport-https \\
    ca-certificates \\
    curl \\
    gnupg2 \\
    software-properties-common

添加 Docker 的官方 GPG 密钥：

$ curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/debian/gpg | sudo apt-key add -

9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88 通过搜索指纹的后8个字符，验证您现在是否拥有带有指纹的密钥。

$ sudo apt-key fingerprint 0EBFCD88

pub   4096R/0EBFCD88 2017-02-22
      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid                  Docker Release (CE deb) <docker@docker.com>
sub   4096R/F273FCD8 2017-02-22

使用以下指令设置稳定版仓库：

$ sudo add-apt-repository \\
   "deb \\[arch=amd64\\] https://mirrors.ustc.edu.cn/docker-ce/linux/debian \\
  $(lsb_release -cs) \\
  stable"

### 安装 Docker Engine-Community

更新 apt 包索引：

$ sudo apt-get update

安装最新版本的 Docker Engine-Community 和 containerd ，或者转到下一步安装特定版本：

$ sudo apt-get install docker-ce docker-ce-cli containerd.io

要安装特定版本的 Docker Engine-Community，请在仓库中列出可用版本，然后选择一种安装。列出您的仓库中可用的版本：

$ apt-cache madison docker-ce

  docker-ce | 5:18.09.1~3-0~debian-stretch | https://mirrors.ustc.edu.cn/docker-ce/linux/debian stretch/stable amd64 Packages
  docker-ce | 5:18.09.0~3-0~debian-stretch | https://mirrors.ustc.edu.cn/docker-ce/linux/debian stretch/stable amd64 Packages
  docker-ce | 18.06.1~ce~3-0~debian        | https://mirrors.ustc.edu.cn/docker-ce/linux/debian stretch/stable amd64 Packages
  docker-ce | 18.06.0~ce~3-0~debian        | https://mirrors.ustc.edu.cn/docker-ce/linux/debian stretch/stable amd64 Packages
  ...

使用第二列中的版本字符串安装特定版本，例如 5:18.09.1~3-0~debian-stretch 。

$ sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io

测试 Docker 是否安装成功，输入以下指令，打印出以下信息则安装成功：

$ sudo docker run hello-world

Unable to find image ''hello-world:latest'' locally
latest: Pulling from library/hello-world
1b930d010525: Pull complete                                                                                                                                  Digest: sha256:c3b4ada4687bbaa170745b3e4dd8ac3f194ca95b2d0518b417fb47e5879d9b5f
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/', 17, 'Docker 支持以下的 Debian 版本：
Buster 10
Stretch 9 (stable) / Raspbian Stretch
Docker Engine-Community 在 x86_64（或 amd64 ）armhf，和 arm64 体系结构上受支持。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (35, null, 5, 'Docker教程', 3, 'Ubuntu Docker 安装', '# Ubuntu Docker 安装

Docker Engine-Community 支持以下的 Ubuntu 版本：

- Xenial 16.04 (LTS)
- Bionic 18.04 (LTS)
- Cosmic 18.10
- Disco 19.04
- 其他更新的版本……

Docker Engine - Community 支持上 x86_64（或 amd64）armhf，arm64，s390x （IBM Z），和 ppc64le（IBM的Power）架构。

* * *

## 使用官方安装脚本自动安装

安装命令如下：

curl -fsSL https://get.docker.com | bash -s docker --mirror Aliyun

也可以使用国内 daocloud 一键安装命令：

curl -sSL https://get.daocloud.io/docker | sh

* * *

## 手动安装

### 卸载旧版本

Docker 的旧版本被称为 docker，docker.io 或 docker-engine 。如果已安装，请卸载它们：

$ sudo apt-get remove docker docker-engine docker.io containerd runc

当前称为 Docker Engine-Community 软件包 docker-ce 。

安装 Docker Engine-Community，以下介绍两种方式。

### 使用 Docker 仓库进行安装

在新主机上首次安装 Docker Engine-Community 之前，需要设置 Docker 仓库。之后，您可以从仓库安装和更新 Docker 。

### 设置仓库

更新 apt 包索引。

$ sudo apt-get update

安装 apt 依赖包，用于通过HTTPS来获取仓库:

$ sudo apt-get install \\
    apt-transport-https \\
    ca-certificates \\
    curl \\
    gnupg-agent \\
    software-properties-common

添加 Docker 的官方 GPG 密钥：

$ curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | sudo apt-key add -

9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88 通过搜索指纹的后8个字符，验证您现在是否拥有带有指纹的密钥。

$ sudo apt-key fingerprint 0EBFCD88

    pub   rsa4096 2017-02-22 \\[SCEA\\]
      9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid           \\[ unknown\\] Docker Release (CE deb) <docker@docker.com>
sub   rsa4096 2017-02-22 \\[S\\]

使用以下指令设置稳定版仓库

$ sudo add-apt-repository \\
   "deb \\[arch=amd64\\] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/ \\
  $(lsb_release -cs) \\
  stable"

### 安装 Docker Engine-Community

更新 apt 包索引。

$ sudo apt-get update

安装最新版本的 Docker Engine-Community 和 containerd ，或者转到下一步安装特定版本：

$ sudo apt-get install docker-ce docker-ce-cli containerd.io

要安装特定版本的 Docker Engine-Community，请在仓库中列出可用版本，然后选择一种安装。列出您的仓库中可用的版本：

$ apt-cache madison docker-ce

  docker-ce | 5:18.09.1~3-0~ubuntu-xenial | https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu  xenial/stable amd64 Packages
  docker-ce | 5:18.09.0~3-0~ubuntu-xenial | https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu  xenial/stable amd64 Packages
  docker-ce | 18.06.1~ce~3-0~ubuntu       | https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu  xenial/stable amd64 Packages
  docker-ce | 18.06.0~ce~3-0~ubuntu       | https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu  xenial/stable amd64 Packages
  ...

使用第二列中的版本字符串安装特定版本，例如 5:18.09.1~3-0~ubuntu-xenial。

$ sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io

测试 Docker 是否安装成功，输入以下指令，打印出以下信息则安装成功:

$ sudo docker run hello-world

Unable to find image ''hello-world:latest'' locally
latest: Pulling from library/hello-world
1b930d010525: Pull complete                                                                                                                                  Digest: sha256:c3b4ada4687bbaa170745b3e4dd8ac3f194ca95b2d0518b417fb47e5879d9b5f
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

* * *

## 使用 Shell 脚本进行安装

Docker 在 [get.docker.com](https://get.docker.com/) 和 [test.docker.com](https://test.docker.com/) 上提供了方便脚本，用于将快速安装 Docker Engine-Community 的边缘版本和测试版本。脚本的源代码在 docker-install 仓库中。 不建议在生产环境中使用这些脚本，在使用它们之前，您应该了解潜在的风险：

- 脚本需要运行 root 或具有 sudo 特权。因此，在运行脚本之前，应仔细检查和审核脚本。
    
- 这些脚本尝试检测 Linux 发行版和版本，并为您配置软件包管理系统。此外，脚本不允许您自定义任何安装参数。从 Docker 的角度或您自己组织的准则和标准的角度来看，这可能导致不支持的配置。
    
- 这些脚本将安装软件包管理器的所有依赖项和建议，而无需进行确认。这可能会安装大量软件包，具体取决于主机的当前配置。
    
- 该脚本未提供用于指定要安装哪个版本的 Docker 的选项，而是安装了在 edge 通道中发布的最新版本。
    
- 如果已使用其他机制将 Docker 安装在主机上，请不要使用便捷脚本。
    

本示例使用 [get.docker.com](https://get.docker.com/) 上的脚本在 Linux 上安装最新版本的Docker Engine-Community。要安装最新的测试版本，请改用 test.docker.com。在下面的每个命令，取代每次出现 get 用 test。

$ curl -fsSL https://get.docker.com -o get-docker.sh $ sudo sh get-docker.sh

如果要使用 Docker 作为非 root 用户，则应考虑使用类似以下方式将用户添加到 docker 组：

$ sudo usermod -aG docker your-user', 81, 'Docker Engine-Community 支持以下的 Ubuntu 版本：
Xenial 16.04 (LTS)
Bionic 18.04 (LTS)
Cosmic 18.10
Disco 19.04
其他更新的版本……
Docker Engine - Community 支持上 x86_64（或 amd64）armhf，arm64，s390x （IBM Z），和 ppc64le（IBM的Power）架构。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (36, null, 5, 'Docker教程', 2, 'Docker 架构', '# Docker 架构

Docker 包括三个基本概念:

- **镜像（Image）**：Docker 镜像（Image），就相当于是一个 root 文件系统。比如官方镜像 ubuntu:16.04 就包含了完整的一套 Ubuntu16.04 最小系统的 root 文件系统。
- **容器（Container）**：镜像（Image）和容器（Container）的关系，就像是面向对象程序设计中的类和实例一样，镜像是静态的定义，容器是镜像运行时的实体。容器可以被创建、启动、停止、删除、暂停等。
- **仓库（Repository）**：仓库可看成一个代码控制中心，用来保存镜像。

Docker 使用客户端-服务器 (C/S) 架构模式，使用远程API来管理和创建Docker容器。

Docker 容器通过 Docker 镜像来创建。

容器与镜像的关系类似于面向对象编程中的对象与类。

| Docker | 面向对象 |
| --- | --- |
| 容器  | 对象  |
| 镜像  | 类   |

![](/images/c69ccd9a4ba34fc2b8313cd1e3619175.png)

| 概念  | 说明  |
| --- | --- |
| Docker 镜像(Images) | Docker 镜像是用于创建 Docker 容器的模板，比如 Ubuntu 系统。 |
| Docker 容器(Container) | 容器是独立运行的一个或一组应用，是镜像运行时的实体。 |
| Docker 客户端(Client) | Docker 客户端通过命令行或者其他工具使用 Docker SDK (https://docs.docker.com/develop/sdk/) 与 Docker 的守护进程通信。 |
| Docker 主机(Host) | 一个物理或者虚拟的机器用于执行 Docker 守护进程和容器。 |
| Docker Registry | Docker 仓库用来保存镜像，可以理解为代码控制中的代码仓库。<br><br>Docker Hub([https://hub.docker.com](https://hub.docker.com/)) 提供了庞大的镜像集合供使用。<br><br>一个 Docker Registry 中可以包含多个仓库（Repository）；每个仓库可以包含多个标签（Tag）；每个标签对应一个镜像。<br><br>通常，一个仓库会包含同一个软件不同版本的镜像，而标签就常用于对应该软件的各个版本。我们可以通过 &lt;仓库名&gt;:&lt;标签&gt; 的格式来指定具体是这个软件哪个版本的镜像。如果不给出标签，将以 **latest** 作为默认标签。 |
| Docker Machine | Docker Machine是一个简化Docker安装的命令行工具，通过一个简单的命令行即可在相应的平台上安装Docker，比如VirtualBox、 Digital Ocean、Microsoft Azure。 |', 105, 'Docker 包括三个基本概念:
镜像（Image）：Docker 镜像（Image），就相当于是一个 root 文件系统。比如官方镜像 ubuntu:16.04 就包含了完整的一套 Ubuntu16.04 最小系统的 root 文件系统。
容器（Container）：镜像（Image）和容器（Container）的关系，就像是面向对象程序设计中的类和实例一样，镜像是静态的定义，容器是镜像运行时的实体。容器可以被创建、启动、停止、删除、暂停等。
仓库（Repository）：仓库可看成一个代码控制中心，用来保存镜像。
Docker 使用客户端-服务器 (C/S) 架构模式，使用远程API来管理和创建Docker容器。
Docker 容器通过 Docker 镜像来创建。
容器与镜像的关系类似于面向对象编程中的对象与类。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (39, null, 3, 'MySQL教程', 2, 'MySQL 安装', '# MySQL 安装

所有平台的 MySQL 下载地址为： [MySQL 下载](https://dev.mysql.com/downloads/mysql/) 。 挑选你需要的 *MySQL Community Server* 版本及对应的平台。

> **注意：**安装过程我们需要通过开启管理员权限来安装，否则会由于权限不足导致无法安装。

* * *

## Linux/UNIX 上安装 MySQL

Linux平台上推荐使用RPM包来安装Mysql,MySQL AB提供了以下RPM包的下载地址：

- **MySQL** \\- MySQL服务器。你需要该选项，除非你只想连接运行在另一台机器上的MySQL服务器。
- **MySQL-client** \\- MySQL 客户端程序，用于连接并操作Mysql服务器。
- **MySQL-devel** \\- 库和包含文件，如果你想要编译其它MySQL客户端，例如Perl模块，则需要安装该RPM包。
- **MySQL-shared** \\- 该软件包包含某些语言和应用程序需要动态装载的共享库(libmysqlclient.so*)，使用MySQL。
- **MySQL-bench** \\- MySQL数据库服务器的基准和性能测试工具。

安装前，我们可以检测系统是否自带安装 MySQL:

rpm -qa | grep mysql

如果你系统有安装，那可以选择进行卸载:

rpm -e mysql// 普通删除模式 rpm -e --nodeps mysql// 强力删除模式，如果使用上面命令删除时，提示有依赖的其它文件，则用该命令可以对其进行强力删除

**安装 MySQL：**

接下来我们在 Centos7 系统下使用 yum 命令安装 MySQL，需要注意的是 CentOS 7 版本中 MySQL数据库已从默认的程序列表中移除，所以在安装前我们需要先去官网下载 Yum 资源包，下载地址为：https://dev.mysql.com/downloads/repo/yum/

<img width="835" height="228" src="/images/a1ffdd7606924e55b027fff191795560.png"/>

wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum update
yum install mysql-server

权限设置：

chown mysql:mysql -R /var/lib/mysql

初始化 MySQL：

mysqld --initialize

启动 MySQL：

systemctl start mysqld

查看 MySQL 运行状态：

systemctl status mysqld

**注意：**如果我们是第一次启动 mysql 服务，mysql 服务器首先会进行初始化的配置。

> 此外,你也可以使用 MariaDB 代替，MariaDB 数据库管理系统是 MySQL 的一个分支，主要由开源社区在维护，采用 GPL 授权许可。开发这个分支的原因之一是：甲骨文公司收购了 MySQL 后，有将 MySQL 闭源的潜在风险，因此社区采用分支的方式来避开这个风险。
>
> MariaDB的目的是完全兼容MySQL，包括API和命令行，使之能轻松成为MySQL的代替品。
>
> yum install mariadb-server mariadb
>
> mariadb数据库的相关命令是：
>
> systemctl start mariadb #启动MariaDB systemctl stop mariadb #停止MariaDB systemctl restart mariadb #重启MariaDB systemctl enable mariadb #设置开机启动

* * *

## 验证 MySQL 安装

在成功安装 MySQL 后，一些基础表会表初始化，在服务器启动后，你可以通过简单的测试来验证 MySQL 是否工作正常。

使用 mysqladmin 工具来获取服务器状态：

使用 mysqladmin 命令来检查服务器的版本, 在 linux 上该二进制文件位于 /usr/bin 目录，在 Windows 上该二进制文件位于C:\\\\mysql\\\\bin 。

\\[root@host\\]# mysqladmin --version

linux上该命令将输出以下结果，该结果基于你的系统信息：

mysqladmin Ver  8.23  Distrib  5.0.9-0,  for redhat-linux-gnu on i386

如果以上命令执行后未输出任何信息，说明你的Mysql未安装成功。

* * *

## 使用 MySQL Client(Mysql客户端) 执行简单的SQL命令

你可以在 MySQL Client(Mysql客户端) 使用 mysql 命令连接到 MySQL 服务器上，默认情况下 MySQL 服务器的登录密码为空，所以本实例不需要输入密码。

命令如下：

\\[root@host\\]# mysql

以上命令执行后会输出 mysql>提示符，这说明你已经成功连接到Mysql服务器上，你可以在 mysql> 提示符执行SQL命令：

mysql> SHOW DATABASES;  +----------+  |  Database  |  +----------+  | mysql |  | test |  +----------+  2 rows in  set  (0.13 sec)

* * *

## Mysql安装后需要做的

Mysql安装成功后，默认的root用户密码为空，你可以使用以下命令来创建root用户的密码：

\\[root@host\\]# mysqladmin -u root password "new_password";

现在你可以通过以下命令来连接到Mysql服务器：

\\[root@host\\]# mysql -u root -p Enter password:*******

**注意：**在输入密码时，密码是不会显示了，你正确输入即可。

* * *

## Windows 上安装 MySQL

Windows 上安装 MySQL 相对来说会较为简单，最新版本可以在 [MySQL 下载](https://dev.mysql.com/downloads/mysql/) 中下载中查看(**更详细安装：[Windows 上安装 MySQL](https://www.runoob.com/w3cnote/windows10-mysql-installer.html)**)。

![](/images/c72cb272bf914e6fb19b0295624acdb5.png)

<img width="835" height="184" src="/images/115919d0c5924a12a64abc62c80b2969.png"/>

点击 **Download** 按钮进入下载页面，点击下图中的 **No thanks, just start my download.** 就可立即下载：

<img width="835" height="235" src="/images/655c1c4f825a493985704e125089bdc0.png"/>

下载完后，我们将 zip 包解压到相应的目录，这里我将解压后的文件夹放在 **C:\\\\web\\\\mysql-8.0.11** 下。

**接下来我们需要配置下 MySQL 的配置文件**

打开刚刚解压的文件夹 **C:\\\\web\\\\mysql-8.0.11** ，在该文件夹下创建 **my.ini** 配置文件，编辑 **my.ini** 配置以下基本信息：

\\[client\\]  \\# 设置mysql客户端默认字符集  default-character-set=utf8 \\[mysqld\\]  \\# 设置3306端口 port =  3306  \\# 设置mysql的安装目录 basedir=C:\\\\\\web\\\\\\mysql-8.0.11  \\# 设置 mysql数据库的数据的存放目录，MySQL 8+ 不需要以下配置，系统自己生成即可，否则有可能报错  \\# datadir=C:\\\\\\web\\\\\\sqldata  \\# 允许最大连接数 max_connections=20  \\# 服务端使用的字符集默认为8比特编码的latin1字符集 character-set-server=utf8 \\# 创建新表时将使用的默认存储引擎  default-storage-engine=INNODB

**接下来我们来启动下 MySQL 数据库：**

以管理员身份打开 cmd 命令行工具，切换目录：

cd C:\\\\web\\\\mysql-8.0.11\\\\bin

初始化数据库：

mysqld --initialize --console

执行完成后，会输出 root 用户的初始默认密码，如：

...  2018-04-20T02:35:05.464644Z  5  \\[Note\\]  \\[MY-010454\\]  \\[Server\\] A temporary password is generated for root@localhost: APWCY5ws&hjQ ...

APWCY5ws&hjQ 就是初始密码，后续登录需要用到，你也可以在登陆后修改密码。

输入以下安装命令：

mysqld install

启动输入以下命令即可：

net start mysql

> 注意: 在 5.7 需要初始化 data 目录：
>
> cd C:\\\\web\\\\mysql-8.0.11\\\\bin mysqld --initialize-insecure
>
> 初始化后再运行 net start mysql 即可启动 mysql。

* * *

## 登录 MySQL

当 MySQL 服务已经运行时, 我们可以通过 MySQL 自带的客户端工具登录到 MySQL 数据库中, 首先打开命令提示符, 输入以下格式的命名:

mysql -h 主机名  -u 用户名  -p

参数说明：

- **-h** : 指定客户端所要登录的 MySQL 主机名, 登录本机(localhost 或 127.0.0.1)该参数可以省略;
- **-u** : 登录的用户名;
- **-p** : 告诉服务器将会使用一个密码来登录, 如果所要登录的用户名密码为空, 可以忽略此选项。

如果我们要登录本机的 MySQL 数据库，只需要输入以下命令即可：

mysql -u root -p

按回车确认, 如果安装正确且 MySQL 正在运行, 会得到以下响应:

Enter password:

若密码存在, 输入密码登录, 不存在则直接按回车登录。登录成功后你将会看到 Welcome to the MySQL monitor... 的提示语。

然后命令提示符会一直以 mysq> 加一个闪烁的光标等待命令的输入, 输入 **exit** 或 **quit** 退出登录。
', 95, 'Linux平台上推荐使用RPM包来安装Mysql,MySQL AB提供了以下RPM包的下载地址：
MySQL - MySQL服务器。你需要该选项，除非你只想连接运行在另一台机器上的MySQL服务器。
MySQL-client - MySQL 客户端程序，用于连接并操作Mysql服务器。
MySQL-devel - 库和包含文件，如果你想要编译其它MySQL客户端，例如Perl模块，则需要安装该RPM包。
MySQL-shared - 该软件包包含某些语言和应用程序需要动态装载的共享库(libmysqlclient.so*)，使用MySQL。
MySQL-bench - MySQL数据库服务器的基准和性能测试工具。
安装前，我们可以检测系统是否自带安装 MySQL:');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (40, null, 3, 'MySQL教程', 3, 'MySQL 管理', '# MySQL 管理

* * *

## 启动及关闭 MySQL 服务器

### Windows 系统下

在 Windows 系统下，打开命令窗口(cmd)，进入 MySQL 安装目录的 bin 目录。

启动：

cd c:/mysql/bin
mysqld --console

关闭：

cd c:/mysql/bin
mysqladmin -uroot shutdown

### Linux 系统下

首先，我们需要通过以下命令来检查MySQL服务器是否启动：

ps -ef | grep mysqld

如果MySql已经启动，以上命令将输出mysql进程列表， 如果mysql未启动，你可以使用以下命令来启动mysql服务器:

root@host\\# cd /usr/bin  ./mysqld_safe &

如果你想关闭目前运行的 MySQL 服务器, 你可以执行以下命令:

root@host\\# cd /usr/bin  ./mysqladmin -u root -p shutdown Enter password:  \\*\\*\\*\\*\\*\\*

* * *

## MySQL 用户设置

如果你需要添加 MySQL 用户，你只需要在 mysql 数据库中的 user 表添加新用户即可。

以下为添加用户的的实例，用户名为guest，密码为guest123，并授权用户可进行 SELECT, INSERT 和 UPDATE操作权限：

root@host\\# mysql -u root -p  Enter password:******* mysql>  use mysql;  Database changed

mysql> INSERT INTO user (host, user, password, select_priv, insert_priv, update_priv) VALUES (''localhost'',  ''guest'', PASSWORD(''guest123''),  ''Y'',  ''Y'',  ''Y'');  Query OK,  1 row affected (0.20 sec) mysql> FLUSH PRIVILEGES;  Query OK,  1 row affected (0.01 sec) mysql> SELECT host, user, password FROM user WHERE user =  ''guest'';  +-----------+---------+------------------+  | host | user | password |  +-----------+---------+------------------+  | localhost | guest |  6f8c114b58f2ce9e  |  +-----------+---------+------------------+  1 row in  set  (0.00 sec)

在添加用户时，请注意使用MySQL提供的 PASSWORD() 函数来对密码进行加密。 你可以在以上实例看到用户密码加密后为： 6f8c114b58f2ce9e.

**注意：**在 MySQL5.7 中 user 表的 password 已换成了**authentication_string**。

**注意：**password() 加密函数已经在 8.0.11 中移除了，可以使用 MD5() 函数代替。

**注意：**在注意需要执行 **FLUSH PRIVILEGES** 语句。 这个命令执行后会重新载入授权表。

如果你不使用该命令，你就无法使用新创建的用户来连接mysql服务器，除非你重启mysql服务器。

你可以在创建用户时，为用户指定权限，在对应的权限列中，在插入语句中设置为 ''Y'' 即可，用户权限列表如下：

- Select_priv
- Insert_priv
- Update_priv
- Delete_priv
- Create_priv
- Drop_priv
- Reload_priv
- Shutdown_priv
- Process_priv
- File_priv
- Grant_priv
- References_priv
- Index_priv
- Alter_priv

另外一种添加用户的方法为通过SQL的 GRANT 命令，以下命令会给指定数据库TUTORIALS添加用户 zara ，密码为 zara123 。

root@host\\# mysql -u root -p  Enter password:******* mysql>  use mysql;  Database changed

mysql> GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP -> ON TUTORIALS.*  -> TO ''zara''@''localhost''  -> IDENTIFIED BY ''zara123'';

以上命令会在mysql数据库中的user表创建一条用户信息记录。

**注意:** MySQL 的SQL语句以分号 (;) 作为结束标识。

* * *

## /etc/my.cnf 文件配置

一般情况下，你不需要修改该配置文件，该文件默认配置如下：

\\[mysqld\\] datadir=/var/lib/mysql
socket=/var/lib/mysql/mysql.sock \\[mysql.server\\] user=mysql
basedir=/var/lib \\[safe_mysqld\\] err-log=/var/log/mysqld.log
pid-file=/var/run/mysqld/mysqld.pid

在配置文件中，你可以指定不同的错误日志文件存放的目录，一般你不需要改动这些配置。

* * *

## 管理MySQL的命令

以下列出了使用Mysql数据库过程中常用的命令：

- **USE *数据库名*** :
    选择要操作的Mysql数据库，使用该命令后所有Mysql命令都只针对该数据库。
    
    mysql>  use RUNOOB;  Database changed
    
- **SHOW DATABASES:**
    列出 MySQL 数据库管理系统的数据库列表。
    
    mysql> SHOW DATABASES;  +--------------------+  |  Database  |  +--------------------+  | information_schema |  | RUNOOB |  | cdcol |  | mysql |  | onethink |  | performance_schema |  | phpmyadmin |  | test |  | wecenter |  | wordpress |  +--------------------+  10 rows in  set  (0.02 sec)
    
- **SHOW TABLES:**
    显示指定数据库的所有表，使用该命令前需要使用 use 命令来选择要操作的数据库。
    
    mysql>  use RUNOOB;  Database changed
    mysql> SHOW TABLES;  +------------------+  |  Tables\\_in\\_runoob  |  +------------------+  | employee_tbl |  | runoob_tbl |  | tcount_tbl |  +------------------+  3 rows in  set  (0.00 sec)
    
- **SHOW COLUMNS FROM *数据表*:**
    显示数据表的属性，属性类型，主键信息 ，是否为 NULL，默认值等其他信息。
    
    mysql> SHOW COLUMNS FROM runoob_tbl;  +-----------------+--------------+------+-----+---------+-------+  |  Field  |  Type  |  Null  |  Key  |  Default  |  Extra  |  +-----------------+--------------+------+-----+---------+-------+  | runoob_id |  int(11)  | NO | PRI | NULL |  |  | runoob_title | varchar(255)  | YES |  | NULL |  |  | runoob_author | varchar(255)  | YES |  | NULL |  |  | submission_date | date | YES |  | NULL |  |  +-----------------+--------------+------+-----+---------+-------+  4 rows in  set  (0.01 sec)
    
- **SHOW INDEX FROM *数据表*:**
    显示数据表的详细索引信息，包括PRIMARY KEY（主键）。
    
    mysql> SHOW INDEX FROM runoob_tbl;  +------------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+  |  Table  |  Non_unique  |  Key_name  |  Seq\\_in\\_index  |  Column_name  |  Collation  |  Cardinality  |  Sub_part  |  Packed  |  Null  |  Index_type  |  Comment  |  Index_comment  |  +------------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+  | runoob_tbl |  0  | PRIMARY |  1  | runoob_id | A |  2  | NULL | NULL |  | BTREE |  |  |  +------------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+  1 row in  set  (0.00 sec)
    
- **SHOW TABLE STATUS \\[FROM db_name\\] \\[LIKE ''pattern''\\] \\\\G:**
    该命令将输出Mysql数据库管理系统的性能及统计信息。
    
    mysql> SHOW TABLE STATUS  FROM RUNOOB;  \\# 显示数据库 RUNOOB 中所有表的信息 mysql> SHOW TABLE STATUS from RUNOOB LIKE ''runoob%'';  \\# 表名以runoob开头的表的信息 mysql> SHOW TABLE STATUS from RUNOOB LIKE ''runoob%''\\\\G;  \\# 加上 \\\\G，查询结果按列打印
    

Gif 图演示：

<img width="835" height="488" src="/images/1a6385ac9a474345a6fec06c24381cf0.gif"/>', 85, '如果你需要添加 MySQL 用户，你只需要在 mysql 数据库中的 user 表添加新用户即可。
以下为添加用户的的实例，用户名为guest，密码为guest123，并授权用户可进行 SELECT, INSERT 和 UPDATE操作权限：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (41, null, 3, 'MySQL教程', 4, 'MySQL PHP 语法', '# MySQL PHP 语法

MySQL 可应用于多种语言，包括 PERL, C, C++, JAVA 和 PHP，在这些语言中，MySQL 在 PHP 的 web 开发中是应用最广泛。

在本教程中我们大部分实例都采用了 PHP 语言。如果你想了解 MySQL 在 PHP 中的应用，可以访问我们的 [PHP 中使用 Mysqli 介绍](https://www.runoob.com/php/php-mysql-intro.html)。

PHP 提供了多种方式来访问和操作Mysql数据库记录。PHP mysqli 函数格式如下：

mysqli_function(value,value,...);

以上格式中 function部分描述了mysql函数的功能，如

mysqli_connect($connect); mysqli_query($connect,"SQL 语句"); mysqli\\_fetch\\_array() mysqli_close()

以下实例展示了PHP调用mysql函数的语法：

## 实例 (MySQLi)

<?php  $retval = mysqli_function(value, \\[value,...\\]); if( !$retval  )  {  die  (  "相关错误信息"  ); }  ?>

从下一章开始，我们将学习到更多的MySQL功能函数。', 406, 'MySQL 可应用于多种语言，包括 PERL, C, C++, JAVA 和 PHP，在这些语言中，MySQL 在 PHP 的 web 开发中是应用最广泛。
在本教程中我们大部分实例都采用了 PHP 语言。如果你想了解 MySQL 在 PHP 中的应用，可以访问我们的 PHP 中使用 Mysqli 介绍。
PHP 提供了多种方式来访问和操作Mysql数据库记录。PHP mysqli 函数格式如下：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (42, null, 3, 'MySQL教程', 5, 'MySQL 连接', '# MySQL 连接

* * *

## 使用mysql二进制方式连接

您可以使用MySQL二进制方式进入到mysql命令提示符下来连接MySQL数据库。

### 实例

以下是从命令行中连接mysql服务器的简单实例：

\\[root@host\\]# mysql -u root -p Enter password:******

在登录成功后会出现 mysql> 命令提示窗口，你可以在上面执行任何 SQL 语句。

以上命令执行后，登录成功输出结果如下:

Welcome to the MySQL monitor.  Commands  end  with  ;  or \\\\g.  Your  MySQL connection id is  2854760 to server version:  5.0.9  Type  ''help;''  or  ''\\\\h''  for help.  Type  ''\\\\c'' to clear the buffer.

在以上实例中，我们使用了root用户登录到mysql服务器，当然你也可以使用其他mysql用户登录。

如果用户权限足够，任何用户都可以在mysql的命令提示窗口中进行SQL操作。

退出 mysql> 命令提示窗口可以使用 exit 命令，如下所示：

mysql>  exit  Bye

* * *

## 使用 PHP 脚本连接 MySQL

PHP 提供了 mysqli_connect() 函数来连接数据库。

该函数有 6 个参数，在成功链接到 MySQL 后返回连接标识，失败返回 FALSE 。

### 语法

mysqli_connect(host, username, password, dbname,port, socket);

**参数说明：**

| 参数  | 描述  |
| --- | --- |
| *host* | 可选。规定主机名或 IP 地址。 |
| *username* | 可选。规定 MySQL 用户名。 |
| *password* | 可选。规定 MySQL 密码。 |
| *dbname* | 可选。规定默认使用的数据库。 |
| *port* | 可选。规定尝试连接到 MySQL 服务器的端口号。 |
| *socket* | 可选。规定 socket 或要使用的已命名 pipe。 |

你可以使用 PHP 的 mysqli_close() 函数来断开与 MySQL 数据库的链接。

该函数只有一个参数为 mysqli_connect() 函数创建连接成功后返回的 MySQL 连接标识符。

### 语法

bool mysqli_close ( mysqli $link )

本函数关闭指定的连接标识所关联的到 MySQL 服务器的非持久连接。如果没有指定 link_identifier，则关闭上一个打开的连接。

**提示：**通常不需要使用 mysqli_close()，因为已打开的非持久连接会在脚本执行完毕后自动关闭。

### 实例

你可以尝试以下实例来连接到你的 MySQL 服务器:

## 连接 MySQL

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''Could not connect: '' . mysqli_error()); }  echo  ''数据库连接成功！''; mysqli_close($conn); ?>', 81, '在以上实例中，我们使用了root用户登录到mysql服务器，当然你也可以使用其他mysql用户登录。
如果用户权限足够，任何用户都可以在mysql的命令提示窗口中进行SQL操作。
退出 mysql> 命令提示窗口可以使用 exit 命令，如下所示：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (43, null, 3, 'MySQL教程', 6, 'MySQL 创建数据库', '# MySQL 创建数据库

* * *

我们可以在登陆 MySQL 服务后，使用 create 命令创建数据库，语法如下:

CREATE DATABASE 数据库名;

以下命令简单的演示了创建数据库的过程，数据名为 RUNOOB:

\\[root@host\\]# mysql -u root -p Enter password:******  \\# 登录后进入终端 mysql> create DATABASE RUNOOB;

### 使用 mysqladmin 创建数据库

使用普通用户，你可能需要特定的权限来创建或者删除 MySQL 数据库。

所以我们这边使用root用户登录，root用户拥有最高权限，可以使用 mysql mysqladmin 命令来创建数据库。

以下命令简单的演示了创建数据库的过程，数据名为 RUNOOB:

\\[root@host\\]# mysqladmin -u root -p create RUNOOB Enter password:******

以上命令执行成功后会创建 MySQL 数据库 RUNOOB。

* * *

## 使用 PHP脚本 创建数据库

PHP 使用 mysqli_query 函数来创建或者删除 MySQL 数据库。

该函数有两个参数，在执行成功时返回 TRUE，否则返回 FALSE。

### 语法

mysqli_query(connection,query,resultmode);

| 参数  | 描述  |
| --- | --- |
| *connection* | 必需。规定要使用的 MySQL 连接。 |
| *query* | 必需，规定查询字符串。 |
| *resultmode* | 可选。一个常量。可以是下列值中的任意一个：<br><br>- MYSQLI\\_USE\\_RESULT（如果需要检索大量数据，请使用这个）<br>- MYSQLI\\_STORE\\_RESULT（默认） |

### 实例

以下实例演示了使用PHP来创建一个数据库：

## 创建数据库

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接错误: '' . mysqli_error($conn)); }  echo  ''连接成功&lt;br /&gt;''; $sql = ''CREATE DATABASE RUNOOB''; $retval = mysqli_query($conn,$sql  ); if(! $retval  )  {  die(''创建数据库失败: '' . mysqli_error($conn)); }  echo  "数据库 RUNOOB 创建成功\\\\n"; mysqli_close($conn); ?>

执行成功后，返回如下结果：

![](/images/e00c886bb7b4432ebb3e5d7f2b94780f.jpg)

如果数据库已存在，执行后，返回如下结果：

![](/images/cac321bd00d8487984dc78ec44c1c9f8.jpg)
', 74, '使用普通用户，你可能需要特定的权限来创建或者删除 MySQL 数据库。
所以我们这边使用root用户登录，root用户拥有最高权限，可以使用 mysql mysqladmin 命令来创建数据库。
以下命令简单的演示了创建数据库的过程，数据名为 RUNOOB:');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (44, null, 3, 'MySQL教程', 7, 'MySQL 删除数据库', '# MySQL 删除数据库

* * *

使用普通用户登陆 MySQL 服务器，你可能需要特定的权限来创建或者删除 MySQL 数据库，所以我们这边使用 root 用户登录，root 用户拥有最高权限。

在删除数据库过程中，务必要十分谨慎，因为在执行删除命令后，所有数据将会消失。

## drop 命令删除数据库

drop 命令格式：

drop database &lt;数据库名&gt;;

例如删除名为 RUNOOB 的数据库：

mysql> drop database RUNOOB;

## 使用 mysqladmin 删除数据库

你也可以使用 mysql mysqladmin 命令在终端来执行删除命令。

以下实例删除数据库 RUNOOB(该数据库在前一章节已创建)：

\\[root@host\\]# mysqladmin -u root -p drop RUNOOB Enter password:******

执行以上删除数据库命令后，会出现一个提示框，来确认是否真的删除数据库：

Dropping the database is potentially a very bad thing to do.  Any data stored in the database will be destroyed.  Do you really want to drop the ''RUNOOB'' database \\[y/N\\] y Database  "RUNOOB" dropped

* * *

## 使用PHP脚本删除数据库

PHP使用 mysqli_query 函数来创建或者删除 MySQL 数据库。

该函数有两个参数，在执行成功时返回 TRUE，否则返回 FALSE。

### 语法

mysqli_query(connection,query,resultmode);

| 参数  | 描述  |
| --- | --- |
| *connection* | 必需。规定要使用的 MySQL 连接。 |
| *query* | 必需，规定查询字符串。 |
| *resultmode* | 可选。一个常量。可以是下列值中的任意一个：<br><br>- MYSQLI\\_USE\\_RESULT（如果需要检索大量数据，请使用这个）<br>- MYSQLI\\_STORE\\_RESULT（默认） |

### 实例

以下实例演示了使用PHP mysqli_query函数来删除数据库：

## 删除数据库

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  echo  ''连接成功&lt;br /&gt;''; $sql = ''DROP DATABASE RUNOOB''; $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''删除数据库失败: '' . mysqli_error($conn)); }  echo  "数据库 RUNOOB 删除成功\\\\n"; mysqli_close($conn); ?>

执行成功后，数结果为：

![](/images/a18d81cacd7f4728bcae962962943a4b.jpg)

**注意：** 在使用PHP脚本删除数据库时，不会出现确认是否删除信息，会直接删除指定数据库，所以你在删除数据库时要特别小心。', 71, '使用普通用户登陆 MySQL 服务器，你可能需要特定的权限来创建或者删除 MySQL 数据库，所以我们这边使用 root 用户登录，root 用户拥有最高权限。
在删除数据库过程中，务必要十分谨慎，因为在执行删除命令后，所有数据将会消失。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (45, null, 3, 'MySQL教程', 8, 'MySQL 选择数据库', '# MySQL 选择数据库

在你连接到 MySQL 数据库后，可能有多个可以操作的数据库，所以你需要选择你要操作的数据库。

* * *

## 从命令提示窗口中选择MySQL数据库

在 mysql> 提示窗口中可以很简单的选择特定的数据库。你可以使用SQL命令来选择指定的数据库。

### 实例

以下实例选取了数据库 RUNOOB:

\\[root@host\\]# mysql -u root -p Enter password:****** mysql>  use RUNOOB;  Database changed
mysql>

执行以上命令后，你就已经成功选择了 RUNOOB 数据库，在后续的操作中都会在 RUNOOB 数据库中执行。

**注意:**所有的数据库名，表名，表字段都是区分大小写的。所以你在使用SQL命令时需要输入正确的名称。

* * *

## 使用PHP脚本选择MySQL数据库

PHP 提供了函数 mysqli\\_select\\_db 来选取一个数据库。函数在执行成功后返回 TRUE ，否则返回 FALSE 。

### 语法

mysqli\\_select\\_db(connection,dbname);

| 参数  | 描述  |
| --- | --- |
| *connection* | 必需。规定要使用的 MySQL 连接。 |
| *dbname* | 必需，规定要使用的默认数据库。 |

### 实例

以下实例展示了如何使用 mysqli\\_select\\_db 函数来选取一个数据库：

## 选择数据库

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  echo  ''连接成功''; mysqli\\_select\\_db($conn, ''RUNOOB''  ); mysqli_close($conn); ?>', 69, '执行以上命令后，你就已经成功选择了 RUNOOB 数据库，在后续的操作中都会在 RUNOOB 数据库中执行。
注意:所有的数据库名，表名，表字段都是区分大小写的。所以你在使用SQL命令时需要输入正确的名称。
使用PHP脚本选择MySQL数据库
PHP 提供了函数 mysqli_select_db 来选取一个数据库。函数在执行成功后返回 TRUE ，否则返回 FALSE 。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (46, null, 3, 'MySQL教程', 9, 'MySQL 数据类型', '# MySQL 数据类型

MySQL中定义数据字段的类型对你数据库的优化是非常重要的。

MySQL支持多种类型，大致可以分为三类：数值、日期/时间和字符串(字符)类型。

* * *

## 数值类型

MySQL支持所有标准SQL数值数据类型。

这些类型包括严格数值数据类型(INTEGER、SMALLINT、DECIMAL和NUMERIC)，以及近似数值数据类型(FLOAT、REAL和DOUBLE PRECISION)。

关键字INT是INTEGER的同义词，关键字DEC是DECIMAL的同义词。

BIT数据类型保存位字段值，并且支持MyISAM、MEMORY、InnoDB和BDB表。

作为SQL标准的扩展，MySQL也支持整数类型TINYINT、MEDIUMINT和BIGINT。下面的表显示了需要的每个整数类型的存储和范围。

| 类型  | 大小  | 范围（有符号） | 范围（无符号） | 用途  |
| --- | --- | --- | --- | --- |
| TINYINT | 1 byte | (-128，127) | (0，255) | 小整数值 |
| SMALLINT | 2 bytes | (-32 768，32 767) | (0，65 535) | 大整数值 |
| MEDIUMINT | 3 bytes | (-8 388 608，8 388 607) | (0，16 777 215) | 大整数值 |
| INT或INTEGER | 4 bytes | (-2 147 483 648，2 147 483 647) | (0，4 294 967 295) | 大整数值 |
| BIGINT | 8 bytes | (-9,223,372,036,854,775,808，9 223 372 036 854 775 807) | (0，18 446 744 073 709 551 615) | 极大整数值 |
| FLOAT | 4 bytes | (-3.402 823 466 E+38，-1.175 494 351 E-38)，0，(1.175 494 351 E-38，3.402 823 466 351 E+38) | 0，(1.175 494 351 E-38，3.402 823 466 E+38) | 单精度<br>浮点数值 |
| DOUBLE | 8 bytes | (-1.797 693 134 862 315 7 E+308，-2.225 073 858 507 201 4 E-308)，0，(2.225 073 858 507 201 4 E-308，1.797 693 134 862 315 7 E+308) | 0，(2.225 073 858 507 201 4 E-308，1.797 693 134 862 315 7 E+308) | 双精度<br>浮点数值 |
| DECIMAL | 对DECIMAL(M,D) ，如果M>D，为M+2否则为D+2 | 依赖于M和D的值 | 依赖于M和D的值 | 小数值 |

* * *

## 日期和时间类型

表示时间值的日期和时间类型为DATETIME、DATE、TIMESTAMP、TIME和YEAR。

每个时间类型有一个有效值范围和一个"零"值，当指定不合法的MySQL不能表示的值时使用"零"值。

TIMESTAMP类型有专有的自动更新特性，将在后面描述。

| 类型  | 大小<br>( bytes) | 范围  | 格式  | 用途  |
| --- | --- | --- | --- | --- |
| DATE | 3   | 1000-01-01/9999-12-31 | YYYY-MM-DD | 日期值 |
| TIME | 3   | ''-838:59:59''/''838:59:59'' | HH:MM:SS | 时间值或持续时间 |
| YEAR | 1   | 1901/2155 | YYYY | 年份值 |
| DATETIME | 8   | 1000-01-01 00:00:00/9999-12-31 23:59:59 | YYYY-MM-DD HH:MM:SS | 混合日期和时间值 |
| TIMESTAMP | 4   | 1970-01-01 00:00:00/2038<br><br>结束时间是第 **2147483647** 秒，北京时间 **2038-1-19 11:14:07**，格林尼治时间 2038年1月19日 凌晨 03:14:07 | YYYYMMDD HHMMSS | 混合日期和时间值，时间戳 |

* * *

## 字符串类型

字符串类型指CHAR、VARCHAR、BINARY、VARBINARY、BLOB、TEXT、ENUM和SET。该节描述了这些类型如何工作以及如何在查询中使用这些类型。

| 类型  | 大小  | 用途  |
| --- | --- | --- |
| CHAR | 0-255 bytes | 定长字符串 |
| VARCHAR | 0-65535 bytes | 变长字符串 |
| TINYBLOB | 0-255 bytes | 不超过 255 个字符的二进制字符串 |
| TINYTEXT | 0-255 bytes | 短文本字符串 |
| BLOB | 0-65 535 bytes | 二进制形式的长文本数据 |
| TEXT | 0-65 535 bytes | 长文本数据 |
| MEDIUMBLOB | 0-16 777 215 bytes | 二进制形式的中等长度文本数据 |
| MEDIUMTEXT | 0-16 777 215 bytes | 中等长度文本数据 |
| LONGBLOB | 0-4 294 967 295 bytes | 二进制形式的极大文本数据 |
| LONGTEXT | 0-4 294 967 295 bytes | 极大文本数据 |

**注意**：char(n) 和 varchar(n) 中括号中 n 代表字符的个数，并不代表字节个数，比如 CHAR(30) 就可以存储 30 个字符。

CHAR 和 VARCHAR 类型类似，但它们保存和检索的方式不同。它们的最大长度和是否尾部空格被保留等方面也不同。在存储或检索过程中不进行大小写转换。

BINARY 和 VARBINARY 类似于 CHAR 和 VARCHAR，不同的是它们包含二进制字符串而不要非二进制字符串。也就是说，它们包含字节字符串而不是字符字符串。这说明它们没有字符集，并且排序和比较基于列值字节的数值值。

BLOB 是一个二进制大对象，可以容纳可变数量的数据。有 4 种 BLOB 类型：TINYBLOB、BLOB、MEDIUMBLOB 和 LONGBLOB。它们区别在于可容纳存储范围不同。

有 4 种 TEXT 类型：TINYTEXT、TEXT、MEDIUMTEXT 和 LONGTEXT。对应的这 4 种 BLOB 类型，可存储的最大长度不同，可根据实际情况选择。', 62, 'MySQL支持所有标准SQL数值数据类型。
这些类型包括严格数值数据类型(INTEGER、SMALLINT、DECIMAL和NUMERIC)，以及近似数值数据类型(FLOAT、REAL和DOUBLE PRECISION)。
关键字INT是INTEGER的同义词，关键字DEC是DECIMAL的同义词。
BIT数据类型保存位字段值，并且支持MyISAM、MEMORY、InnoDB和BDB表。
作为SQL标准的扩展，MySQL也支持整数类型TINYINT、MEDIUMINT和BIGINT。下面的表显示了需要的每个整数类型的存储和范围。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (47, null, 3, 'MySQL教程', 10, 'MySQL 创建数据表', '# MySQL 创建数据表

创建MySQL数据表需要以下信息：

- 表名
- 表字段名
- 定义每个表字段

### 语法

以下为创建MySQL数据表的SQL通用语法：

CREATE TABLE table_name (column\\_name column\\_type);

以下例子中我们将在 RUNOOB 数据库中创建数据表runoob_tbl：

CREATE TABLE IF NOT EXISTS \\`runoob_tbl\\`(  \\`runoob_id\\` INT UNSIGNED AUTO_INCREMENT,  \\`runoob_title\\` VARCHAR(100) NOT NULL,  \\`runoob_author\\` VARCHAR(40) NOT NULL,  \\`submission_date\\` DATE, PRIMARY KEY (  \\`runoob_id\\`  )  )ENGINE=InnoDB DEFAULT CHARSET=utf8;

实例解析：

- 如果你不想字段为 **NULL** 可以设置字段的属性为 **NOT NULL**， 在操作数据库时如果输入该字段的数据为**NULL** ，就会报错。
- AUTO_INCREMENT定义列为自增的属性，一般用于主键，数值会自动加1。
- PRIMARY KEY关键字用于定义列为主键。 您可以使用多列来定义主键，列间以逗号分隔。
- ENGINE 设置存储引擎，CHARSET 设置编码。

* * *

## 通过命令提示符创建表

通过 mysql> 命令窗口可以很简单的创建MySQL数据表。你可以使用 SQL 语句 **CREATE TABLE** 来创建数据表。

### 实例

以下为创建数据表 runoob_tbl 实例:

root@host\\# mysql -u root -p  Enter password:******* mysql>  use RUNOOB;  Database changed
mysql> CREATE TABLE runoob_tbl(  -> runoob\\_id INT NOT NULL AUTO\\_INCREMENT,  -> runoob_title VARCHAR(100) NOT NULL,  -> runoob_author VARCHAR(40) NOT NULL,  -> submission_date DATE,  -> PRIMARY KEY ( runoob_id )  ->  )ENGINE=InnoDB DEFAULT CHARSET=utf8;  Query OK,  0 rows affected (0.16 sec) mysql>

**注意：**MySQL命令终止符为分号 ; 。

**注意：** -> 是换行符标识，不要复制。

## 使用PHP脚本创建数据表

你可以使用 PHP 的 mysqli_query() 函数来创建已存在数据库的数据表。

该函数有两个参数，在执行成功时返回 TRUE，否则返回 FALSE。

### 语法

mysqli_query(connection,query,resultmode);

| 参数  | 描述  |
| --- | --- |
| *connection* | 必需。规定要使用的 MySQL 连接。 |
| *query* | 必需，规定查询字符串。 |
| *resultmode* | 可选。一个常量。可以是下列值中的任意一个：<br><br>- MYSQLI\\_USE\\_RESULT（如果需要检索大量数据，请使用这个）<br>- MYSQLI\\_STORE\\_RESULT（默认） |

### 实例

以下实例使用了PHP脚本来创建数据表：

## 创建数据表

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  echo  ''连接成功&lt;br /&gt;''; $sql = "CREATE TABLE runoob_tbl( ". "runoob\\_id INT NOT NULL AUTO\\_INCREMENT, ". "runoob_title VARCHAR(100) NOT NULL, ". "runoob_author VARCHAR(40) NOT NULL, ". "submission_date DATE, ". "PRIMARY KEY ( runoob_id ))ENGINE=InnoDB DEFAULT CHARSET=utf8; "; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''数据表创建失败: '' . mysqli_error($conn)); }  echo  "数据表创建成功\\\\n"; mysqli_close($conn); ?>

执行成功后，就可以通过命令行查看表结构：

![](/images/477353083e984a5f923002bc72aaa513.jpg)', 60, '如果你不想字段为 NULL 可以设置字段的属性为 NOT NULL， 在操作数据库时如果输入该字段的数据为NULL ，就会报错。
AUTO_INCREMENT定义列为自增的属性，一般用于主键，数值会自动加1。
PRIMARY KEY关键字用于定义列为主键。 您可以使用多列来定义主键，列间以逗号分隔。
ENGINE 设置存储引擎，CHARSET 设置编码。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (48, null, 3, 'MySQL教程', 11, 'MySQL 删除数据表', '# MySQL 删除数据表

MySQL中删除数据表是非常容易操作的，但是你在进行删除表操作时要非常小心，因为执行删除命令后所有数据都会消失。

### 语法

以下为删除MySQL数据表的通用语法：

DROP TABLE table_name ;

* * *

## 在命令提示窗口中删除数据表

在mysql>命令提示窗口中删除数据表SQL语句为 **DROP TABLE** ：

### 实例

以下实例删除了数据表runoob_tbl:

root@host\\# mysql -u root -p  Enter password:******* mysql>  use RUNOOB;  Database changed
mysql> DROP TABLE runoob_tbl Query OK,  0 rows affected (0.8 sec) mysql>

* * *

## 使用PHP脚本删除数据表

PHP使用 mysqli_query 函数来删除 MySQL 数据表。

该函数有两个参数，在执行成功时返回 TRUE，否则返回 FALSE。

### 语法

mysqli_query(connection,query,resultmode);

| 参数  | 描述  |
| --- | --- |
| *connection* | 必需。规定要使用的 MySQL 连接。 |
| *query* | 必需，规定查询字符串。 |
| *resultmode* | 可选。一个常量。可以是下列值中的任意一个：<br><br>- MYSQLI\\_USE\\_RESULT（如果需要检索大量数据，请使用这个）<br>- MYSQLI\\_STORE\\_RESULT（默认） |

### 实例

以下实例使用了PHP脚本删除数据表 runoob_tbl:

## 删除数据库

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  echo  ''连接成功&lt;br /&gt;''; $sql = "DROP TABLE runoob_tbl"; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''数据表删除失败: '' . mysqli_error($conn)); }  echo  "数据表删除成功\\\\n"; mysqli_close($conn); ?>

执行成功后，我们使用以下命令，就看不到 runoob_tbl 表了：

mysql> show tables;  Empty  set  (0.01 sec)', 359, 'MySQL中删除数据表是非常容易操作的，但是你在进行删除表操作时要非常小心，因为执行删除命令后所有数据都会消失。
语法
以下为删除MySQL数据表的通用语法：
在命令提示窗口中删除数据表
在mysql>命令提示窗口中删除数据表SQL语句为 DROP TABLE ：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (49, null, 3, 'MySQL教程', 12, 'MySQL 插入数据', '# MySQL 插入数据

MySQL 表中使用 **INSERT INTO** SQL语句来插入数据。

你可以通过 mysql> 命令提示窗口中向数据表中插入数据，或者通过PHP脚本来插入数据。

### 语法

以下为向MySQL数据表插入数据通用的 **INSERT INTO** SQL语法：

INSERT INTO table_name ( field1, field2,...fieldN ) VALUES ( value1, value2,...valueN );

如果数据是字符型，必须使用单引号或者双引号，如："value"。

* * *

## 通过命令提示窗口插入数据

以下我们将使用 SQL **INSERT INTO** 语句向 MySQL 数据表 runoob_tbl 插入数据

### 实例

以下实例中我们将向 runoob_tbl 表插入三条数据:

root@host\\# mysql -u root -p password;  Enter password:******* mysql>  use RUNOOB;  Database changed
mysql> INSERT INTO runoob_tbl ->  (runoob_title, runoob_author, submission_date)  -> VALUES ->  ("学习 PHP",  "菜鸟教程", NOW());  Query OK,  1 rows affected,  1 warnings (0.01 sec) mysql> INSERT INTO runoob_tbl ->  (runoob_title, runoob_author, submission_date)  -> VALUES ->  ("学习 MySQL",  "菜鸟教程", NOW());  Query OK,  1 rows affected,  1 warnings (0.01 sec) mysql> INSERT INTO runoob_tbl ->  (runoob_title, runoob_author, submission_date)  -> VALUES ->  ("JAVA 教程",  "RUNOOB.COM",  ''2016-05-06'');  Query OK,  1 rows affected (0.00 sec) mysql>

**注意：** 使用箭头标记 -> 不是 SQL 语句的一部分，它仅仅表示一个新行，如果一条SQL语句太长，我们可以通过回车键来创建一个新行来编写 SQL 语句，SQL 语句的命令结束符为分号 ;。

在以上实例中，我们并没有提供 runoob\\_id 的数据，因为该字段我们在创建表的时候已经设置它为 AUTO\\_INCREMENT(自动增加) 属性。 所以，该字段会自动递增而不需要我们去设置。实例中 NOW() 是一个 MySQL 函数，该函数返回日期和时间。

接下来我们可以通过以下语句查看数据表数据：

## 读取数据表：

select \\* from  runoob_tbl;

输出结果：

![](/images/daca8d40ffa0490593c768444841c4ea.jpg)

* * *

## 使用PHP脚本插入数据

你可以使用PHP 的 mysqli_query() 函数来执行 **SQL INSERT INTO**命令来插入数据。

该函数有两个参数，在执行成功时返回 TRUE，否则返回 FALSE。

### 语法

mysqli_query(connection,query,resultmode);

| 参数  | 描述  |
| --- | --- |
| *connection* | 必需。规定要使用的 MySQL 连接。 |
| *query* | 必需，规定查询字符串。 |
| *resultmode* | 可选。一个常量。可以是下列值中的任意一个：<br><br>- MYSQLI\\_USE\\_RESULT（如果需要检索大量数据，请使用这个）<br>- MYSQLI\\_STORE\\_RESULT（默认） |

### 实例

以下实例中程序接收用户输入的三个字段数据，并插入数据表中：

## 添加数据

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  echo  ''连接成功&lt;br /&gt;''; mysqli_query($conn , "set names utf8"); $runoob_title = ''学习 Python''; $runoob_author = ''RUNOOB.COM''; $submission_date = ''2016-03-06''; $sql = "INSERT INTO runoob_tbl ". "(runoob\\_title,runoob\\_author, submission_date) ". "VALUES ". "(''$runoob_title'',''$runoob_author'',''$submission_date'')"; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法插入数据: '' . mysqli_error($conn)); }  echo  "数据插入成功\\\\n"; mysqli_close($conn); ?>

对于含有中文的数据插入，需要添加 mysqli_query($conn , "set names utf8"); 语句。

接下来我们可以通过以下语句查看数据表数据：

## 读取数据表：

select \\* from  runoob_tbl;

输出结果：

![](/images/3f7e024c1a934b9993bf9f0b8ca1386e.jpg)', 51, 'MySQL 表中使用 INSERT INTO SQL语句来插入数据。
你可以通过 mysql> 命令提示窗口中向数据表中插入数据，或者通过PHP脚本来插入数据。
语法
以下为向MySQL数据表插入数据通用的 INSERT INTO SQL语法：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (50, null, 3, 'MySQL教程', 13, 'MySQL 查询数据', '# MySQL 查询数据

MySQL 数据库使用SQL SELECT语句来查询数据。

你可以通过 mysql> 命令提示窗口中在数据库中查询数据，或者通过PHP脚本来查询数据。

### 语法

以下为在MySQL数据库中查询数据通用的 SELECT 语法：

SELECT column_name,column_name
FROM table_name \\[WHERE Clause\\]  \\[LIMIT N\\]\\[ OFFSET M\\]

- 查询语句中你可以使用一个或者多个表，表之间使用逗号(,)分割，并使用WHERE语句来设定查询条件。
- SELECT 命令可以读取一条或者多条记录。
- 你可以使用星号（*）来代替其他字段，SELECT语句会返回表的所有字段数据
- 你可以使用 WHERE 语句来包含任何条件。
- 你可以使用 LIMIT 属性来设定返回的记录数。
- 你可以通过OFFSET指定SELECT语句开始查询的数据偏移量。默认情况下偏移量为0。

* * *

## 通过命令提示符获取数据

以下实例我们将通过 SQL SELECT 命令来获取 MySQL 数据表 runoob_tbl 的数据：

### 实例

以下实例将返回数据表 runoob_tbl 的所有记录:

## 读取数据表：

select \\* from  runoob_tbl;

输出结果：

![](/images/c4f38797ea8749b5bbdd6e529c25fca1.jpg)

* * *

## 使用PHP脚本来获取数据

使用 PHP 函数的 mysqli_query() 及 SQL SELECT 命令来获取数据。

该函数用于执行 SQL 命令，然后通过 PHP 函数 mysqli\\_fetch\\_array() 来使用或输出所有查询的数据。

mysqli\\_fetch\\_array() 函数从结果集中取得一行作为关联数组，或数字数组，或二者兼有 返回根据从结果集取得的行生成的数组，如果没有更多行则返回 false。

以下实例为从数据表 runoob_tbl 中读取所有记录。

### 实例

尝试以下实例来显示数据表 runoob_tbl 的所有记录。

## 使用 mysqli\\_fetch\\_array MYSQLI_ASSOC 参数获取数据：

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''SELECT runoob\\_id, runoob\\_title, runoob\\_author, submission\\_date FROM runoob_tbl''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法读取数据: '' . mysqli_error($conn)); }  echo  ''&lt;h2&gt;菜鸟教程 mysqli\\_fetch\\_array 测试&lt;/h2&gt;''; echo  ''&lt;table border="1"&gt;&lt;tr&gt;&lt;td&gt;教程 ID&lt;/td&gt;&lt;td&gt;标题&lt;/td&gt;&lt;td&gt;作者&lt;/td&gt;&lt;td&gt;提交日期&lt;/td&gt;&lt;/tr&gt;''; while($row = mysqli\\_fetch\\_array($retval, MYSQLI_ASSOC))  {  echo  "&lt;tr&gt;&lt;td&gt; {$row\\[''runoob_id''\\]}&lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_title''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_author''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''submission_date''\\]} &lt;/td&gt; ". "&lt;/tr&gt;"; }  echo  ''&lt;/table&gt;''; mysqli_close($conn); ?>

输出结果如下所示：

![](/images/4116366d9f954e6e9c260ae4d032b4cf.jpg)

以上实例中，读取的每行记录赋值给变量 $row，然后再打印出每个值。

**注意：**记住如果你需要在字符串中使用变量，请将变量置于花括号。

在上面的例子中，PHP mysqli\\_fetch\\_array() 函数第二个参数为 **MYSQLI_ASSOC**， 设置该参数查询结果返回关联数组，你可以使用字段名称来作为数组的索引。

PHP 提供了另外一个函数 **mysqli\\_fetch\\_assoc()**, 该函数从结果集中取得一行作为关联数组。 返回根据从结果集取得的行生成的关联数组，如果没有更多行，则返回 false。

### 实例

尝试以下实例，该实例使用了 **mysqli\\_fetch\\_assoc()** 函数来输出数据表 runoob_tbl 的所有记录：

## 使用 mysqli\\_fetch\\_assoc 获取数据：

<?php  $dbhost = ''localhost:3306''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''SELECT runoob\\_id, runoob\\_title, runoob\\_author, submission\\_date FROM runoob_tbl''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法读取数据: '' . mysqli_error($conn)); }  echo  ''&lt;h2&gt;菜鸟教程 mysqli\\_fetch\\_assoc 测试&lt;/h2&gt;''; echo  ''&lt;table border="1"&gt;&lt;tr&gt;&lt;td&gt;教程 ID&lt;/td&gt;&lt;td&gt;标题&lt;/td&gt;&lt;td&gt;作者&lt;/td&gt;&lt;td&gt;提交日期&lt;/td&gt;&lt;/tr&gt;''; while($row = mysqli\\_fetch\\_assoc($retval))  {  echo  "&lt;tr&gt;&lt;td&gt; {$row\\[''runoob_id''\\]}&lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_title''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_author''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''submission_date''\\]} &lt;/td&gt; ". "&lt;/tr&gt;"; }  echo  ''&lt;/table&gt;''; mysqli_close($conn); ?>

输出结果如下所示：

![](/images/ad90950f5b9e4a27bd6f65bf2b5a25f5.jpg)

你也可以使用常量 MYSQLI\\_NUM 作为 PHP mysqli\\_fetch_array() 函数的第二个参数，返回数字数组。

### 实例

以下实例使用 **MYSQLI_NUM** 参数显示数据表 runoob_tbl 的所有记录:

## 使用 mysqli\\_fetch\\_array MYSQLI_NUM 参数获取数据：

<?php  $dbhost = ''localhost:3306''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''SELECT runoob\\_id, runoob\\_title, runoob\\_author, submission\\_date FROM runoob_tbl''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法读取数据: '' . mysqli_error($conn)); }  echo  ''&lt;h2&gt;菜鸟教程 mysqli\\_fetch\\_array 测试&lt;/h2&gt;''; echo  ''&lt;table border="1"&gt;&lt;tr&gt;&lt;td&gt;教程 ID&lt;/td&gt;&lt;td&gt;标题&lt;/td&gt;&lt;td&gt;作者&lt;/td&gt;&lt;td&gt;提交日期&lt;/td&gt;&lt;/tr&gt;''; while($row = mysqli\\_fetch\\_array($retval, MYSQLI_NUM))  {  echo  "&lt;tr&gt;&lt;td&gt; {$row\\[0\\]}&lt;/td&gt; ". "&lt;td&gt;{$row\\[1\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[2\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[3\\]} &lt;/td&gt; ". "&lt;/tr&gt;"; }  echo  ''&lt;/table&gt;''; mysqli_close($conn); ?>

输出结果如下所示：

![](/images/4116366d9f954e6e9c260ae4d032b4cf.jpg)

以上三个实例输出结果都一样。

* * *

## 内存释放

在我们执行完 SELECT 语句后，释放游标内存是一个很好的习惯。

可以通过 PHP 函数 mysqli\\_free\\_result() 来实现内存的释放。

以下实例演示了该函数的使用方法。

### 实例

尝试以下实例:

## 使用 mysqli\\_free\\_result 释放内存：

<?php  $dbhost = ''localhost:3306''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''SELECT runoob\\_id, runoob\\_title, runoob\\_author, submission\\_date FROM runoob_tbl''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法读取数据: '' . mysqli_error($conn)); }  echo  ''&lt;h2&gt;菜鸟教程 mysqli\\_fetch\\_array 测试&lt;/h2&gt;''; echo  ''&lt;table border="1"&gt;&lt;tr&gt;&lt;td&gt;教程 ID&lt;/td&gt;&lt;td&gt;标题&lt;/td&gt;&lt;td&gt;作者&lt;/td&gt;&lt;td&gt;提交日期&lt;/td&gt;&lt;/tr&gt;''; while($row = mysqli\\_fetch\\_array($retval, MYSQLI_NUM))  {  echo  "&lt;tr&gt;&lt;td&gt; {$row\\[0\\]}&lt;/td&gt; ". "&lt;td&gt;{$row\\[1\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[2\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[3\\]} &lt;/td&gt; ". "&lt;/tr&gt;"; }  echo  ''&lt;/table&gt;''; mysqli\\_free\\_result($retval); mysqli_close($conn); ?>

输出结果如下所示：

![](/images/4116366d9f954e6e9c260ae4d032b4cf.jpg)', 379, 'MySQL 数据库使用SQL SELECT语句来查询数据。
你可以通过 mysql> 命令提示窗口中在数据库中查询数据，或者通过PHP脚本来查询数据。
语法
以下为在MySQL数据库中查询数据通用的 SELECT 语法：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (51, null, 3, 'MySQL教程', 14, 'MySQL WHERE 子句', '# MySQL WHERE 子句

我们知道从 MySQL 表中使用 SQL SELECT 语句来读取数据。

如需有条件地从表中选取数据，可将 WHERE 子句添加到 SELECT 语句中。

### 语法

以下是 SQL SELECT 语句使用 WHERE 子句从数据表中读取数据的通用语法：

SELECT field1, field2,...fieldN FROM table_name1, table_name2...  \\[WHERE condition1 \\[AND \\[OR\\]\\] condition2.....

- 查询语句中你可以使用一个或者多个表，表之间使用逗号, 分割，并使用WHERE语句来设定查询条件。
- 你可以在 WHERE 子句中指定任何条件。
- 你可以使用 AND 或者 OR 指定一个或多个条件。
- WHERE 子句也可以运用于 SQL 的 DELETE 或者 UPDATE 命令。
- WHERE 子句类似于程序语言中的 if 条件，根据 MySQL 表中的字段值来读取指定的数据。

以下为操作符列表，可用于 WHERE 子句中。

下表中实例假定 A 为 10, B 为 20

| 操作符 | 描述  | 实例  |
| --- | --- | --- |
| =   | 等号，检测两个值是否相等，如果相等返回true | (A = B) 返回false。 |
| <>, != | 不等于，检测两个值是否相等，如果不相等返回true | (A != B) 返回 true。 |
| >   | 大于号，检测左边的值是否大于右边的值, 如果左边的值大于右边的值返回true | (A > B) 返回false。 |
| <   | 小于号，检测左边的值是否小于右边的值, 如果左边的值小于右边的值返回true | (A < B) 返回 true。 |
| >=  | 大于等于号，检测左边的值是否大于或等于右边的值, 如果左边的值大于或等于右边的值返回true | (A >= B) 返回false。 |
| <=  | 小于等于号，检测左边的值是否小于或等于右边的值, 如果左边的值小于或等于右边的值返回true | (A <= B) 返回 true。 |

如果我们想在 MySQL 数据表中读取指定的数据，WHERE 子句是非常有用的。

使用主键来作为 WHERE 子句的条件查询是非常快速的。

如果给定的条件在表中没有任何匹配的记录，那么查询不会返回任何数据。

* * *

## 从命令提示符中读取数据

我们将在SQL SELECT语句使用WHERE子句来读取MySQL数据表 runoob_tbl 中的数据：

实例

以下实例将读取 runoob\\_tbl 表中 runoob\\_author 字段值为 Sanjay 的所有记录：

## SQL SELECT WHERE 子句

SELECT \\* from  runoob_tbl  WHERE  runoob_author=''菜鸟教程'';

输出结果：

![](/images/c6ea857e6ab3456e827a06d5f2f6a3ab.jpg)

MySQL 的 WHERE 子句的字符串比较是不区分大小写的。 你可以使用 BINARY 关键字来设定 WHERE 子句的字符串比较是区分大小写的。

如下实例:

## BINARY 关键字

mysql\\> SELECT \\* from  runoob_tbl  WHERE  BINARY  runoob_author=''runoob.com''; Empty  set  (0.01  sec)  mysql\\> SELECT \\* from  runoob_tbl  WHERE  BINARY  runoob_author=''RUNOOB.COM''; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_id | runoob_title | runoob_author | submission_date | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 3 | JAVA 教程 | RUNOOB.COM | 2016-05-06 | | 4 | 学习 Python | RUNOOB.COM | 2016-03-06 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 2  rows  in  set  (0.01  sec)

实例中使用了 **BINARY** 关键字，是区分大小写的，所以 **runoob_author=''runoob.com''** 的查询条件是没有数据的。

* * *

## 使用PHP脚本读取数据

你可以使用 PHP 函数的 mysqli_query() 及相同的 SQL SELECT 带上 WHERE 子句的命令来获取数据。

该函数用于执行 SQL 命令，然后通过 PHP 函数 mysqli\\_fetch\\_array() 来输出所有查询的数据。

### 实例

以下实例将从 runoob\\_tbl 表中返回使用 runoob\\_author 字段值为 RUNOOB.COM 的记录：

## MySQL WHERE 子句测试：

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''SELECT runoob\\_id, runoob\\_title, runoob\\_author, submission\\_date FROM runoob\\_tbl WHERE runoob\\_author="RUNOOB.COM"''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法读取数据: '' . mysqli_error($conn)); }  echo  ''&lt;h2&gt;菜鸟教程 MySQL WHERE 子句测试&lt;h2&gt;''; echo  ''&lt;table border="1"&gt;&lt;tr&gt;&lt;td&gt;教程 ID&lt;/td&gt;&lt;td&gt;标题&lt;/td&gt;&lt;td&gt;作者&lt;/td&gt;&lt;td&gt;提交日期&lt;/td&gt;&lt;/tr&gt;''; while($row = mysqli\\_fetch\\_array($retval, MYSQLI_ASSOC))  {  echo  "&lt;tr&gt;&lt;td&gt; {$row\\[''runoob_id''\\]}&lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_title''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_author''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''submission_date''\\]} &lt;/td&gt; ". "&lt;/tr&gt;"; }  echo  ''&lt;/table&gt;''; mysqli\\_free\\_result($retval); mysqli_close($conn); ?>

输出结果如下所示：

![](/images/89861e8cb50a4dfb81e6e25883afdad7.jpg)', 43, '查询语句中你可以使用一个或者多个表，表之间使用逗号, 分割，并使用WHERE语句来设定查询条件。
你可以在 WHERE 子句中指定任何条件。
你可以使用 AND 或者 OR 指定一个或多个条件。
WHERE 子句也可以运用于 SQL 的 DELETE 或者 UPDATE 命令。
WHERE 子句类似于程序语言中的 if 条件，根据 MySQL 表中的字段值来读取指定的数据。
以下为操作符列表，可用于 WHERE 子句中。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (52, null, 3, 'MySQL教程', 15, 'MySQL UPDATE 更新', '# MySQL UPDATE 更新

如果我们需要修改或更新 MySQL 中的数据，我们可以使用 SQL UPDATE 命令来操作。

### 语法

以下是 UPDATE 命令修改 MySQL 数据表数据的通用 SQL 语法：

UPDATE table_name SET field1=new-value1, field2=new-value2
\\[WHERE Clause\\]

- 你可以同时更新一个或多个字段。
- 你可以在 WHERE 子句中指定任何条件。
- 你可以在一个单独表中同时更新数据。

当你需要更新数据表中指定行的数据时 WHERE 子句是非常有用的。

* * *

通过命令提示符更新数据

以下我们将在 SQL UPDATE 命令使用 WHERE 子句来更新 runoob_tbl 表中指定的数据：

### 实例

以下实例将更新数据表中 runoob\\_id 为 3 的 runoob\\_title 字段值：

## SQL UPDATE 语句：

mysql\\> UPDATE  runoob_tbl  SET  runoob_title=''学习 C++''  WHERE  runoob_id=3; Query  OK, 1  rows  affected  (0.01  sec)  mysql\\> SELECT \\* from  runoob_tbl  WHERE  runoob_id=3; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_id | runoob_title | runoob_author | submission_date | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 3 | 学习 C\\+\\+ | RUNOOB.COM | 2016-05-06 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 1  rows  in  set  (0.01  sec)

从结果上看，runoob\\_id 为 3 的 runoob\\_title 已被修改。

* * *

## 使用PHP脚本更新数据

PHP 中使用函数 mysqli_query() 来执行 SQL 语句，你可以在 SQL UPDATE 语句中使用或者不使用 WHERE 子句。

**注意：**不使用 WHERE 子句将数据表的全部数据进行更新，所以要慎重。

该函数与在 mysql> 命令提示符中执行 SQL 语句的效果是一样的。

### 实例

以下实例将更新 runoob\\_id 为 3 的 runoob\\_title 字段的数据。

## MySQL UPDATE 语句测试：

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''UPDATE runoob\\_tbl SET runoob\\_title="学习 Python" WHERE runoob_id=3''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法更新数据: '' . mysqli_error($conn)); }  echo  ''数据更新成功！''; mysqli_close($conn); ?>', 41, '你可以同时更新一个或多个字段。
你可以在 WHERE 子句中指定任何条件。
你可以在一个单独表中同时更新数据。
当你需要更新数据表中指定行的数据时 WHERE 子句是非常有用的。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (53, null, 3, 'MySQL教程', 16, 'MySQL DELETE 语句', '# MySQL DELETE 语句

你可以使用 SQL 的 DELETE FROM 命令来删除 MySQL 数据表中的记录。

你可以在 mysql> 命令提示符或 PHP 脚本中执行该命令。

### 语法

以下是 SQL DELETE 语句从 MySQL 数据表中删除数据的通用语法：

DELETE FROM table_name \\[WHERE Clause\\]

- 如果没有指定 WHERE 子句，MySQL 表中的所有记录将被删除。
- 你可以在 WHERE 子句中指定任何条件
- 您可以在单个表中一次性删除记录。

当你想删除数据表中指定的记录时 WHERE 子句是非常有用的。

* * *

## 从命令行中删除数据

这里我们将在 SQL DELETE 命令中使用 WHERE 子句来删除 MySQL 数据表 runoob_tbl 所选的数据。

### 实例

以下实例将删除 runoob\\_tbl 表中 runoob\\_id 为3 的记录：

## DELETE 语句：

mysql\\> use  RUNOOB; Database  changed  mysql\\> DELETE  FROM  runoob_tbl  WHERE  runoob_id=3; Query  OK, 1  row  affected  (0.23  sec)

* * *

## 使用 PHP 脚本删除数据

PHP使用 mysqli_query() 函数来执行SQL语句， 你可以在 SQL DELETE 命令中使用或不使用 WHERE 子句。

该函数与 mysql> 命令符执行SQL命令的效果是一样的。

### 实例

以下PHP实例将删除 runoob\\_tbl 表中 runoob\\_id 为 3 的记录:

## MySQL DELETE 子句测试：

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''DELETE FROM runoob\\_tbl WHERE runoob\\_id=3''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法删除数据: '' . mysqli_error($conn)); }  echo  ''数据删除成功！''; mysqli_close($conn); ?>', 261, '如果没有指定 WHERE 子句，MySQL 表中的所有记录将被删除。
你可以在 WHERE 子句中指定任何条件
您可以在单个表中一次性删除记录。
当你想删除数据表中指定的记录时 WHERE 子句是非常有用的。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (54, null, 3, 'MySQL教程', 17, 'MySQL LIKE 子句', '# MySQL LIKE 子句

我们知道在 MySQL 中使用 SQL SELECT 命令来读取数据， 同时我们可以在 SELECT 语句中使用 WHERE 子句来获取指定的记录。

WHERE 子句中可以使用等号 = 来设定获取数据的条件，如 "runoob_author = ''RUNOOB.COM''"。

但是有时候我们需要获取 runoob_author 字段含有 "COM" 字符的所有记录，这时我们就需要在 WHERE 子句中使用 SQL LIKE 子句。

SQL LIKE 子句中使用百分号 %字符来表示任意字符，类似于UNIX或正则表达式中的星号 *。

如果没有使用百分号 %, LIKE 子句与等号 = 的效果是一样的。

### 语法

以下是 SQL SELECT 语句使用 LIKE 子句从数据表中读取数据的通用语法：

SELECT field1, field2,...fieldN 
FROM table_name
WHERE field1 LIKE condition1 \\[AND \\[OR\\]\\] filed2 =  ''somevalue''

- 你可以在 WHERE 子句中指定任何条件。
- 你可以在 WHERE 子句中使用LIKE子句。
- 你可以使用LIKE子句代替等号 =。
- LIKE 通常与 % 一同使用，类似于一个元字符的搜索。
- 你可以使用 AND 或者 OR 指定一个或多个条件。
- 你可以在 DELETE 或 UPDATE 命令中使用 WHERE...LIKE 子句来指定条件。

* * *

## 在命令提示符中使用 LIKE 子句

以下我们将在 SQL SELECT 命令中使用 WHERE...LIKE 子句来从MySQL数据表 runoob_tbl 中读取数据。

### 实例

以下是我们将 runoob\\_tbl 表中获取 runoob\\_author 字段中以 COM 为结尾的的所有记录：

## SQL LIKE 语句：

mysql\\> use  RUNOOB; Database  changed  mysql\\> SELECT \\* from  runoob_tbl  WHERE  runoob_author  LIKE  ''%COM''; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_id | runoob_title | runoob_author | submission_date | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 3 | 学习 Java | RUNOOB.COM | 2015-05-01 | | 4 | 学习 Python | RUNOOB.COM | 2016-03-06 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 2  rows  in  set  (0.01  sec)

* * *

## 在PHP脚本中使用 LIKE 子句

你可以使用PHP函数的 mysqli_query() 及相同的 SQL SELECT 带上 WHERE...LIKE 子句的命令来获取数据。

该函数用于执行 SQL 命令，然后通过 PHP 函数 mysqli\\_fetch\\_array() 来输出所有查询的数据。

但是如果是 DELETE 或者 UPDATE 中使用 WHERE...LIKE 子句的S QL 语句，则无需使用 mysqli\\_fetch\\_array() 函数。

### 实例

以下是我们使用PHP脚本在 runoob\\_tbl 表中读取 runoob\\_author 字段中以 COM 为结尾的的所有记录：

## MySQL LIKE 子句测试：

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''SELECT runoob\\_id, runoob\\_title, runoob\\_author, submission\\_date FROM runoob\\_tbl WHERE runoob\\_author LIKE "%COM"''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法读取数据: '' . mysqli_error($conn)); }  echo  ''&lt;h2&gt;菜鸟教程 mysqli\\_fetch\\_array 测试&lt;h2&gt;''; echo  ''&lt;table border="1"&gt;&lt;tr&gt;&lt;td&gt;教程 ID&lt;/td&gt;&lt;td&gt;标题&lt;/td&gt;&lt;td&gt;作者&lt;/td&gt;&lt;td&gt;提交日期&lt;/td&gt;&lt;/tr&gt;''; while($row = mysqli\\_fetch\\_array($retval, MYSQLI_ASSOC))  {  echo  "&lt;tr&gt;&lt;td&gt; {$row\\[''runoob_id''\\]}&lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_title''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_author''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''submission_date''\\]} &lt;/td&gt; ". "&lt;/tr&gt;"; }  echo  ''&lt;/table&gt;''; mysqli_close($conn); ?>

输出结果如下图所示：

![](/images/e0201ce65c834db2b08af9301378d639.jpg)', 40, '我们知道在 MySQL 中使用 SQL SELECT 命令来读取数据， 同时我们可以在 SELECT 语句中使用 WHERE 子句来获取指定的记录。
WHERE 子句中可以使用等号 = 来设定获取数据的条件，如 "runoob_author = ''RUNOOB.COM''"。
但是有时候我们需要获取 runoob_author 字段含有 "COM" 字符的所有记录，这时我们就需要在 WHERE 子句中使用 SQL LIKE 子句。
SQL LIKE 子句中使用百分号 %字符来表示任意字符，类似于UNIX或正则表达式中的星号 *。
如果没有使用百分号 %, LIKE 子句与等号 = 的效果是一样的。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (55, null, 3, 'MySQL教程', 18, 'MySQL UNION 操作符', '# MySQL UNION 操作符

本教程为大家介绍 MySQL UNION 操作符的语法和实例。

### 描述

MySQL UNION 操作符用于连接两个以上的 SELECT 语句的结果组合到一个结果集合中。多个 SELECT 语句会删除重复的数据。

### 语法

MySQL UNION 操作符语法格式：

SELECT expression1, expression2,  ... expression_n
FROM tables \\[WHERE conditions\\] UNION \\[ALL | DISTINCT\\] SELECT expression1, expression2,  ... expression_n
FROM tables \\[WHERE conditions\\];

### 参数

- **expression1, expression2, ... expression_n**: 要检索的列。
    
- **tables:** 要检索的数据表。
    
- **WHERE conditions:** 可选， 检索条件。
    
- **DISTINCT:** 可选，删除结果集中重复的数据。默认情况下 UNION 操作符已经删除了重复数据，所以 DISTINCT 修饰符对结果没啥影响。
    
- **ALL:** 可选，返回所有结果集，包含重复数据。
    

* * *

## 演示数据库

在本教程中，我们将使用 RUNOOB 样本数据库。

下面是选自 "Websites" 表的数据：

mysql> SELECT * FROM Websites;  +----+--------------+---------------------------+-------+---------+  | id | name | url | alexa | country |  +----+--------------+---------------------------+-------+---------+  |  1  |  Google  | https://www.google.cm/    | 1     | USA     |  |  2  |  淘宝  | https://www.taobao.com/   | 13    | CN      |  |  3  |  菜鸟教程  | http://www.runoob.com/    | 4689  | CN      |  |  4  |  微博  | http://weibo.com/         | 20    | CN      |  |  5  |  Facebook  | https://www.facebook.com/ | 3     | USA     |  |  7  | stackoverflow | http://stackoverflow.com/ |   0 | IND     |  +----+---------------+---------------------------+-------+---------+

下面是 "apps" APP 的数据：

mysql> SELECT * FROM apps;  +----+------------+-------------------------+---------+  | id | app_name | url | country |  +----+------------+-------------------------+---------+  |  1  | QQ APP | http://im.qq.com/       | CN      |  |  2  |  微博 APP | http://weibo.com/       | CN      |  |  3  |  淘宝 APP | https://www.taobao.com/ | CN      |  +----+------------+-------------------------+---------+  3 rows in  set  (0.00 sec)

* * *

## SQL UNION 实例

下面的 SQL 语句从 "Websites" 和 "apps" 表中选取所有**不同的**country（只有不同的值）：

## 实例

SELECT country FROM Websites
UNION
SELECT country FROM apps
ORDER BY country;

执行以上 SQL 输出结果如下：

<img width="561" height="233" src="/images/587de361a53f4191865992851bb9e465.jpg"/>

**注释：**UNION 不能用于列出两个表中所有的country。如果一些网站和APP来自同一个国家，每个国家只会列出一次。UNION 只会选取不同的值。请使用 UNION ALL 来选取重复的值！

* * *

## SQL UNION ALL 实例

下面的 SQL 语句使用 UNION ALL 从 "Websites" 和 "apps" 表中选取**所有的**country（也有重复的值）：

## 实例

SELECT country FROM Websites
UNION ALL
SELECT country FROM apps
ORDER BY country;

执行以上 SQL 输出结果如下：

<img width="561" height="357" src="/images/e8cbdda67d2e420aaa97e1a104059423.jpg"/>

* * *

## 带有 WHERE 的 SQL UNION ALL

下面的 SQL 语句使用 UNION ALL 从 "Websites" 和 "apps" 表中选取**所有的**中国(CN)的数据（也有重复的值）：

## 实例

SELECT country, name FROM Websites
WHERE country=''CN''
UNION ALL
SELECT country, app_name FROM apps
WHERE country=''CN''
ORDER BY country;

执行以上 SQL 输出结果如下：

<img width="802" height="356" src="/images/a25ebc43eb5047b5a241b6f8fb39822d.jpg"/>', 40, '要检索的列。
tables: 要检索的数据表。
WHERE conditions: 可选， 检索条件。
DISTINCT: 可选，删除结果集中重复的数据。默认情况下 UNION 操作符已经删除了重复数据，所以 DISTINCT 修饰符对结果没啥影响。
ALL: 可选，返回所有结果集，包含重复数据。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (56, null, 3, 'MySQL教程', 19, 'MySQL 排序', '# MySQL 排序

我们知道从 MySQL 表中使用 SQL SELECT 语句来读取数据。

如果我们需要对读取的数据进行排序，我们就可以使用 MySQL 的 **ORDER BY** 子句来设定你想按哪个字段哪种方式来进行排序，再返回搜索结果。

### 语法

以下是 SQL SELECT 语句使用 ORDER BY 子句将查询数据排序后再返回数据：

SELECT field1, field2,...fieldN FROM table_name1, table_name2... ORDER BY field1 \\[ASC \\[DESC\\]\\[默认 ASC\\]\\],  \\[field2...\\]  \\[ASC \\[DESC\\]\\[默认 ASC\\]\\]

- 你可以使用任何字段来作为排序的条件，从而返回排序后的查询结果。
- 你可以设定多个字段来排序。
- 你可以使用 ASC 或 DESC 关键字来设置查询结果是按升序或降序排列。 默认情况下，它是按升序排列。
- 你可以添加 WHERE...LIKE 子句来设置条件。

* * *

## 在命令提示符中使用 ORDER BY 子句

以下将在 SQL SELECT 语句中使用 ORDER BY 子句来读取MySQL 数据表 runoob_tbl 中的数据：

### 实例

尝试以下实例，结果将按升序及降序排列。

## SQL 排序

mysql\\> use  RUNOOB; Database  changed  mysql\\> SELECT \\* from  runoob_tbl  ORDER  BY  submission_date  ASC; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_id | runoob_title | runoob_author | submission_date | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 3 | 学习 Java | RUNOOB.COM | 2015-05-01 | | 4 | 学习 Python | RUNOOB.COM | 2016-03-06 | | 1 | 学习 PHP | 菜鸟教程 | 2017-04-12 | | 2 | 学习 MySQL | 菜鸟教程 | 2017-04-12 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 4  rows  in  set  (0.01  sec)  mysql\\> SELECT \\* from  runoob_tbl  ORDER  BY  submission_date  DESC; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_id | runoob_title | runoob_author | submission_date | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 1 | 学习 PHP | 菜鸟教程 | 2017-04-12 | | 2 | 学习 MySQL | 菜鸟教程 | 2017-04-12 | | 4 | 学习 Python | RUNOOB.COM | 2016-03-06 | | 3 | 学习 Java | RUNOOB.COM | 2015-05-01 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 4  rows  in  set  (0.01  sec)

读取 runoob\\_tbl 表中所有数据并按 submission\\_date 字段的升序排列。

* * *

## 在 PHP 脚本中使用 ORDER BY 子句

你可以使用PHP函数的 mysqli_query() 及相同的 SQL SELECT 带上 ORDER BY 子句的命令来获取数据。

该函数用于执行 SQL 命令，然后通过 PHP 函数 mysqli\\_fetch\\_array() 来输出所有查询的数据。

### 实例

尝试以下实例，查询后的数据按 submission_date 字段的降序排列后返回。

## MySQL ORDER BY 测试：

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''SELECT runoob\\_id, runoob\\_title, runoob\\_author, submission\\_date FROM runoob\\_tbl ORDER BY submission\\_date ASC''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法读取数据: '' . mysqli_error($conn)); }  echo  ''&lt;h2&gt;菜鸟教程 MySQL ORDER BY 测试&lt;h2&gt;''; echo  ''&lt;table border="1"&gt;&lt;tr&gt;&lt;td&gt;教程 ID&lt;/td&gt;&lt;td&gt;标题&lt;/td&gt;&lt;td&gt;作者&lt;/td&gt;&lt;td&gt;提交日期&lt;/td&gt;&lt;/tr&gt;''; while($row = mysqli\\_fetch\\_array($retval, MYSQL_ASSOC))  {  echo  "&lt;tr&gt;&lt;td&gt; {$row\\[''runoob_id''\\]}&lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_title''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_author''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''submission_date''\\]} &lt;/td&gt; ". "&lt;/tr&gt;"; }  echo  ''&lt;/table&gt;''; mysqli_close($conn); ?>

输出结果如下图所示：

![](/images/c29f3e58289c436492c63c4ff3021e99.jpg)', 121, '我们知道从 MySQL 表中使用 SQL SELECT 语句来读取数据。
如果我们需要对读取的数据进行排序，我们就可以使用 MySQL 的 ORDER BY 子句来设定你想按哪个字段哪种方式来进行排序，再返回搜索结果。
语法
以下是 SQL SELECT 语句使用 ORDER BY 子句将查询数据排序后再返回数据：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (57, null, 3, 'MySQL教程', 20, 'MySQL GROUP BY 语句', '# MySQL GROUP BY 语句

GROUP BY 语句根据一个或多个列对结果集进行分组。

在分组的列上我们可以使用 COUNT, SUM, AVG,等函数。

### GROUP BY 语法

SELECT column_name,  function(column_name) FROM table_name
WHERE column_name operator value
GROUP BY column_name;

* * *

## 实例演示

本章节实例使用到了以下表结构及数据，使用前我们可以先将以下数据导入数据库中。

SET NAMES utf8; SET FOREIGN\\_KEY\\_CHECKS =  0;  --  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  --  Table structure for  \\`employee_tbl\\`  --  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\- DROP TABLE IF EXISTS \\`employee_tbl\\`; CREATE TABLE \\`employee_tbl\\`  (  \\`id\\`  int(11) NOT NULL,  \\`name\\`  char(10) NOT NULL DEFAULT '''',  \\`date\\` datetime NOT NULL,  \\`singin\\` tinyint(4) NOT NULL DEFAULT ''0'' COMMENT ''登录次数'', PRIMARY KEY (\\`id\\`)  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;  --  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  --  Records of \\`employee_tbl\\`  --  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  BEGIN; INSERT INTO \\`employee_tbl\\` VALUES (''1'',  ''小明'',  ''2016-04-22 15:25:33'',  ''1''),  (''2'',  ''小王'',  ''2016-04-20 15:25:47'',  ''3''),  (''3'',  ''小丽'',  ''2016-04-19 15:26:02'',  ''2''),  (''4'',  ''小王'',  ''2016-04-07 15:26:14'',  ''4''),  (''5'',  ''小明'',  ''2016-04-11 15:26:40'',  ''4''),  (''6'',  ''小明'',  ''2016-04-04 15:26:54'',  ''2''); COMMIT; SET FOREIGN\\_KEY\\_CHECKS =  1;

导入成功后，执行以下 SQL 语句：

mysql>  set names utf8; mysql> SELECT * FROM employee_tbl;  +----+--------+---------------------+--------+  | id | name | date | singin |  +----+--------+---------------------+--------+  |  1  |  小明  |  2016-04-22  15:25:33  |  1  |  |  2  |  小王  |  2016-04-20  15:25:47  |  3  |  |  3  |  小丽  |  2016-04-19  15:26:02  |  2  |  |  4  |  小王  |  2016-04-07  15:26:14  |  4  |  |  5  |  小明  |  2016-04-11  15:26:40  |  4  |  |  6  |  小明  |  2016-04-04  15:26:54  |  2  |  +----+--------+---------------------+--------+  6 rows in  set  (0.00 sec)

接下来我们使用 GROUP BY 语句 将数据表按名字进行分组，并统计每个人有多少条记录：

mysql> SELECT name, COUNT(*) FROM   employee_tbl GROUP BY name;  +--------+----------+  | name | COUNT(*)  |  +--------+----------+  |  小丽  |  1  |  |  小明  |  3  |  |  小王  |  2  |  +--------+----------+  3 rows in  set  (0.01 sec)

### 使用 WITH ROLLUP

WITH ROLLUP 可以实现在分组统计数据基础上再进行相同的统计（SUM,AVG,COUNT…）。

例如我们将以上的数据表按名字进行分组，再统计每个人登录的次数：

mysql> SELECT name, SUM(singin)  as singin\\_count FROM  employee\\_tbl GROUP BY name WITH ROLLUP;  +--------+--------------+  | name | singin_count |  +--------+--------------+  |  小丽  |  2  |  |  小明  |  7  |  |  小王  |  7  |  | NULL |  16  |  +--------+--------------+  4 rows in  set  (0.00 sec)

其中记录 NULL 表示所有人的登录次数。

我们可以使用 coalesce 来设置一个可以取代 NUll 的名称，coalesce 语法：

select coalesce(a,b,c);

参数说明：如果a==null,则选择b；如果b==null,则选择c；如果a!=null,则选择a；如果a b c 都为null ，则返回为null（没意义）。

以下实例中如果名字为空我们使用总数代替：

mysql> SELECT coalesce(name,  ''总数''), SUM(singin)  as singin\\_count FROM  employee\\_tbl GROUP BY name WITH ROLLUP;  +--------------------------+--------------+  | coalesce(name,  ''总数'')  | singin_count |  +--------------------------+--------------+  |  小丽  |  2  |  |  小明  |  7  |  |  小王  |  7  |  |  总数  |  16  |  +--------------------------+--------------+  4 rows in  set  (0.01 sec)', 8, 'GROUP BY 语句根据一个或多个列对结果集进行分组。
在分组的列上我们可以使用 COUNT, SUM, AVG,等函数。
GROUP BY 语法');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (58, null, 3, 'MySQL教程', 21, 'MySQL 连接的使用', '# MySQL 连接的使用

在前几章节中，我们已经学会了如何在一张表中读取数据，这是相对简单的，但是在真正的应用中经常需要从多个数据表中读取数据。

本章节我们将向大家介绍如何使用 MySQL 的 JOIN 在两个或多个表中查询数据。

你可以在 SELECT, UPDATE 和 DELETE 语句中使用 Mysql 的 JOIN 来联合多表查询。

JOIN 按照功能大致分为如下三类：

- **INNER JOIN（内连接,或等值连接）**：获取两个表中字段匹配关系的记录。
- **LEFT JOIN（左连接）：**获取左表所有记录，即使右表没有对应匹配的记录。
- **RIGHT JOIN（右连接）：** 与 LEFT JOIN 相反，用于获取右表所有记录，即使左表没有对应匹配的记录。

本章节使用的数据库结构及数据下载：[runoob-mysql-join-test.sql](https://static.runoob.com/download/runoob-mysql-join-test.sql)。

* * *

## 在命令提示符中使用 INNER JOIN

我们在RUNOOB数据库中有两张表 tcount\\_tbl 和 runoob\\_tbl。两张数据表数据如下：

### 实例

尝试以下实例：

## 测试实例数据

mysql\\> use  RUNOOB; Database  changed  mysql\\> SELECT \\* FROM  tcount_tbl; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_author | runoob_count | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 菜鸟教程 | 10 | | RUNOOB.COM | 20 | | Google | 22 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 3  rows  in  set  (0.01  sec)  mysql\\> SELECT \\* from  runoob_tbl; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_id | runoob_title | runoob_author | submission_date | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 1 | 学习 PHP | 菜鸟教程 | 2017-04-12 | | 2 | 学习 MySQL | 菜鸟教程 | 2017-04-12 | | 3 | 学习 Java | RUNOOB.COM | 2015-05-01 | | 4 | 学习 Python | RUNOOB.COM | 2016-03-06 | | 5 | 学习 C | FK | 2017-04-05 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 5  rows  in  set  (0.01  sec)

接下来我们就使用MySQL的**INNER JOIN(也可以省略 INNER 使用 JOIN，效果一样)**来连接以上两张表来读取runoob\\_tbl表中所有runoob\\_author字段在tcount\\_tbl表对应的runoob\\_count字段值：

## INNER JOIN

mysql\\> SELECT  a.runoob_id, a.runoob_author, b.runoob_count  FROM  runoob_tbl  a  INNER  JOIN  tcount_tbl  b  ON  a.runoob_author = b.runoob_author; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | a.runoob_id | a.runoob_author | b.runoob_count | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 1 | 菜鸟教程 | 10 | | 2 | 菜鸟教程 | 10 | | 3 | RUNOOB.COM | 20 | | 4 | RUNOOB.COM | 20 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 4  rows  in  set  (0.00  sec)

以上 SQL 语句等价于：

## WHERE 子句

mysql\\> SELECT  a.runoob_id, a.runoob_author, b.runoob_count  FROM  runoob_tbl  a, tcount_tbl  b  WHERE  a.runoob_author = b.runoob_author; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | a.runoob_id | a.runoob_author | b.runoob_count | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 1 | 菜鸟教程 | 10 | | 2 | 菜鸟教程 | 10 | | 3 | RUNOOB.COM | 20 | | 4 | RUNOOB.COM | 20 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 4  rows  in  set  (0.01  sec)

![](/images/934bc708aca04d87bff16730264c77db.gif)

* * *

## MySQL LEFT JOIN

MySQL left join 与 join 有所不同。 MySQL LEFT JOIN 会读取左边数据表的全部数据，即便右边表无对应数据。

### 实例

尝试以下实例，以 **runoob_tbl** 为左表，**tcount_tbl** 为右表，理解 MySQL LEFT JOIN 的应用：

## LEFT JOIN

mysql\\> SELECT  a.runoob_id, a.runoob_author, b.runoob_count  FROM  runoob_tbl  a  LEFT  JOIN  tcount_tbl  b  ON  a.runoob_author = b.runoob_author; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | a.runoob_id | a.runoob_author | b.runoob_count | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 1 | 菜鸟教程 | 10 | | 2 | 菜鸟教程 | 10 | | 3 | RUNOOB.COM | 20 | | 4 | RUNOOB.COM | 20 | | 5 | FK | NULL | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 5  rows  in  set  (0.01  sec)

以上实例中使用了 LEFT JOIN，该语句会读取左边的数据表 runoob\\_tbl 的所有选取的字段数据，即便在右侧表 tcount\\_tbl中 没有对应的 runoob_author 字段值。

![](/images/c238089ea0a749e7b48c19023095fc0f.gif)

* * *

## MySQL RIGHT JOIN

MySQL RIGHT JOIN 会读取右边数据表的全部数据，即便左边边表无对应数据。

### 实例

尝试以下实例，以 **runoob_tbl** 为左表，**tcount_tbl** 为右表，理解MySQL RIGHT JOIN的应用：

## RIGHT JOIN

mysql\\> SELECT  a.runoob_id, a.runoob_author, b.runoob_count  FROM  runoob_tbl  a  RIGHT  JOIN  tcount_tbl  b  ON  a.runoob_author = b.runoob_author; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | a.runoob_id | a.runoob_author | b.runoob_count | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 1 | 菜鸟教程 | 10 | | 2 | 菜鸟教程 | 10 | | 3 | RUNOOB.COM | 20 | | 4 | RUNOOB.COM | 20 | | NULL | NULL | 22 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 5  rows  in  set  (0.01  sec)

以上实例中使用了 RIGHT JOIN，该语句会读取右边的数据表 tcount\\_tbl 的所有选取的字段数据，即便在左侧表 runoob\\_tbl 中没有对应的runoob_author 字段值。

![](/images/9394dcfcfcdd449bbd56c89f97f617c5.gif)

* * *

## 在 PHP 脚本中使用 JOIN

PHP 中使用 mysqli\\_query() 函数来执行 SQL 语句，你可以使用以上的相同的 SQL 语句作为 mysqli\\_query() 函数的参数。

尝试如下实例:

## MySQL ORDER BY 测试：

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); $sql = ''SELECT a.runoob\\_id, a.runoob\\_author, b.runoob\\_count FROM runoob\\_tbl a INNER JOIN tcount\\_tbl b ON a.runoob\\_author = b.runoob_author''; mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法读取数据: '' . mysqli_error($conn)); }  echo  ''&lt;h2&gt;菜鸟教程 MySQL JOIN 测试&lt;h2&gt;''; echo  ''&lt;table border="1"&gt;&lt;tr&gt;&lt;td&gt;教程 ID&lt;/td&gt;&lt;td&gt;作者&lt;/td&gt;&lt;td&gt;登陆次数&lt;/td&gt;&lt;/tr&gt;''; while($row = mysqli\\_fetch\\_array($retval, MYSQLI_ASSOC))  {  echo  "&lt;tr&gt;&lt;td&gt; {$row\\[''runoob_id''\\]}&lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_author''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_count''\\]} &lt;/td&gt; ". "&lt;/tr&gt;"; }  echo  ''&lt;/table&gt;''; mysqli_close($conn); ?>

输出结果如下图所示：

![](/images/6cc5a19324654e338f89bedfc606b817.jpg)', 1, '在前几章节中，我们已经学会了如何在一张表中读取数据，这是相对简单的，但是在真正的应用中经常需要从多个数据表中读取数据。
本章节我们将向大家介绍如何使用 MySQL 的 JOIN 在两个或多个表中查询数据。
你可以在 SELECT, UPDATE 和 DELETE 语句中使用 Mysql 的 JOIN 来联合多表查询。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (59, null, 3, 'MySQL教程', 22, 'MySQL NULL 值处理', '# MySQL NULL 值处理

我们已经知道 MySQL 使用 SQL SELECT 命令及 WHERE 子句来读取数据表中的数据,但是当提供的查询条件字段为 NULL 时，该命令可能就无法正常工作。

为了处理这种情况，MySQL提供了三大运算符:

- **IS NULL:** 当列的值是 NULL,此运算符返回 true。
- **IS NOT NULL:** 当列的值不为 NULL, 运算符返回 true。
- **&lt;=&gt;:** 比较操作符（不同于 = 运算符），当比较的的两个值相等或者都为 NULL 时返回 true。

关于 NULL 的条件比较运算是比较特殊的。你不能使用 = NULL 或 != NULL 在列中查找 NULL 值 。

在 MySQL 中，NULL 值与任何其它值的比较（即使是 NULL）永远返回 NULL，即 NULL = NULL 返回 NULL 。

MySQL 中处理 NULL 使用 IS NULL 和 IS NOT NULL 运算符。

> **注意：**
> 
> select  *  , columnName1+ifnull(columnName2,0)  from tableName;
> 
> columnName1，columnName2 为 int 型，当 columnName2 中，有值为 null 时，columnName1+columnName2=null， ifnull(columnName2,0) 把 columnName2 中 null 值转为 0。

* * *

## 在命令提示符中使用 NULL 值

以下实例中假设数据库 RUNOOB 中的表 runoob\\_test\\_tbl 含有两列 runoob\\_author 和 runoob\\_count, runoob_count 中设置插入NULL值。

### 实例

尝试以下实例:

## 创建数据表 runoob\\_test\\_tbl

root@host  Enter  password:\\*\\*\\*\\*\\*\\*\\* mysql\\> use  RUNOOB; Database  changed  mysql\\> create  table  runoob\\_test\\_tbl -\\> ( -\\> runoob_author  varchar(40)  NOT  NULL, -\\> runoob_count  INT -\\> ); Query  OK, 0  rows  affected  (0.05  sec)  mysql\\> INSERT  INTO  runoob\\_test\\_tbl  (runoob_author, runoob_count)  values  (''RUNOOB'', 20); mysql\\> INSERT  INTO  runoob\\_test\\_tbl  (runoob_author, runoob_count)  values  (''菜鸟教程'', NULL); mysql\\> INSERT  INTO  runoob\\_test\\_tbl  (runoob_author, runoob_count)  values  (''Google'', NULL); mysql\\> INSERT  INTO  runoob\\_test\\_tbl  (runoob_author, runoob_count)  values  (''FK'', 20); mysql\\> SELECT \\* from  runoob\\_test\\_tbl; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_author | runoob_count | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | RUNOOB | 20 | | 菜鸟教程 | NULL | | Google | NULL | | FK | 20 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 4  rows  in  set  (0.01  sec)

以下实例中你可以看到 = 和 != 运算符是不起作用的：

mysql\\> SELECT \\* FROM  runoob\\_test\\_tbl  WHERE  runoob_count = NULL; Empty  set  (0.00  sec)  mysql\\> SELECT \\* FROM  runoob\\_test\\_tbl  WHERE  runoob_count != NULL; Empty  set  (0.01  sec)

查找数据表中 runoob\\_test\\_tbl 列是否为 NULL，必须使用 **IS NULL** 和 **IS NOT NULL**，如下实例：

mysql\\> SELECT \\* FROM  runoob\\_test\\_tbl  WHERE  runoob_count  IS  NULL; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_author | runoob_count | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | 菜鸟教程 | NULL | | Google | NULL | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 2  rows  in  set  (0.01  sec)  mysql\\> SELECT \\* from  runoob\\_test\\_tbl  WHERE  runoob_count  IS  NOT  NULL; \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | runoob_author | runoob_count | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ | RUNOOB | 20 | | FK | 20 | \\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\+ 2  rows  in  set  (0.01  sec)

* * *

## 使用 PHP 脚本处理 NULL 值

PHP 脚本中你可以在 if...else 语句来处理变量是否为空，并生成相应的条件语句。

以下实例中 PHP 设置了 $runoob\\_count 变量，然后使用该变量与数据表中的 runoob\\_count 字段进行比较：

## MySQL ORDER BY 测试：

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn , "set names utf8"); if(  isset($runoob_count  ))  {  $sql = "SELECT runoob\\_author, runoob\\_count FROM runoob\\_test\\_tbl WHERE runoob_count = $runoob_count"; }  else  {  $sql = "SELECT runoob\\_author, runoob\\_count FROM runoob\\_test\\_tbl WHERE runoob_count IS NULL"; }  mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); $retval = mysqli_query(  $conn, $sql  ); if(! $retval  )  {  die(''无法读取数据: '' . mysqli_error($conn)); }  echo  ''&lt;h2&gt;菜鸟教程 IS NULL 测试&lt;h2&gt;''; echo  ''&lt;table border="1"&gt;&lt;tr&gt;&lt;td&gt;作者&lt;/td&gt;&lt;td&gt;登陆次数&lt;/td&gt;&lt;/tr&gt;''; while($row = mysqli\\_fetch\\_array($retval, MYSQL_ASSOC))  {  echo  "&lt;tr&gt;". "&lt;td&gt;{$row\\[''runoob_author''\\]} &lt;/td&gt; ". "&lt;td&gt;{$row\\[''runoob_count''\\]} &lt;/td&gt; ". "&lt;/tr&gt;"; }  echo  ''&lt;/table&gt;''; mysqli_close($conn); ?>

输出结果如下图所示：

![](/images/b17cb9bb4aa647dfa56598d369346767.jpg)', 1, '我们已经知道 MySQL 使用 SQL SELECT 命令及 WHERE 子句来读取数据表中的数据,但是当提供的查询条件字段为 NULL 时，该命令可能就无法正常工作。
为了处理这种情况，MySQL提供了三大运算符:
IS NULL: 当列的值是 NULL,此运算符返回 true。
IS NOT NULL: 当列的值不为 NULL, 运算符返回 true。
<=>: 比较操作符（不同于 = 运算符），当比较的的两个值相等或者都为 NULL 时返回 true。
关于 NULL 的条件比较运算是比较特殊的。你不能使用 = NULL 或 != NULL 在列中查找 NULL 值 。
在 MySQL 中，NULL 值与任何其它值的比较（即使是 NULL）永远返回 NULL，即 NULL = NULL 返回 NULL 。
MySQL 中处理 NULL 使用 IS NULL 和 IS NOT NULL 运算符。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (60, null, 3, 'MySQL教程', 23, 'MySQL 正则表达式', '# MySQL 正则表达式

在前面的章节我们已经了解到MySQL可以通过 **LIKE ...%** 来进行模糊匹配。

MySQL 同样也支持其他正则表达式的匹配， MySQL中使用 REGEXP 操作符来进行正则表达式匹配。

如果您了解PHP或Perl，那么操作起来就非常简单，因为MySQL的正则表达式匹配与这些脚本的类似。

下表中的正则模式可应用于 REGEXP 操作符中。

| 模式  | 描述  |
| --- | --- |
| ^   | 匹配输入字符串的开始位置。如果设置了 RegExp 对象的 Multiline 属性，^ 也匹配 ''\\\\n'' 或 ''\\\\r'' 之后的位置。 |
| $   | 匹配输入字符串的结束位置。如果设置了RegExp 对象的 Multiline 属性，$ 也匹配 ''\\\\n'' 或 ''\\\\r'' 之前的位置。 |
| .   | 匹配除 "\\\\n" 之外的任何单个字符。要匹配包括 ''\\\\n'' 在内的任何字符，请使用像 ''\\[.\\\\n\\]'' 的模式。 |
| \\[...\\] | 字符集合。匹配所包含的任意一个字符。例如， ''\\[abc\\]'' 可以匹配 "plain" 中的 ''a''。 |
| \\[^...\\] | 负值字符集合。匹配未包含的任意字符。例如， ''\\[^abc\\]'' 可以匹配 "plain" 中的''p''。 |
| p1\\|p2\\|p3 | 匹配 p1 或 p2 或 p3。例如，''z\\|food'' 能匹配 "z" 或 "food"。''(z\\|f)ood'' 则匹配 "zood" 或 "food"。 |
| *   | 匹配前面的子表达式零次或多次。例如，zo* 能匹配 "z" 以及 "zoo"。* 等价于{0,}。 |
| +   | 匹配前面的子表达式一次或多次。例如，''zo+'' 能匹配 "zo" 以及 "zoo"，但不能匹配 "z"。+ 等价于 {1,}。 |
| {n} | n 是一个非负整数。匹配确定的 n 次。例如，''o{2}'' 不能匹配 "Bob" 中的 ''o''，但是能匹配 "food" 中的两个 o。 |
| {n,m} | m 和 n 均为非负整数，其中n <= m。最少匹配 n 次且最多匹配 m 次。 |

### 实例

了解以上的正则需求后，我们就可以根据自己的需求来编写带有正则表达式的SQL语句。以下我们将列出几个小实例(表名：person_tbl )来加深我们的理解：

查找name字段中以''st''为开头的所有数据：

mysql> SELECT name FROM person_tbl WHERE name REGEXP ''^st'';

查找name字段中以''ok''为结尾的所有数据：

mysql> SELECT name FROM person_tbl WHERE name REGEXP ''ok$'';

查找name字段中包含''mar''字符串的所有数据：

mysql> SELECT name FROM person_tbl WHERE name REGEXP ''mar'';

查找name字段中以元音字符开头或以''ok''字符串结尾的所有数据：

mysql> SELECT name FROM person_tbl WHERE name REGEXP ''^\\[aeiou\\]|ok$'';', 1, '在前面的章节我们已经了解到MySQL可以通过 LIKE ...% 来进行模糊匹配。
MySQL 同样也支持其他正则表达式的匹配， MySQL中使用 REGEXP 操作符来进行正则表达式匹配。
如果您了解PHP或Perl，那么操作起来就非常简单，因为MySQL的正则表达式匹配与这些脚本的类似。
下表中的正则模式可应用于 REGEXP 操作符中。
');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (61, null, 3, 'MySQL教程', 24, 'MySQL 事务', '# MySQL 事务

MySQL 事务主要用于处理操作量大，复杂度高的数据。比如说，在人员管理系统中，你删除一个人员，你既需要删除人员的基本资料，也要删除和该人员相关的信息，如信箱，文章等等，这样，这些数据库操作语句就构成一个事务！

- 在 MySQL 中只有使用了 Innodb 数据库引擎的数据库或表才支持事务。
- 事务处理可以用来维护数据库的完整性，保证成批的 SQL 语句要么全部执行，要么全部不执行。
- 事务用来管理 insert,update,delete 语句

一般来说，事务是必须满足4个条件（ACID）：：原子性（**A**tomicity，或称不可分割性）、一致性（**C**onsistency）、隔离性（**I**solation，又称独立性）、持久性（**D**urability）。

- **原子性：**一个事务（transaction）中的所有操作，要么全部完成，要么全部不完成，不会结束在中间某个环节。事务在执行过程中发生错误，会被回滚（Rollback）到事务开始前的状态，就像这个事务从来没有执行过一样。
    
- **一致性：**在事务开始之前和事务结束以后，数据库的完整性没有被破坏。这表示写入的资料必须完全符合所有的预设规则，这包含资料的精确度、串联性以及后续数据库可以自发性地完成预定的工作。
    
- **隔离性：**数据库允许多个并发事务同时对其数据进行读写和修改的能力，隔离性可以防止多个事务并发执行时由于交叉执行而导致数据的不一致。事务隔离分为不同级别，包括读未提交（Read uncommitted）、读提交（read committed）、可重复读（repeatable read）和串行化（Serializable）。
    
- **持久性：**事务处理结束后，对数据的修改就是永久的，即便系统故障也不会丢失。
    

> 在 MySQL 命令行的默认设置下，事务都是自动提交的，即执行 SQL 语句后就会马上执行 COMMIT 操作。因此要显式地开启一个事务务须使用命令 BEGIN 或 START TRANSACTION，或者执行命令 SET AUTOCOMMIT=0，用来禁止使用当前会话的自动提交。

### 事务控制语句：

- BEGIN 或 START TRANSACTION 显式地开启一个事务；
    
- COMMIT 也可以使用 COMMIT WORK，不过二者是等价的。COMMIT 会提交事务，并使已对数据库进行的所有修改成为永久性的；
    
- ROLLBACK 也可以使用 ROLLBACK WORK，不过二者是等价的。回滚会结束用户的事务，并撤销正在进行的所有未提交的修改；
    
- SAVEPOINT identifier，SAVEPOINT 允许在事务中创建一个保存点，一个事务中可以有多个 SAVEPOINT；
    
- RELEASE SAVEPOINT identifier 删除一个事务的保存点，当没有指定的保存点时，执行该语句会抛出一个异常；
    
- ROLLBACK TO identifier 把事务回滚到标记点；
    
- SET TRANSACTION 用来设置事务的隔离级别。InnoDB 存储引擎提供事务的隔离级别有READ UNCOMMITTED、READ COMMITTED、REPEATABLE READ 和 SERIALIZABLE。
    

### MYSQL 事务处理主要有两种方法：

1、用 BEGIN, ROLLBACK, COMMIT来实现

- **BEGIN** 开始一个事务
- **ROLLBACK** 事务回滚
- **COMMIT** 事务确认

2、直接用 SET 来改变 MySQL 的自动提交模式:

- **SET AUTOCOMMIT=0** 禁止自动提交
- **SET AUTOCOMMIT=1** 开启自动提交

## 事务测试

mysql\\> use  RUNOOB; Database  changed  mysql\\> CREATE  TABLE  runoob\\_transaction\\_test(  id  int(5))  engine=innodb; Query  OK, 0  rows  affected  (0.04  sec)  mysql\\> select \\* from  runoob\\_transaction\\_test; Empty  set  (0.01  sec)  mysql\\> begin; Query  OK, 0  rows  affected  (0.00  sec)  mysql\\> insert  into  runoob\\_transaction\\_test  value(5); Query  OK, 1  rows  affected  (0.01  sec)  mysql\\> insert  into  runoob\\_transaction\\_test  value(6); Query  OK, 1  rows  affected  (0.00  sec)  mysql\\> commit; Query  OK, 0  rows  affected  (0.01  sec)  mysql\\> select \\* from  runoob\\_transaction\\_test; \\+\\-\\-\\-\\-\\-\\-\\+ | id | \\+\\-\\-\\-\\-\\-\\-\\+ | 5 | | 6 | \\+\\-\\-\\-\\-\\-\\-\\+ 2  rows  in  set  (0.01  sec)  mysql\\> begin; Query  OK, 0  rows  affected  (0.00  sec)  mysql\\> insert  into  runoob\\_transaction\\_test  values(7); Query  OK, 1  rows  affected  (0.00  sec)  mysql\\> rollback; Query  OK, 0  rows  affected  (0.00  sec)  mysql\\> select \\* from  runoob\\_transaction\\_test; \\+\\-\\-\\-\\-\\-\\-\\+ | id | \\+\\-\\-\\-\\-\\-\\-\\+ | 5 | | 6 | \\+\\-\\-\\-\\-\\-\\-\\+ 2  rows  in  set  (0.01  sec)  mysql>

### PHP中使用事务实例

## MySQL ORDER BY 测试：

<?php  $dbhost = ''localhost''; $dbuser = ''root''; $dbpass = ''123456''; $conn = mysqli_connect($dbhost, $dbuser, $dbpass); if(! $conn  )  {  die(''连接失败: '' . mysqli_error($conn)); }  mysqli_query($conn, "set names utf8"); mysqli\\_select\\_db(  $conn, ''RUNOOB''  ); mysqli_query($conn, "SET AUTOCOMMIT=0"); mysqli\\_begin\\_transaction($conn); if(!mysqli_query($conn, "insert into runoob\\_transaction\\_test (id) values(8)"))  {  mysqli_query($conn, "ROLLBACK"); }  if(!mysqli_query($conn, "insert into runoob\\_transaction\\_test (id) values(9)"))  {  mysqli_query($conn, "ROLLBACK"); }  mysqli_commit($conn); mysqli_close($conn); ?>', 2, 'MySQL 事务主要用于处理操作量大，复杂度高的数据。比如说，在人员管理系统中，你删除一个人员，你既需要删除人员的基本资料，也要删除和该人员相关的信息，如信箱，文章等等，这样，这些数据库操作语句就构成一个事务！
在 MySQL 中只有使用了 Innodb 数据库引擎的数据库或表才支持事务。
事务处理可以用来维护数据库的完整性，保证成批的 SQL 语句要么全部执行，要么全部不执行。
事务用来管理 insert,update,delete 语句
一般来说，事务是必须满足4个条件（ACID）：：原子性（Atomicity，或称不可分割性）、一致性（Consistency）、隔离性（Isolation，又称独立性）、持久性（Durability）。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (62, null, 3, 'MySQL教程', 25, 'MySQL ALTER命令', '# MySQL ALTER命令

当我们需要修改数据表名或者修改数据表字段时，就需要使用到MySQL ALTER命令。

开始本章教程前让我们先创建一张表，表名为：testalter_tbl。

root@host\\# mysql -u root -p password;  Enter password:******* mysql>  use RUNOOB;  Database changed
mysql> create table testalter_tbl ->  (  -> i INT,  -> c CHAR(1)  ->  );  Query OK,  0 rows affected (0.05 sec) mysql> SHOW COLUMNS FROM testalter_tbl;  +-------+---------+------+-----+---------+-------+  |  Field  |  Type  |  Null  |  Key  |  Default  |  Extra  |  +-------+---------+------+-----+---------+-------+  | i |  int(11)  | YES |  | NULL |  |  | c |  char(1)  | YES |  | NULL |  |  +-------+---------+------+-----+---------+-------+  2 rows in  set  (0.00 sec)

* * *

## 删除，添加或修改表字段

如下命令使用了 ALTER 命令及 DROP 子句来删除以上创建表的 i 字段：

mysql> ALTER TABLE testalter_tbl  DROP i;

如果数据表中只剩余一个字段则无法使用DROP来删除字段。

MySQL 中使用 ADD 子句来向数据表中添加列，如下实例在表 testalter_tbl 中添加 i 字段，并定义数据类型:

mysql> ALTER TABLE testalter_tbl ADD i INT;

执行以上命令后，i 字段会自动添加到数据表字段的末尾。

mysql> SHOW COLUMNS FROM testalter_tbl;  +-------+---------+------+-----+---------+-------+  |  Field  |  Type  |  Null  |  Key  |  Default  |  Extra  |  +-------+---------+------+-----+---------+-------+  | c |  char(1)  | YES |  | NULL |  |  | i |  int(11)  | YES |  | NULL |  |  +-------+---------+------+-----+---------+-------+  2 rows in  set  (0.00 sec)

如果你需要指定新增字段的位置，可以使用MySQL提供的关键字 FIRST (设定位第一列)， AFTER 字段名（设定位于某个字段之后）。

尝试以下 ALTER TABLE 语句, 在执行成功后，使用 SHOW COLUMNS 查看表结构的变化：

ALTER TABLE testalter_tbl DROP i; ALTER TABLE testalter_tbl ADD i INT FIRST; ALTER TABLE testalter_tbl DROP i; ALTER TABLE testalter_tbl ADD i INT AFTER c;

FIRST 和 AFTER 关键字可用于 ADD 与 MODIFY 子句，所以如果你想重置数据表字段的位置就需要先使用 DROP 删除字段然后使用 ADD 来添加字段并设置位置。

* * *

## 修改字段类型及名称

如果需要修改字段类型及名称, 你可以在ALTER命令中使用 MODIFY 或 CHANGE 子句 。

例如，把字段 c 的类型从 CHAR(1) 改为 CHAR(10)，可以执行以下命令:

mysql> ALTER TABLE testalter_tbl MODIFY c CHAR(10);

使用 CHANGE 子句, 语法有很大的不同。 在 CHANGE 关键字之后，紧跟着的是你要修改的字段名，然后指定新字段名及类型。尝试如下实例：

mysql> ALTER TABLE testalter_tbl CHANGE i j BIGINT;

mysql> ALTER TABLE testalter_tbl CHANGE j j INT;

* * *

## ALTER TABLE 对 Null 值和默认值的影响

当你修改字段时，你可以指定是否包含值或者是否设置默认值。

以下实例，指定字段 j 为 NOT NULL 且默认值为100 。

mysql> ALTER TABLE testalter_tbl -> MODIFY j BIGINT NOT NULL DEFAULT 100;

如果你不设置默认值，MySQL会自动设置该字段默认为 NULL。

* * *

## 修改字段默认值

你可以使用 ALTER 来修改字段的默认值，尝试以下实例：

mysql> ALTER TABLE testalter_tbl ALTER i SET DEFAULT 1000; mysql> SHOW COLUMNS FROM testalter_tbl;  +-------+---------+------+-----+---------+-------+  |  Field  |  Type  |  Null  |  Key  |  Default  |  Extra  |  +-------+---------+------+-----+---------+-------+  | c |  char(1)  | YES |  | NULL |  |  | i |  int(11)  | YES |  |  1000  |  |  +-------+---------+------+-----+---------+-------+  2 rows in  set  (0.00 sec)

你也可以使用 ALTER 命令及 DROP子句来删除字段的默认值，如下实例：

mysql> ALTER TABLE testalter_tbl ALTER i DROP DEFAULT; mysql> SHOW COLUMNS FROM testalter_tbl;  +-------+---------+------+-----+---------+-------+  |  Field  |  Type  |  Null  |  Key  |  Default  |  Extra  |  +-------+---------+------+-----+---------+-------+  | c |  char(1)  | YES |  | NULL |  |  | i |  int(11)  | YES |  | NULL |  |  +-------+---------+------+-----+---------+-------+  2 rows in  set  (0.00 sec)  Changing a Table  Type:

修改数据表类型，可以使用 ALTER 命令及 TYPE 子句来完成。尝试以下实例，我们将表 testalter_tbl 的类型修改为 MYISAM ：

**注意：**查看数据表类型可以使用 SHOW TABLE STATUS 语句。

mysql> ALTER TABLE testalter_tbl ENGINE = MYISAM; mysql> SHOW TABLE STATUS LIKE ''testalter_tbl''\\\\G \\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*  1. row \\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*\\*  Name: testalter_tbl Type:  MyISAM  Row_format:  Fixed  Rows:  0  Avg\\_row\\_length:  0  Data_length:  0  Max\\_data\\_length:  25769803775  Index_length:  1024  Data_free:  0  Auto_increment: NULL Create_time:  2007-06-03  08:04:36  Update_time:  2007-06-03  08:04:36  Check_time: NULL Create_options:  Comment:  1 row in  set  (0.00 sec)

* * *

## 修改表名

如果需要修改数据表的名称，可以在 ALTER TABLE 语句中使用 RENAME 子句来实现。

尝试以下实例将数据表 testalter\\_tbl 重命名为 alter\\_tbl：

mysql> ALTER TABLE testalter\\_tbl RENAME TO alter\\_tbl;

ALTER 命令还可以用来创建及删除MySQL数据表的索引，该功能我们会在接下来的章节中介绍。', 3, '当我们需要修改数据表名或者修改数据表字段时，就需要使用到MySQL ALTER命令。
开始本章教程前让我们先创建一张表，表名为：testalter_tbl。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (63, null, 3, 'MySQL教程', 26, 'MySQL 索引', '# MySQL 索引

MySQL索引的建立对于MySQL的高效运行是很重要的，索引可以大大提高MySQL的检索速度。

打个比方，如果合理的设计且使用索引的MySQL是一辆兰博基尼的话，那么没有设计和使用索引的MySQL就是一个人力三轮车。

拿汉语字典的目录页（索引）打比方，我们可以按拼音、笔画、偏旁部首等排序的目录（索引）快速查找到需要的字。

索引分单列索引和组合索引。单列索引，即一个索引只包含单个列，一个表可以有多个单列索引，但这不是组合索引。组合索引，即一个索引包含多个列。

创建索引时，你需要确保该索引是应用在 SQL 查询语句的条件(一般作为 WHERE 子句的条件)。

实际上，索引也是一张表，该表保存了主键与索引字段，并指向实体表的记录。

上面都在说使用索引的好处，但过多的使用索引将会造成滥用。因此索引也会有它的缺点：虽然索引大大提高了查询速度，同时却会降低更新表的速度，如对表进行INSERT、UPDATE和DELETE。因为更新表时，MySQL不仅要保存数据，还要保存一下索引文件。

建立索引会占用磁盘空间的索引文件。

* * *

## 普通索引

### 创建索引

这是最基本的索引，它没有任何限制。它有以下几种创建方式：

CREATE INDEX indexName ON table_name (column_name)

如果是CHAR，VARCHAR类型，length可以小于字段实际长度；如果是BLOB和TEXT类型，必须指定 length。

### 修改表结构(添加索引)

ALTER table tableName ADD INDEX indexName(columnName)

### 创建表的时候直接指定

CREATE TABLE mytable( ID INT NOT NULL, username VARCHAR(16) NOT NULL, INDEX \\[indexName\\]  (username(length))  );  

### 删除索引的语法

DROP INDEX \\[indexName\\] ON mytable;  

* * *

## 唯一索引

它与前面的普通索引类似，不同的就是：索引列的值必须唯一，但允许有空值。如果是组合索引，则列值的组合必须唯一。它有以下几种创建方式：

### 创建索引

CREATE UNIQUE INDEX indexName ON mytable(username(length))  

### 修改表结构

ALTER table mytable ADD UNIQUE \\[indexName\\]  (username(length))

### 创建表的时候直接指定

CREATE TABLE mytable( ID INT NOT NULL, username VARCHAR(16) NOT NULL, UNIQUE \\[indexName\\]  (username(length))  );  

* * *

## 使用ALTER 命令添加和删除索引

有四种方式来添加数据表的索引：

- **ALTER TABLE tbl\\_name ADD PRIMARY KEY (column\\_list):** 该语句添加一个主键，这意味着索引值必须是唯一的，且不能为NULL。
- **ALTER TABLE tbl\\_name ADD UNIQUE index\\_name (column_list):** 这条语句创建索引的值必须是唯一的（除了NULL外，NULL可能会出现多次）。
- **ALTER TABLE tbl\\_name ADD INDEX index\\_name (column_list):** 添加普通索引，索引值可出现多次。
- **ALTER TABLE tbl\\_name ADD FULLTEXT index\\_name (column_list):**该语句指定了索引为 FULLTEXT ，用于全文索引。

以下实例为在表中添加索引。

mysql> ALTER TABLE testalter_tbl ADD INDEX (c);

你还可以在 ALTER 命令中使用 DROP 子句来删除索引。尝试以下实例删除索引:

mysql> ALTER TABLE testalter_tbl DROP INDEX c;

* * *

## 使用 ALTER 命令添加和删除主键

主键作用于列上（可以一个列或多个列联合主键），添加主键索引时，你需要确保该主键默认不为空（NOT NULL）。实例如下：

mysql> ALTER TABLE testalter_tbl MODIFY i INT NOT NULL; mysql> ALTER TABLE testalter_tbl ADD PRIMARY KEY (i);

你也可以使用 ALTER 命令删除主键：

mysql> ALTER TABLE testalter_tbl DROP PRIMARY KEY;

删除主键时只需指定PRIMARY KEY，但在删除索引时，你必须知道索引名。

* * *

## 显示索引信息

你可以使用 SHOW INDEX 命令来列出表中的相关的索引信息。可以通过添加 \\\\G 来格式化输出信息。

尝试以下实例:

mysql> SHOW INDEX FROM table_name; \\\\G ........', 3, 'MySQL索引的建立对于MySQL的高效运行是很重要的，索引可以大大提高MySQL的检索速度。
打个比方，如果合理的设计且使用索引的MySQL是一辆兰博基尼的话，那么没有设计和使用索引的MySQL就是一个人力三轮车。
拿汉语字典的目录页（索引）打比方，我们可以按拼音、笔画、偏旁部首等排序的目录（索引）快速查找到需要的字。
索引分单列索引和组合索引。单列索引，即一个索引只包含单个列，一个表可以有多个单列索引，但这不是组合索引。组合索引，即一个索引包含多个列。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (64, null, 3, 'MySQL教程', 27, 'MySQL 临时表', '# MySQL 临时表

MySQL 临时表在我们需要保存一些临时数据时是非常有用的。临时表只在当前连接可见，当关闭连接时，Mysql会自动删除表并释放所有空间。

临时表在MySQL 3.23版本中添加，如果你的MySQL版本低于 3.23版本就无法使用MySQL的临时表。不过现在一般很少有再使用这么低版本的MySQL数据库服务了。

MySQL临时表只在当前连接可见，如果你使用PHP脚本来创建MySQL临时表，那每当PHP脚本执行完成后，该临时表也会自动销毁。

如果你使用了其他MySQL客户端程序连接MySQL数据库服务器来创建临时表，那么只有在关闭客户端程序时才会销毁临时表，当然你也可以手动销毁。

### 实例

以下展示了使用MySQL 临时表的简单实例，以下的SQL代码可以适用于PHP脚本的mysql_query()函数。

mysql> CREATE TEMPORARY TABLE SalesSummary  (  -> product_name VARCHAR(50) NOT NULL ->  , total_sales DECIMAL(12,2) NOT NULL DEFAULT 0.00  ->  , avg\\_unit\\_price DECIMAL(7,2) NOT NULL DEFAULT 0.00  ->  , total\\_units\\_sold INT UNSIGNED NOT NULL DEFAULT 0  );  Query OK,  0 rows affected (0.00 sec) mysql> INSERT INTO SalesSummary  ->  (product_name, total_sales, avg\\_unit\\_price, total\\_units\\_sold)  -> VALUES ->  (''cucumber'',  100.25,  90,  2); mysql> SELECT * FROM SalesSummary;  +--------------+-------------+----------------+------------------+  | product_name | total_sales | avg\\_unit\\_price | total\\_units\\_sold |  +--------------+-------------+----------------+------------------+  | cucumber |  100.25  |  90.00  |  2  |  +--------------+-------------+----------------+------------------+  1 row in  set  (0.00 sec)

当你使用 **SHOW TABLES**命令显示数据表列表时，你将无法看到 SalesSummary表。

如果你退出当前MySQL会话，再使用 **SELECT**命令来读取原先创建的临时表数据，那你会发现数据库中没有该表的存在，因为在你退出时该临时表已经被销毁了。

* * *

## 删除MySQL 临时表

默认情况下，当你断开与数据库的连接后，临时表就会自动被销毁。当然你也可以在当前MySQL会话使用 **DROP TABLE** 命令来手动删除临时表。

以下是手动删除临时表的实例：

mysql> CREATE TEMPORARY TABLE SalesSummary  (  -> product_name VARCHAR(50) NOT NULL ->  , total_sales DECIMAL(12,2) NOT NULL DEFAULT 0.00  ->  , avg\\_unit\\_price DECIMAL(7,2) NOT NULL DEFAULT 0.00  ->  , total\\_units\\_sold INT UNSIGNED NOT NULL DEFAULT 0  );  Query OK,  0 rows affected (0.00 sec) mysql> INSERT INTO SalesSummary  ->  (product_name, total_sales, avg\\_unit\\_price, total\\_units\\_sold)  -> VALUES ->  (''cucumber'',  100.25,  90,  2); mysql> SELECT * FROM SalesSummary;  +--------------+-------------+----------------+------------------+  | product_name | total_sales | avg\\_unit\\_price | total\\_units\\_sold |  +--------------+-------------+----------------+------------------+  | cucumber |  100.25  |  90.00  |  2  |  +--------------+-------------+----------------+------------------+  1 row in  set  (0.00 sec) mysql> DROP TABLE SalesSummary; mysql> SELECT * FROM SalesSummary; ERROR 1146:  Table  ''RUNOOB.SalesSummary'' doesn''t exist', 3, 'MySQL 临时表在我们需要保存一些临时数据时是非常有用的。临时表只在当前连接可见，当关闭连接时，Mysql会自动删除表并释放所有空间。
临时表在MySQL 3.23版本中添加，如果你的MySQL版本低于 3.23版本就无法使用MySQL的临时表。不过现在一般很少有再使用这么低版本的MySQL数据库服务了。
MySQL临时表只在当前连接可见，如果你使用PHP脚本来创建MySQL临时表，那每当PHP脚本执行完成后，该临时表也会自动销毁。
如果你使用了其他MySQL客户端程序连接MySQL数据库服务器来创建临时表，那么只有在关闭客户端程序时才会销毁临时表，当然你也可以手动销毁。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (65, null, 3, 'MySQL教程', 28, 'MySQL 及 SQL 注入', '# MySQL 及 SQL 注入

如果您通过网页获取用户输入的数据并将其插入一个MySQL数据库，那么就有可能发生SQL注入安全的问题。

本章节将为大家介绍如何防止SQL注入，并通过脚本来过滤SQL中注入的字符。

所谓SQL注入，就是通过把SQL命令插入到Web表单递交或输入域名或页面请求的查询字符串，最终达到欺骗服务器执行恶意的SQL命令。

我们永远不要信任用户的输入，我们必须认定用户输入的数据都是不安全的，我们都需要对用户输入的数据进行过滤处理。

以下实例中，输入的用户名必须为字母、数字及下划线的组合，且用户名长度为 8 到 20 个字符之间：

if  (preg_match("/^\\\\w{8,20}$/", $_GET\\[''username''\\], $matches))  { $result = mysqli_query($conn,  "SELECT * FROM users 
                          WHERE username=$matches\\[0\\]");  }  else  { echo "username 输入异常";  }

让我们看下在没有过滤特殊字符时，出现的SQL情况：

// 设定$name 中插入了我们不需要的SQL语句 $name =  "Qadir''; DELETE FROM users;"; mysqli_query($conn,  "SELECT * FROM users WHERE name=''{$name}''");

以上的注入语句中，我们没有对 $name 的变量进行过滤，$name 中插入了我们不需要的SQL语句，将删除 users 表中的所有数据。

在PHP中的 mysqli_query() 是不允许执行多个 SQL 语句的，但是在 SQLite 和 PostgreSQL 是可以同时执行多条SQL语句的，所以我们对这些用户的数据需要进行严格的验证。

防止SQL注入，我们需要注意以下几个要点：

- 1.永远不要信任用户的输入。对用户的输入进行校验，可以通过正则表达式，或限制长度；对单引号和 双"-"进行转换等。
- 2.永远不要使用动态拼装sql，可以使用参数化的sql或者直接使用存储过程进行数据查询存取。
- 3.永远不要使用管理员权限的数据库连接，为每个应用使用单独的权限有限的数据库连接。
- 4.不要把机密信息直接存放，加密或者hash掉密码和敏感的信息。
- 5.应用的异常信息应该给出尽可能少的提示，最好使用自定义的错误信息对原始错误信息进行包装
- 6.sql注入的检测方法一般采取辅助软件或网站平台来检测，软件一般采用sql注入检测工具jsky，网站平台就有亿思网站安全平台检测工具。MDCSOFT SCAN等。采用MDCSOFT-IPS可以有效的防御SQL注入，XSS攻击等。

* * *

## 防止SQL注入

在脚本语言，如Perl和PHP你可以对用户输入的数据进行转义从而来防止SQL注入。

PHP的MySQL扩展提供了mysqli\\_real\\_escape_string()函数来转义特殊的输入字符。

if  (get\\_magic\\_quotes_gpc())  { $name = stripslashes($name);  } $name = mysqli\\_real\\_escape_string($conn, $name); mysqli_query($conn,  "SELECT * FROM users WHERE name=''{$name}''");

* * *

## Like语句中的注入

like查询时，如果用户输入的值有"_"和"%"，则会出现这种情况：用户本来只是想查询"abcd_"，查询结果中却有"abcd_"、"abcde"、"abcdf"等等；用户要查询"30%"（注：百分之三十）时也会出现问题。

在PHP脚本中我们可以使用addcslashes()函数来处理以上情况，如下实例：

$sub = addcslashes(mysqli\\_real\\_escape_string($conn,  "%something_"),  "%_");  // $sub == \\\\%something\\\\_ mysqli_query($conn,  "SELECT * FROM messages WHERE subject LIKE ''{$sub}%''");

addcslashes() 函数在指定的字符前添加反斜杠。

语法格式:

addcslashes(string,characters)

| 参数  | 描述  |
| --- | --- |
| string | 必需。规定要检查的字符串。 |
| characters | 可选。规定受 addcslashes() 影响的字符或字符范围。 |

具体应用可以查看：[PHP addcslashes() 函数](https://www.runoob.com/php/func-string-addcslashes.html)', 4, '如果您通过网页获取用户输入的数据并将其插入一个MySQL数据库，那么就有可能发生SQL注入安全的问题。
本章节将为大家介绍如何防止SQL注入，并通过脚本来过滤SQL中注入的字符。
所谓SQL注入，就是通过把SQL命令插入到Web表单递交或输入域名或页面请求的查询字符串，最终达到欺骗服务器执行恶意的SQL命令。
我们永远不要信任用户的输入，我们必须认定用户输入的数据都是不安全的，我们都需要对用户输入的数据进行过滤处理。
以下实例中，输入的用户名必须为字母、数字及下划线的组合，且用户名长度为 8 到 20 个字符之间：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (66, null, 3, 'MySQL教程', 29, 'MySQL 运算符', '# MySQL 运算符

本章节我们主要介绍 MySQL 的运算符及运算符的优先级。 MySQL 主要有以下几种运算符：

- 算术运算符
- 比较运算符
- 逻辑运算符
- 位运算符

* * *

## 算术运算符

MySQL 支持的算术运算符包括:

| 运算符 | 作用  |
| --- | --- |
| +   | 加法  |
| -   | 减法  |
| *   | 乘法  |
| / 或 DIV | 除法  |
| % 或 MOD | 取余  |

在除法运算和模运算中，如果除数为0，将是非法除数，返回结果为NULL。

1、加

mysql>  select  1+2;  +-----+  |  1+2  |  +-----+  |  3  |  +-----+

2、减

mysql>  select  1-2;  +-----+  |  1-2  |  +-----+  |  -1  |  +-----+

3、乘

mysql>  select  2*3;  +-----+  |  2*3  |  +-----+  |  6  |  +-----+

4、除

mysql>  select  2/3;  +--------+  |  2/3  |  +--------+  |  0.6667  |  +--------+

5、商

mysql>  select  10 DIV 4;  +----------+  |  10 DIV 4  |  +----------+  |  2  |  +----------+

6、取余

mysql>  select  10 MOD 4;  +----------+  |  10 MOD 4  |  +----------+  |  2  |  +----------+

* * *

## 比较运算符

SELECT 语句中的条件语句经常要使用比较运算符。通过这些比较运算符，可以判断表中的哪些记录是符合条件的。比较结果为真，则返回 1，为假则返回 0，比较结果不确定则返回 NULL。

| 符号  | 描述  | 备注  |
| --- | --- | --- |
| =   | 等于  |     |
| <>, != | 不等于 |     |
| >   | 大于  |     |
| <   | 小于  |     |
| <=  | 小于等于 |     |
| >=  | 大于等于 |     |
| BETWEEN | 在两值之间 | >=min&&<=max |
| NOT BETWEEN | 不在两值之间 |     |
| IN  | 在集合中 |     |
| NOT IN | 不在集合中 |     |
| &lt;=&gt; | 严格比较两个NULL值是否相等 | 两个操作码均为NULL时，其所得值为1；而当一个操作码为NULL时，其所得值为0 |
| LIKE | 模糊匹配 |     |
| REGEXP 或 RLIKE | 正则式匹配 |     |
| IS NULL | 为空  |     |
| IS NOT NULL | 不为空 |     |

1、等于

mysql>  select  2=3;  +-----+  |  2=3  |  +-----+  |  0  |  +-----+ mysql>  select NULL = NULL;  +-------------+  | NULL = NULL |  +-------------+  | NULL |  +-------------+

2、不等于

mysql>  select  2<>3;  +------+  |  2<>3  |  +------+  |  1  |  +------+

3、安全等于

与 = 的区别在于当两个操作码均为 NULL 时，其所得值为 1 而不为 NULL，而当一个操作码为 NULL 时，其所得值为 0而不为 NULL。

mysql>  select  2&lt;=&gt;3;  +-------+  |  2&lt;=&gt;3  |  +-------+  |  0  |  +-------+ mysql>  select  null=null;  +-----------+  |  null=null  |  +-----------+  | NULL |  +-----------+ mysql>  select  null&lt;=&gt;null;  +-------------+  |  null&lt;=&gt;null  |  +-------------+  |  1  |  +-------------+

4、小于

mysql>  select  2<3;  +-----+  |  2<3  |  +-----+  |  1  |  +-----+

5、小于等于

mysql>  select  2<=3;  +------+  |  2<=3  |  +------+  |  1  |  +------+

6、大于

mysql>  select  2>3;  +-----+  |  2>3  |  +-----+  |  0  |  +-----+

7、大于等于

mysql>  select  2>=3;  +------+  |  2>=3  |  +------+  |  0  |  +------+

8、BETWEEN

mysql>  select  5 between 1  and  10;  +--------------------+  |  5 between 1  and  10  |  +--------------------+  |  1  |  +--------------------+

9、IN

mysql>  select  5  in  (1,2,3,4,5);  +------------------+  |  5  in  (1,2,3,4,5)  |  +------------------+  |  1  |  +------------------+

10、NOT IN

mysql>  select  5  not  in  (1,2,3,4,5);  +----------------------+  |  5  not  in  (1,2,3,4,5)  |  +----------------------+  |  0  |  +----------------------+

11、IS NULL

mysql>  select  null  is NULL;  +--------------+  |  null  is NULL |  +--------------+  |  1  |  +--------------+ mysql>  select  ''a''  is NULL;  +-------------+  |  ''a''  is NULL |  +-------------+  |  0  |  +-------------+

12、IS NOT NULL

mysql>  select  null IS NOT NULL;  +------------------+  |  null IS NOT NULL |  +------------------+  |  0  |  +------------------+ mysql>  select  ''a'' IS NOT NULL;  +-----------------+  |  ''a'' IS NOT NULL |  +-----------------+  |  1  |  +-----------------+

13、LIKE

mysql>  select  ''12345'' like ''12%'';  +--------------------+  |  ''12345'' like ''12%''  |  +--------------------+  |  1  |  +--------------------+ mysql>  select  ''12345'' like ''12_'';  +--------------------+  |  ''12345'' like ''12_''  |  +--------------------+  |  0  |  +--------------------+

14、REGEXP

mysql>  select  ''beijing'' REGEXP ''jing'';  +-------------------------+  |  ''beijing'' REGEXP ''jing''  |  +-------------------------+  |  1  |  +-------------------------+ mysql>  select  ''beijing'' REGEXP ''xi'';  +-----------------------+  |  ''beijing'' REGEXP ''xi''  |  +-----------------------+  |  0  |  +-----------------------+

* * *

## 逻辑运算符

逻辑运算符用来判断表达式的真假。如果表达式是真，结果返回 1。如果表达式是假，结果返回 0。

| 运算符号 | 作用  |
| --- | --- |
| NOT 或 ! | 逻辑非 |
| AND | 逻辑与 |
| OR  | 逻辑或 |
| XOR | 逻辑异或 |

1、与

mysql>  select  2  and  0;  +---------+  |  2  and  0  |  +---------+  |  0  |  +---------+ mysql>  select  2  and  1;  +---------+  |  2  and  1  |  +---------+  |  1  |  +---------+

2、或

mysql>  select  2  or  0;  +--------+  |  2  or  0  |  +--------+  |  1  |  +--------+ mysql>  select  2  or  1;  +--------+  |  2  or  1  |  +--------+  |  1  |  +--------+ mysql>  select  0  or  0;  +--------+  |  0  or  0  |  +--------+  |  0  |  +--------+ mysql>  select  1  ||  0;  +--------+  |  1  ||  0  |  +--------+  |  1  |  +--------+

3、非

mysql>  select  not  1;  +-------+  |  not  1  |  +-------+  |  0  |  +-------+ mysql>  select  !0;  +----+  |  !0  |  +----+  |  1  |  +----+

4、异或

mysql>  select  1 xor 1;  +---------+  |  1 xor 1  |  +---------+  |  0  |  +---------+ mysql>  select  0 xor 0;  +---------+  |  0 xor 0  |  +---------+  |  0  |  +---------+ mysql>  select  1 xor 0;  +---------+  |  1 xor 0  |  +---------+  |  1  |  +---------+ mysql>  select  null  or  1;  +-----------+  |  null  or  1  |  +-----------+  |  1  |  +-----------+ mysql>  select  1  ^  0;  +-------+  |  1  ^  0  |  +-------+  |  1  |  +-------+

* * *

## 位运算符

位运算符是在二进制数上进行计算的运算符。位运算会先将操作数变成二进制数，进行位运算。然后再将计算结果从二进制数变回十进制数。

| 运算符号 | 作用  |
| --- | --- |
| &   | 按位与 |
| \\|  | 按位或 |
| ^   | 按位异或 |
| !   | 取反  |
| <<  | 左移  |
| >>  | 右移  |

1、按位与

mysql>  select  3&5;  +-----+  |  3&5  |  +-----+  |  1  |  +-----+

2、按位或

mysql>  select  3|5;  +-----+  |  3|5  |  +-----+  |  7  |  +-----+

3、按位异或

mysql>  select  3^5;  +-----+  |  3^5  |  +-----+  |  6  |  +-----+

4、按位取反

mysql>  select  ~18446744073709551612;  +-----------------------+  |  ~18446744073709551612  |  +-----------------------+  |  3  |  +-----------------------+

5、按位右移

mysql>  select  3>>1;  +------+  |  3>>1  |  +------+  |  1  |  +------+

6、按位左移

mysql>  select  3<<1;  +------+  |  3<<1  |  +------+  |  6  |  +------+

* * *

## 运算符优先级

最低优先级为： :=。

![](/images/d9df420b491d42f7811c9585c22e5385.png)

最高优先级为： !、BINARY、 COLLATE。', 4, 'SELECT 语句中的条件语句经常要使用比较运算符。通过这些比较运算符，可以判断表中的哪些记录是符合条件的。比较结果为真，则返回 1，为假则返回 0，比较结果不确定则返回 NULL。本章节我们主要介绍 MySQL 的运算符及运算符的优先级。 MySQL 主要有以下几种运算符：
                                                                                           算术运算符
                                                                                           比较运算符
                                                                                           逻辑运算符
                                                                                           位运算符');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (67, null, 4, 'Maven教程', 2, 'Maven 环境配置', '# Maven 环境配置

Maven 是一个基于 Java 的工具，所以要做的第一件事情就是安装 JDK。

如果你还未安装 JDK，可以参考我们的 [Java 开发环境配置](https://www.runoob.com/java/java-environment-setup.html)。

### 系统要求

| 项目  | 要求  |
| --- | --- |
| JDK | Maven 3.3 要求 JDK 1.7 或以上<br>Maven 3.2 要求 JDK 1.6 或以上<br>Maven 3.0/3.1 要求 JDK 1.5 或以上 |
| 内存  | 没有最低要求 |
| 磁盘  | Maven 自身安装需要大约 10 MB 空间。除此之外，额外的磁盘空间将用于你的本地 Maven 仓库。你本地仓库的大小取决于使用情况，但预期至少 500 MB |
| 操作系统 | 没有最低要求 |

### 检查 Java 安装

| 操作系统 | 任务  | 命令  |
| --- | --- | --- |
| Windows | 打开命令控制台 | c:\\\\\\> java -version |
| Linux | 打开命令终端 | \\# java -version |
| Mac | 打开终端 | $ java -version |

### Maven 下载

Maven 下载地址：http://maven.apache.org/download.cgi

![](/images/3519006f2f54430dac31b789b4491040.png)

不同平台下载对应的包：

| 系统  | 包名  |
| --- | --- |
| Windows | apache-maven-3.3.9-bin.zip |
| Linux | apache-maven-3.3.9-bin.tar.gz |
| Mac | apache-maven-3.3.9-bin.tar.gz |

下载包后解压到对应目录：

| 系统  | 存储位置 (可根据自己情况配置) |
| --- | --- |
| Windows | E:\\\\Maven\\\\apache-maven-3.3.9 |
| Linux | /usr/local/apache-maven-3.3.9 |
| Mac | /usr/local/apache-maven-3.3.9 |

### 设置 Maven 环境变量

添加环境变量 MAVEN_HOME：

| 系统  | 配置  |
| --- | --- |
| Windows | 右键 "计算机"，选择 "属性"，之后点击 "高级系统设置"，点击"环境变量"，来设置环境变量，有以下系统变量需要配置：<br><br>新建系统变量 **MAVEN_HOME**，变量值：E:\\\\Maven\\\\apache-maven-3.3.9<br><br><img width="656" height="187" src="/images/801fb71ccad840f28b5ace0f969daf0d.png"/><br><br>编辑系统变量 **Path**，添加变量值：;%MAVEN_HOME%\\\\bin<br><br><img width="656" height="187" src="/images/9293a09a9bdd4fcbae6e36f54a9cb06c.png"/><br><br>**注意：**注意多个值之间需要有分号隔开，然后点击确定。 |
| Linux | 下载解压：<br><br>\\# wget http://mirrors.hust.edu.cn/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz  \\# tar -xvf  apache-maven-3.3.9-bin.tar.gz  \\# sudo mv -f apache-maven-3.3.9 /usr/local/<br><br>编辑 **/etc/profile** 文件 sudo vim /etc/profile，在文件末尾添加如下代码：<br><br>export MAVEN_HOME=/usr/local/apache-maven-3.3.9  export PATH=${PATH}:${MAVEN_HOME}/bin<br><br>保存文件，并运行如下命令使环境变量生效：<br><br>\\# source /etc/profile<br><br>在控制台输入如下命令，如果能看到 Maven 相关版本信息，则说明 Maven 已经安装成功：<br><br>\\# mvn -v |
| Mac | 下载解压：<br><br>$ curl -O http://mirrors.hust.edu.cn/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz $ tar -xvf  apache-maven-3.3.9-bin.tar.gz<br>$ sudo mv -f apache-maven-3.3.9  /usr/local/<br><br>编辑 **/etc/profile** 文件 sudo vim /etc/profile，在文件末尾添加如下代码：<br><br>export MAVEN_HOME=/usr/local/apache-maven-3.3.9  export PATH=${PATH}:${MAVEN_HOME}/bin<br><br>保存文件，并运行如下命令使环境变量生效：<br><br>$ source /etc/profile<br><br>在控制台输入如下命令，如果能看到 Maven 相关版本信息，则说明 Maven 已经安装成功：<br><br>$ mvn -v Apache  Maven  3.3.9  (bb52d8502b132ec0a5a3f4c09453c07478323dc5;  2015-11-11T00:41:47+08:00)  Maven home:  /usr/local/apache-maven-3.3.9  Java version:  1.8.0_31, vendor:  Oracle  Corporation  Java home:  /Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home/jre Default locale: zh_CN, platform encoding: ISO8859-1 OS name:  "mac os x", version:  "10.13.4", arch:  "x86_64", family:  "mac" |
', 4, 'Maven 是一个基于 Java 的工具，所以要做的第一件事情就是安装 JDK。
如果你还未安装 JDK，可以参考我们的 Java 开发环境配置。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (68, null, 4, 'Maven教程', 3, 'Maven POM', '# Maven POM

POM( Project Object Model，项目对象模型 ) 是 Maven 工程的基本工作单元，是一个XML文件，包含了项目的基本信息，用于描述项目如何构建，声明项目依赖，等等。

执行任务或目标时，Maven 会在当前目录中查找 POM。它读取 POM，获取所需的配置信息，然后执行目标。

POM 中可以指定以下配置：

- 项目依赖
- 插件
- 执行目标
- 项目构建 profile
- 项目版本
- 项目开发者列表
- 相关邮件列表信息

在创建 POM 之前，我们首先需要描述项目组 (groupId), 项目的唯一ID。

```
<project xmlns = "http://maven.apache.org/POM/4.0.0"
    xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0
    http://maven.apache.org/xsd/maven-4.0.0.xsd">

    <!-- 模型版本 -->
    <modelVersion>4.0.0</modelVersion>
    <!-- 公司或者组织的唯一标志，并且配置时生成的路径也是由此生成， 如com.companyname.project-group，maven会将该项目打成的jar包放本地路径：/com/companyname/project-group -->
    <groupId>com.companyname.project-group</groupId>

    <!-- 项目的唯一ID，一个groupId下面可能多个项目，就是靠artifactId来区分的 -->
    <artifactId>project</artifactId>

    <!-- 版本号 -->
    <version>1.0</version>
</project>
```

所有 POM 文件都需要 project 元素和三个必需字段：groupId，artifactId，version。

| 节点  | 描述  |
| --- | --- |
| project | 工程的根标签。 |
| modelVersion | 模型版本需要设置为 4.0。 |
| groupId | 这是工程组的标识。它在一个组织或者项目中通常是唯一的。例如，一个银行组织 com.companyname.project-group 拥有所有的和银行相关的项目。 |
| artifactId | 这是工程的标识。它通常是工程的名称。例如，消费者银行。groupId 和 artifactId 一起定义了 artifact 在仓库中的位置。 |
| version | 这是工程的版本号。在 artifact 的仓库中，它用来区分不同的版本。例如：<br><br>com.company.bank:consumer-banking:1.0 com.company.bank:consumer-banking:1.1 |

* * *

## 父（Super）POM

父（Super）POM是 Maven 默认的 POM。所有的 POM 都继承自一个父 POM（无论是否显式定义了这个父 POM）。父 POM 包含了一些可以被继承的默认设置。因此，当 Maven 发现需要下载 POM 中的 依赖时，它会到 Super POM 中配置的默认仓库 http://repo1.maven.org/maven2 去下载。

Maven 使用 effective pom（Super pom 加上工程自己的配置）来执行相关的目标，它帮助开发者在 pom.xml 中做尽可能少的配置，当然这些配置可以被重写。

使用以下命令来查看 Super POM 默认配置：

`mvn help:effective-pom`

接下来我们创建目录 MVN/project，在该目录下创建 pom.xml，内容如下：

<project  xmlns = "http://maven.apache.org/POM/4.0.0"  xmlns:xsi = "http://www.w3.org/2001/XMLSchema-instance"  xsi:schemaLocation = "http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">  <modelVersion>4.0.0</modelVersion>  <groupId>com.companyname.project-group</groupId>  <artifactId>project</artifactId>  <version>1.0</version>  </project>

在命令控制台，进入 MVN/project 目录，执行以下命令：

`C:\\\\MVN\\\\project>mvn help:effective-pom`

Maven 将会开始处理并显示 effective-pom。

```
[INFO] Scanning for projects...
Downloading: https://repo.maven.apache.org/maven2/org/apache/maven/plugins/maven-clean-plugin/2.5/maven-clean-plugin-2.5.pom
...
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 01:36 min
[INFO] Finished at: 2018-09-05T11:31:28+08:00
[INFO] Final Memory: 15M/149M
[INFO] ------------------------------------------------------------------------
```

Effective POM 的结果就像在控制台中显示的一样，经过继承、插值之后，使配置生效。

```
<?xml version="1.0" encoding="UTF-8"?>
<!-- ================================================================= -->
<!--                                                                   -->
<!-- Generated by Maven Help Plugin on 2012-07-05T11:41:51             -->
<!-- See: http://maven.apache.org/plugins/maven-help-plugin/           -->
<!--                                                                   -->
<!-- ================================================================= -->

<!-- ================================================================= -->
<!--                                                                   -->
<!-- Effective POM for project                                         -->
<!-- ''com.companyname.project-group:project-name:jar:1.0''              -->
<!--                                                                   -->
<!-- ================================================================= -->

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/
2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 h
ttp://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.companyname.project-group</groupId>
  <artifactId>project</artifactId>
  <version>1.0</version>
  <build>
    <sourceDirectory>C:\\MVN\\project\\src\\main\\java</sourceDirectory>
    <scriptSourceDirectory>src/main/scripts</scriptSourceDirectory>
    <testSourceDirectory>C:\\MVN\\project\\src\\test\\java</testSourceDirectory>
    <outputDirectory>C:\\MVN\\project\\target\\classes</outputDirectory>
    <testOutputDirectory>C:\\MVN\\project\\target\\test-classes</testOutputDirectory>
    <resources>
      <resource>
        <mergeId>resource-0</mergeId>
        <directory>C:\\MVN\\project\\src\\main\\resources</directory>
      </resource>
    </resources>
    <testResources>
      <testResource>
        <mergeId>resource-1</mergeId>
        <directory>C:\\MVN\\project\\src\\test\\resources</directory>
      </testResource>
    </testResources>
    <directory>C:\\MVN\\project\\target</directory>
    <finalName>project-1.0</finalName>
    <pluginManagement>
      <plugins>
        <plugin>
          <artifactId>maven-antrun-plugin</artifactId>
          <version>1.3</version>
        </plugin>
        <plugin>
          <artifactId>maven-assembly-plugin</artifactId>
          <version>2.2-beta-2</version>
        </plugin>
        <plugin>
          <artifactId>maven-clean-plugin</artifactId>
          <version>2.2</version>
        </plugin>
        <plugin>
          <artifactId>maven-compiler-plugin</artifactId>
          <version>2.0.2</version>
        </plugin>
        <plugin>
          <artifactId>maven-dependency-plugin</artifactId>
          <version>2.0</version>
        </plugin>
        <plugin>
          <artifactId>maven-deploy-plugin</artifactId>
          <version>2.4</version>
        </plugin>
        <plugin>
          <artifactId>maven-ear-plugin</artifactId>
          <version>2.3.1</version>
        </plugin>
        <plugin>
          <artifactId>maven-ejb-plugin</artifactId>
          <version>2.1</version>
        </plugin>
        <plugin>
          <artifactId>maven-install-plugin</artifactId>
          <version>2.2</version>
        </plugin>
        <plugin>
          <artifactId>maven-jar-plugin</artifactId>
          <version>2.2</version>
        </plugin>
        <plugin>
          <artifactId>maven-javadoc-plugin</artifactId>
          <version>2.5</version>
        </plugin>
        <plugin>
          <artifactId>maven-plugin-plugin</artifactId>
          <version>2.4.3</version>
        </plugin>
        <plugin>
          <artifactId>maven-rar-plugin</artifactId>
          <version>2.2</version>
        </plugin>
        <plugin>
          <artifactId>maven-release-plugin</artifactId>
          <version>2.0-beta-8</version>
        </plugin>
        <plugin>
          <artifactId>maven-resources-plugin</artifactId>
          <version>2.3</version>
        </plugin>
        <plugin>
          <artifactId>maven-site-plugin</artifactId>
          <version>2.0-beta-7</version>
        </plugin>
        <plugin>
          <artifactId>maven-source-plugin</artifactId>
          <version>2.0.4</version>
        </plugin>
        <plugin>
          <artifactId>maven-surefire-plugin</artifactId>
          <version>2.4.3</version>
        </plugin>
        <plugin>
          <artifactId>maven-war-plugin</artifactId>
          <version>2.1-alpha-2</version>
        </plugin>
      </plugins>
    </pluginManagement>
    <plugins>
      <plugin>
        <artifactId>maven-help-plugin</artifactId>
        <version>2.1.1</version>
      </plugin>
    </plugins>
  </build>
  <repositories>
    <repository>
      <snapshots>
        <enabled>false</enabled>
      </snapshots>
      <id>central</id>
      <name>Maven Repository Switchboard</name>
      <url>http://repo1.maven.org/maven2</url>
    </repository>
  </repositories>
  <pluginRepositories>
    <pluginRepository>
      <releases>
        <updatePolicy>never</updatePolicy>
      </releases>
      <snapshots>
        <enabled>false</enabled>
      </snapshots>
      <id>central</id>
      <name>Maven Plugin Repository</name>
      <url>http://repo1.maven.org/maven2</url>
    </pluginRepository>
  </pluginRepositories>
  <reporting>
    <outputDirectory>C:\\MVN\\project\\target/site</outputDirectory>
  </reporting>
</project>
```

在上面的 pom.xml 中，你可以看到 Maven 在执行目标时需要用到的默认工程源码目录结构、输出目录、需要的插件、仓库和报表目录。

Maven 的 pom.xml 文件也不需要手工编写。

Maven 提供了大量的原型插件来创建工程，包括工程结构和 pom.xml。

* * *

## POM 标签大全详解

```
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0http://maven.apache.org/maven-v4_0_0.xsd">
    <!--父项目的坐标。如果项目中没有规定某个元素的值，那么父项目中的对应值即为项目的默认值。 坐标包括group ID，artifact ID和
        version。 -->
    <parent>
        <!--被继承的父项目的构件标识符 -->
        <artifactId />
        <!--被继承的父项目的全球唯一标识符 -->
        <groupId />
        <!--被继承的父项目的版本 -->
        <version />
        <!-- 父项目的pom.xml文件的相对路径。相对路径允许你选择一个不同的路径。默认值是../pom.xml。Maven首先在构建当前项目的地方寻找父项
            目的pom，其次在文件系统的这个位置（relativePath位置），然后在本地仓库，最后在远程仓库寻找父项目的pom。 -->
        <relativePath />
    </parent>
    <!--声明项目描述符遵循哪一个POM模型版本。模型本身的版本很少改变，虽然如此，但它仍然是必不可少的，这是为了当Maven引入了新的特性或者其他模型变更的时候，确保稳定性。 -->
    <modelVersion>4.0.0</modelVersion>
    <!--项目的全球唯一标识符，通常使用全限定的包名区分该项目和其他项目。并且构建时生成的路径也是由此生成， 如com.mycompany.app生成的相对路径为：/com/mycompany/app -->
    <groupId>asia.banseon</groupId>
    <!-- 构件的标识符，它和group ID一起唯一标识一个构件。换句话说，你不能有两个不同的项目拥有同样的artifact ID和groupID；在某个
        特定的group ID下，artifact ID也必须是唯一的。构件是项目产生的或使用的一个东西，Maven为项目产生的构件包括：JARs，源 码，二进制发布和WARs等。 -->
    <artifactId>banseon-maven2</artifactId>
    <!--项目产生的构件类型，例如jar、war、ear、pom。插件可以创建他们自己的构件类型，所以前面列的不是全部构件类型 -->
    <packaging>jar</packaging>
    <!--项目当前版本，格式为:主版本.次版本.增量版本-限定版本号 -->
    <version>1.0-SNAPSHOT</version>
    <!--项目的名称, Maven产生的文档用 -->
    <name>banseon-maven</name>
    <!--项目主页的URL, Maven产生的文档用 -->
    <url>http://www.baidu.com/banseon</url>
    <!-- 项目的详细描述, Maven 产生的文档用。 当这个元素能够用HTML格式描述时（例如，CDATA中的文本会被解析器忽略，就可以包含HTML标
        签）， 不鼓励使用纯文本描述。如果你需要修改产生的web站点的索引页面，你应该修改你自己的索引页文件，而不是调整这里的文档。 -->
    <description>A maven project to study maven.</description>
    <!--描述了这个项目构建环境中的前提条件。 -->
    <prerequisites>
        <!--构建该项目或使用该插件所需要的Maven的最低版本 -->
        <maven />
    </prerequisites>
    <!--项目的问题管理系统(Bugzilla, Jira, Scarab,或任何你喜欢的问题管理系统)的名称和URL，本例为 jira -->
    <issueManagement>
        <!--问题管理系统（例如jira）的名字， -->
        <system>jira</system>
        <!--该项目使用的问题管理系统的URL -->
        <url>http://jira.baidu.com/banseon</url>
    </issueManagement>
    <!--项目持续集成信息 -->
    <ciManagement>
        <!--持续集成系统的名字，例如continuum -->
        <system />
        <!--该项目使用的持续集成系统的URL（如果持续集成系统有web接口的话）。 -->
        <url />
        <!--构建完成时，需要通知的开发者/用户的配置项。包括被通知者信息和通知条件（错误，失败，成功，警告） -->
        <notifiers>
            <!--配置一种方式，当构建中断时，以该方式通知用户/开发者 -->
            <notifier>
                <!--传送通知的途径 -->
                <type />
                <!--发生错误时是否通知 -->
                <sendOnError />
                <!--构建失败时是否通知 -->
                <sendOnFailure />
                <!--构建成功时是否通知 -->
                <sendOnSuccess />
                <!--发生警告时是否通知 -->
                <sendOnWarning />
                <!--不赞成使用。通知发送到哪里 -->
                <address />
                <!--扩展配置项 -->
                <configuration />
            </notifier>
        </notifiers>
    </ciManagement>
    <!--项目创建年份，4位数字。当产生版权信息时需要使用这个值。 -->
    <inceptionYear />
    <!--项目相关邮件列表信息 -->
    <mailingLists>
        <!--该元素描述了项目相关的所有邮件列表。自动产生的网站引用这些信息。 -->
        <mailingList>
            <!--邮件的名称 -->
            <name>Demo</name>
            <!--发送邮件的地址或链接，如果是邮件地址，创建文档时，mailto: 链接会被自动创建 -->
            <post>banseon@126.com</post>
            <!--订阅邮件的地址或链接，如果是邮件地址，创建文档时，mailto: 链接会被自动创建 -->
            <subscribe>banseon@126.com</subscribe>
            <!--取消订阅邮件的地址或链接，如果是邮件地址，创建文档时，mailto: 链接会被自动创建 -->
            <unsubscribe>banseon@126.com</unsubscribe>
            <!--你可以浏览邮件信息的URL -->
            <archive>http:/hi.baidu.com/banseon/demo/dev/</archive>
        </mailingList>
    </mailingLists>
    <!--项目开发者列表 -->
    <developers>
        <!--某个项目开发者的信息 -->
        <developer>
            <!--SCM里项目开发者的唯一标识符 -->
            <id>HELLO WORLD</id>
            <!--项目开发者的全名 -->
            <name>banseon</name>
            <!--项目开发者的email -->
            <email>banseon@126.com</email>
            <!--项目开发者的主页的URL -->
            <url />
            <!--项目开发者在项目中扮演的角色，角色元素描述了各种角色 -->
            <roles>
                <role>Project Manager</role>
                <role>Architect</role>
            </roles>
            <!--项目开发者所属组织 -->
            <organization>demo</organization>
            <!--项目开发者所属组织的URL -->
            <organizationUrl>http://hi.baidu.com/banseon</organizationUrl>
            <!--项目开发者属性，如即时消息如何处理等 -->
            <properties>
                <dept>No</dept>
            </properties>
            <!--项目开发者所在时区， -11到12范围内的整数。 -->
            <timezone>-5</timezone>
        </developer>
    </developers>
    <!--项目的其他贡献者列表 -->
    <contributors>
        <!--项目的其他贡献者。参见developers/developer元素 -->
        <contributor>
            <name />
            <email />
            <url />
            <organization />
            <organizationUrl />
            <roles />
            <timezone />
            <properties />
        </contributor>
    </contributors>
    <!--该元素描述了项目所有License列表。 应该只列出该项目的license列表，不要列出依赖项目的 license列表。如果列出多个license，用户可以选择它们中的一个而不是接受所有license。 -->
    <licenses>
        <!--描述了项目的license，用于生成项目的web站点的license页面，其他一些报表和validation也会用到该元素。 -->
        <license>
            <!--license用于法律上的名称 -->
            <name>Apache 2</name>
            <!--官方的license正文页面的URL -->
            <url>http://www.baidu.com/banseon/LICENSE-2.0.txt</url>
            <!--项目分发的主要方式： repo，可以从Maven库下载 manual， 用户必须手动下载和安装依赖 -->
            <distribution>repo</distribution>
            <!--关于license的补充信息 -->
            <comments>A business-friendly OSS license</comments>
        </license>
    </licenses>
    <!--SCM(Source Control Management)标签允许你配置你的代码库，供Maven web站点和其它插件使用。 -->
    <scm>
        <!--SCM的URL,该URL描述了版本库和如何连接到版本库。欲知详情，请看SCMs提供的URL格式和列表。该连接只读。 -->
        <connection>
            scm:svn:http://svn.baidu.com/banseon/maven/banseon/banseon-maven2-trunk(dao-trunk)
        </connection>
        <!--给开发者使用的，类似connection元素。即该连接不仅仅只读 -->
        <developerConnection>
            scm:svn:http://svn.baidu.com/banseon/maven/banseon/dao-trunk
        </developerConnection>
        <!--当前代码的标签，在开发阶段默认为HEAD -->
        <tag />
        <!--指向项目的可浏览SCM库（例如ViewVC或者Fisheye）的URL。 -->
        <url>http://svn.baidu.com/banseon</url>
    </scm>
    <!--描述项目所属组织的各种属性。Maven产生的文档用 -->
    <organization>
        <!--组织的全名 -->
        <name>demo</name>
        <!--组织主页的URL -->
        <url>http://www.baidu.com/banseon</url>
    </organization>
    <!--构建项目需要的信息 -->
    <build>
        <!--该元素设置了项目源码目录，当构建项目的时候，构建系统会编译目录里的源码。该路径是相对于pom.xml的相对路径。 -->
        <sourceDirectory />
        <!--该元素设置了项目脚本源码目录，该目录和源码目录不同：绝大多数情况下，该目录下的内容 会被拷贝到输出目录(因为脚本是被解释的，而不是被编译的)。 -->
        <scriptSourceDirectory />
        <!--该元素设置了项目单元测试使用的源码目录，当测试项目的时候，构建系统会编译目录里的源码。该路径是相对于pom.xml的相对路径。 -->
        <testSourceDirectory />
        <!--被编译过的应用程序class文件存放的目录。 -->
        <outputDirectory />
        <!--被编译过的测试class文件存放的目录。 -->
        <testOutputDirectory />
        <!--使用来自该项目的一系列构建扩展 -->
        <extensions>
            <!--描述使用到的构建扩展。 -->
            <extension>
                <!--构建扩展的groupId -->
                <groupId />
                <!--构建扩展的artifactId -->
                <artifactId />
                <!--构建扩展的版本 -->
                <version />
            </extension>
        </extensions>
        <!--当项目没有规定目标（Maven2 叫做阶段）时的默认值 -->
        <defaultGoal />
        <!--这个元素描述了项目相关的所有资源路径列表，例如和项目相关的属性文件，这些资源被包含在最终的打包文件里。 -->
        <resources>
            <!--这个元素描述了项目相关或测试相关的所有资源路径 -->
            <resource>
                <!-- 描述了资源的目标路径。该路径相对target/classes目录（例如${project.build.outputDirectory}）。举个例
                    子，如果你想资源在特定的包里(org.apache.maven.messages)，你就必须该元素设置为org/apache/maven /messages。然而，如果你只是想把资源放到源码目录结构里，就不需要该配置。 -->
                <targetPath />
                <!--是否使用参数值代替参数名。参数值取自properties元素或者文件里配置的属性，文件在filters元素里列出。 -->
                <filtering />
                <!--描述存放资源的目录，该路径相对POM路径 -->
                <directory />
                <!--包含的模式列表，例如**/*.xml. -->
                <includes />
                <!--排除的模式列表，例如**/*.xml -->
                <excludes />
            </resource>
        </resources>
        <!--这个元素描述了单元测试相关的所有资源路径，例如和单元测试相关的属性文件。 -->
        <testResources>
            <!--这个元素描述了测试相关的所有资源路径，参见build//images/resource元素的说明 -->
            <testResource>
                <targetPath />
                <filtering />
                <directory />
                <includes />
                <excludes />
            </testResource>
        </testResources>
        <!--构建产生的所有文件存放的目录 -->
        <directory />
        <!--产生的构件的文件名，默认值是${artifactId}-${version}。 -->
        <finalName />
        <!--当filtering开关打开时，使用到的过滤器属性文件列表 -->
        <filters />
        <!--子项目可以引用的默认插件信息。该插件配置项直到被引用时才会被解析或绑定到生命周期。给定插件的任何本地配置都会覆盖这里的配置 -->
        <pluginManagement>
            <!--使用的插件列表 。 -->
            <plugins>
                <!--plugin元素包含描述插件所需要的信息。 -->
                <plugin>
                    <!--插件在仓库里的group ID -->
                    <groupId />
                    <!--插件在仓库里的artifact ID -->
                    <artifactId />
                    <!--被使用的插件的版本（或版本范围） -->
                    <version />
                    <!--是否从该插件下载Maven扩展（例如打包和类型处理器），由于性能原因，只有在真需要下载时，该元素才被设置成enabled。 -->
                    <extensions />
                    <!--在构建生命周期中执行一组目标的配置。每个目标可能有不同的配置。 -->
                    <executions>
                        <!--execution元素包含了插件执行需要的信息 -->
                        <execution>
                            <!--执行目标的标识符，用于标识构建过程中的目标，或者匹配继承过程中需要合并的执行目标 -->
                            <id />
                            <!--绑定了目标的构建生命周期阶段，如果省略，目标会被绑定到源数据里配置的默认阶段 -->
                            <phase />
                            <!--配置的执行目标 -->
                            <goals />
                            <!--配置是否被传播到子POM -->
                            <inherited />
                            <!--作为DOM对象的配置 -->
                            <configuration />
                        </execution>
                    </executions>
                    <!--项目引入插件所需要的额外依赖 -->
                    <dependencies>
                        <!--参见dependencies/dependency元素 -->
                        <dependency>
                            ......
                        </dependency>
                    </dependencies>
                    <!--任何配置是否被传播到子项目 -->
                    <inherited />
                    <!--作为DOM对象的配置 -->
                    <configuration />
                </plugin>
            </plugins>
        </pluginManagement>
        <!--使用的插件列表 -->
        <plugins>
            <!--参见build/pluginManagement/plugins/plugin元素 -->
            <plugin>
                <groupId />
                <artifactId />
                <version />
                <extensions />
                <executions>
                    <execution>
                        <id />
                        <phase />
                        <goals />
                        <inherited />
                        <configuration />
                    </execution>
                </executions>
                <dependencies>
                    <!--参见dependencies/dependency元素 -->
                    <dependency>
                        ......
                    </dependency>
                </dependencies>
                <goals />
                <inherited />
                <configuration />
            </plugin>
        </plugins>
    </build>
    <!--在列的项目构建profile，如果被激活，会修改构建处理 -->
    <profiles>
        <!--根据环境参数或命令行参数激活某个构建处理 -->
        <profile>
            <!--构建配置的唯一标识符。即用于命令行激活，也用于在继承时合并具有相同标识符的profile。 -->
            <id />
            <!--自动触发profile的条件逻辑。Activation是profile的开启钥匙。profile的力量来自于它 能够在某些特定的环境中自动使用某些特定的值；这些环境通过activation元素指定。activation元素并不是激活profile的唯一方式。 -->
            <activation>
                <!--profile默认是否激活的标志 -->
                <activeByDefault />
                <!--当匹配的jdk被检测到，profile被激活。例如，1.4激活JDK1.4，1.4.0_2，而!1.4激活所有版本不是以1.4开头的JDK。 -->
                <jdk />
                <!--当匹配的操作系统属性被检测到，profile被激活。os元素可以定义一些操作系统相关的属性。 -->
                <os>
                    <!--激活profile的操作系统的名字 -->
                    <name>Windows XP</name>
                    <!--激活profile的操作系统所属家族(如 ''windows'') -->
                    <family>Windows</family>
                    <!--激活profile的操作系统体系结构 -->
                    <arch>x86</arch>
                    <!--激活profile的操作系统版本 -->
                    <version>5.1.2600</version>
                </os>
                <!--如果Maven检测到某一个属性（其值可以在POM中通过${名称}引用），其拥有对应的名称和值，Profile就会被激活。如果值 字段是空的，那么存在属性名称字段就会激活profile，否则按区分大小写方式匹配属性值字段 -->
                <property>
                    <!--激活profile的属性的名称 -->
                    <name>mavenVersion</name>
                    <!--激活profile的属性的值 -->
                    <value>2.0.3</value>
                </property>
                <!--提供一个文件名，通过检测该文件的存在或不存在来激活profile。missing检查文件是否存在，如果不存在则激活 profile。另一方面，exists则会检查文件是否存在，如果存在则激活profile。 -->
                <file>
                    <!--如果指定的文件存在，则激活profile。 -->
                    <exists>/usr/local/hudson/hudson-home/jobs/maven-guide-zh-to-production/workspace/
                    </exists>
                    <!--如果指定的文件不存在，则激活profile。 -->
                    <missing>/usr/local/hudson/hudson-home/jobs/maven-guide-zh-to-production/workspace/
                    </missing>
                </file>
            </activation>
            <!--构建项目所需要的信息。参见build元素 -->
            <build>
                <defaultGoal />
                <resources>
                    <resource>
                        <targetPath />
                        <filtering />
                        <directory />
                        <includes />
                        <excludes />
                    </resource>
                </resources>
                <testResources>
                    <testResource>
                        <targetPath />
                        <filtering />
                        <directory />
                        <includes />
                        <excludes />
                    </testResource>
                </testResources>
                <directory />
                <finalName />
                <filters />
                <pluginManagement>
                    <plugins>
                        <!--参见build/pluginManagement/plugins/plugin元素 -->
                        <plugin>
                            <groupId />
                            <artifactId />
                            <version />
                            <extensions />
                            <executions>
                                <execution>
                                    <id />
                                    <phase />
                                    <goals />
                                    <inherited />
                                    <configuration />
                                </execution>
                            </executions>
                            <dependencies>
                                <!--参见dependencies/dependency元素 -->
                                <dependency>
                                    ......
                                </dependency>
                            </dependencies>
                            <goals />
                            <inherited />
                            <configuration />
                        </plugin>
                    </plugins>
                </pluginManagement>
                <plugins>
                    <!--参见build/pluginManagement/plugins/plugin元素 -->
                    <plugin>
                        <groupId />
                        <artifactId />
                        <version />
                        <extensions />
                        <executions>
                            <execution>
                                <id />
                                <phase />
                                <goals />
                                <inherited />
                                <configuration />
                            </execution>
                        </executions>
                        <dependencies>
                            <!--参见dependencies/dependency元素 -->
                            <dependency>
                                ......
                            </dependency>
                        </dependencies>
                        <goals />
                        <inherited />
                        <configuration />
                    </plugin>
                </plugins>
            </build>
            <!--模块（有时称作子项目） 被构建成项目的一部分。列出的每个模块元素是指向该模块的目录的相对路径 -->
            <modules />
            <!--发现依赖和扩展的远程仓库列表。 -->
            <repositories>
                <!--参见repositories/repository元素 -->
                <repository>
                    <releases>
                        <enabled />
                        <updatePolicy />
                        <checksumPolicy />
                    </releases>
                    <snapshots>
                        <enabled />
                        <updatePolicy />
                        <checksumPolicy />
                    </snapshots>
                    <id />
                    <name />
                    <url />
                    <layout />
                </repository>
            </repositories>
            <!--发现插件的远程仓库列表，这些插件用于构建和报表 -->
            <pluginRepositories>
                <!--包含需要连接到远程插件仓库的信息.参见repositories/repository元素 -->
                <pluginRepository>
                    <releases>
                        <enabled />
                        <updatePolicy />
                        <checksumPolicy />
                    </releases>
                    <snapshots>
                        <enabled />
                        <updatePolicy />
                        <checksumPolicy />
                    </snapshots>
                    <id />
                    <name />
                    <url />
                    <layout />
                </pluginRepository>
            </pluginRepositories>
            <!--该元素描述了项目相关的所有依赖。 这些依赖组成了项目构建过程中的一个个环节。它们自动从项目定义的仓库中下载。要获取更多信息，请看项目依赖机制。 -->
            <dependencies>
                <!--参见dependencies/dependency元素 -->
                <dependency>
                    ......
                </dependency>
            </dependencies>
            <!--不赞成使用. 现在Maven忽略该元素. -->
            <reports />
            <!--该元素包括使用报表插件产生报表的规范。当用户执行"mvn site"，这些报表就会运行。 在页面导航栏能看到所有报表的链接。参见reporting元素 -->
            <reporting>
                ......
            </reporting>
            <!--参见dependencyManagement元素 -->
            <dependencyManagement>
                <dependencies>
                    <!--参见dependencies/dependency元素 -->
                    <dependency>
                        ......
                    </dependency>
                </dependencies>
            </dependencyManagement>
            <!--参见distributionManagement元素 -->
            <distributionManagement>
                ......
            </distributionManagement>
            <!--参见properties元素 -->
            <properties />
        </profile>
    </profiles>
    <!--模块（有时称作子项目） 被构建成项目的一部分。列出的每个模块元素是指向该模块的目录的相对路径 -->
    <modules />
    <!--发现依赖和扩展的远程仓库列表。 -->
    <repositories>
        <!--包含需要连接到远程仓库的信息 -->
        <repository>
            <!--如何处理远程仓库里发布版本的下载 -->
            <releases>
                <!--true或者false表示该仓库是否为下载某种类型构件（发布版，快照版）开启。 -->
                <enabled />
                <!--该元素指定更新发生的频率。Maven会比较本地POM和远程POM的时间戳。这里的选项是：always（一直），daily（默认，每日），interval：X（这里X是以分钟为单位的时间间隔），或者never（从不）。 -->
                <updatePolicy />
                <!--当Maven验证构件校验文件失败时该怎么做：ignore（忽略），fail（失败），或者warn（警告）。 -->
                <checksumPolicy />
            </releases>
            <!-- 如何处理远程仓库里快照版本的下载。有了releases和snapshots这两组配置，POM就可以在每个单独的仓库中，为每种类型的构件采取不同的
                策略。例如，可能有人会决定只为开发目的开启对快照版本下载的支持。参见repositories/repository/releases元素 -->
            <snapshots>
                <enabled />
                <updatePolicy />
                <checksumPolicy />
            </snapshots>
            <!--远程仓库唯一标识符。可以用来匹配在settings.xml文件里配置的远程仓库 -->
            <id>banseon-repository-proxy</id>
            <!--远程仓库名称 -->
            <name>banseon-repository-proxy</name>
            <!--远程仓库URL，按protocol://hostname/path形式 -->
            <url>http://192.168.1.169:9999/repository/</url>
            <!-- 用于定位和排序构件的仓库布局类型-可以是default（默认）或者legacy（遗留）。Maven 2为其仓库提供了一个默认的布局；然
                而，Maven 1.x有一种不同的布局。我们可以使用该元素指定布局是default（默认）还是legacy（遗留）。 -->
            <layout>default</layout>
        </repository>
    </repositories>
    <!--发现插件的远程仓库列表，这些插件用于构建和报表 -->
    <pluginRepositories>
        <!--包含需要连接到远程插件仓库的信息.参见repositories/repository元素 -->
        <pluginRepository>
            ......
        </pluginRepository>
    </pluginRepositories>


    <!--该元素描述了项目相关的所有依赖。 这些依赖组成了项目构建过程中的一个个环节。它们自动从项目定义的仓库中下载。要获取更多信息，请看项目依赖机制。 -->
    <dependencies>
        <dependency>
            <!--依赖的group ID -->
            <groupId>org.apache.maven</groupId>
            <!--依赖的artifact ID -->
            <artifactId>maven-artifact</artifactId>
            <!--依赖的版本号。 在Maven 2里, 也可以配置成版本号的范围。 -->
            <version>3.8.1</version>
            <!-- 依赖类型，默认类型是jar。它通常表示依赖的文件的扩展名，但也有例外。一个类型可以被映射成另外一个扩展名或分类器。类型经常和使用的打包方式对应，
                尽管这也有例外。一些类型的例子：jar，war，ejb-client和test-jar。如果设置extensions为 true，就可以在 plugin里定义新的类型。所以前面的类型的例子不完整。 -->
            <type>jar</type>
            <!-- 依赖的分类器。分类器可以区分属于同一个POM，但不同构建方式的构件。分类器名被附加到文件名的版本号后面。例如，如果你想要构建两个单独的构件成
                JAR，一个使用Java 1.4编译器，另一个使用Java 6编译器，你就可以使用分类器来生成两个单独的JAR构件。 -->
            <classifier></classifier>
            <!--依赖范围。在项目发布过程中，帮助决定哪些构件被包括进来。欲知详情请参考依赖机制。 - compile ：默认范围，用于编译 - provided：类似于编译，但支持你期待jdk或者容器提供，类似于classpath
                - runtime: 在执行时需要使用 - test: 用于test任务时使用 - system: 需要外在提供相应的元素。通过systemPath来取得
                - systemPath: 仅用于范围为system。提供相应的路径 - optional: 当项目自身被依赖时，标注依赖是否传递。用于连续依赖时使用 -->
            <scope>test</scope>
            <!--仅供system范围使用。注意，不鼓励使用这个元素，并且在新的版本中该元素可能被覆盖掉。该元素为依赖规定了文件系统上的路径。需要绝对路径而不是相对路径。推荐使用属性匹配绝对路径，例如${java.home}。 -->
            <systemPath></systemPath>
            <!--当计算传递依赖时， 从依赖构件列表里，列出被排除的依赖构件集。即告诉maven你只依赖指定的项目，不依赖项目的依赖。此元素主要用于解决版本冲突问题 -->
            <exclusions>
                <exclusion>
                    <artifactId>spring-core</artifactId>
                    <groupId>org.springframework</groupId>
                </exclusion>
            </exclusions>
            <!--可选依赖，如果你在项目B中把C依赖声明为可选，你就需要在依赖于B的项目（例如项目A）中显式的引用对C的依赖。可选依赖阻断依赖的传递性。 -->
            <optional>true</optional>
        </dependency>
    </dependencies>
    <!--不赞成使用. 现在Maven忽略该元素. -->
    <reports></reports>
    <!--该元素描述使用报表插件产生报表的规范。当用户执行"mvn site"，这些报表就会运行。 在页面导航栏能看到所有报表的链接。 -->
    <reporting>
        <!--true，则，网站不包括默认的报表。这包括"项目信息"菜单中的报表。 -->
        <excludeDefaults />
        <!--所有产生的报表存放到哪里。默认值是${project.build.directory}/site。 -->
        <outputDirectory />
        <!--使用的报表插件和他们的配置。 -->
        <plugins>
            <!--plugin元素包含描述报表插件需要的信息 -->
            <plugin>
                <!--报表插件在仓库里的group ID -->
                <groupId />
                <!--报表插件在仓库里的artifact ID -->
                <artifactId />
                <!--被使用的报表插件的版本（或版本范围） -->
                <version />
                <!--任何配置是否被传播到子项目 -->
                <inherited />
                <!--报表插件的配置 -->
                <configuration />
                <!--一组报表的多重规范，每个规范可能有不同的配置。一个规范（报表集）对应一个执行目标 。例如，有1，2，3，4，5，6，7，8，9个报表。1，2，5构成A报表集，对应一个执行目标。2，5，8构成B报表集，对应另一个执行目标 -->
                <reportSets>
                    <!--表示报表的一个集合，以及产生该集合的配置 -->
                    <reportSet>
                        <!--报表集合的唯一标识符，POM继承时用到 -->
                        <id />
                        <!--产生报表集合时，被使用的报表的配置 -->
                        <configuration />
                        <!--配置是否被继承到子POMs -->
                        <inherited />
                        <!--这个集合里使用到哪些报表 -->
                        <reports />
                    </reportSet>
                </reportSets>
            </plugin>
        </plugins>
    </reporting>
    <!-- 继承自该项目的所有子项目的默认依赖信息。这部分的依赖信息不会被立即解析,而是当子项目声明一个依赖（必须描述group ID和 artifact
        ID信息），如果group ID和artifact ID以外的一些信息没有描述，则通过group ID和artifact ID 匹配到这里的依赖，并使用这里的依赖信息。 -->
    <dependencyManagement>
        <dependencies>
            <!--参见dependencies/dependency元素 -->
            <dependency>
                ......
            </dependency>
        </dependencies>
    </dependencyManagement>
    <!--项目分发信息，在执行mvn deploy后表示要发布的位置。有了这些信息就可以把网站部署到远程服务器或者把构件部署到远程仓库。 -->
    <distributionManagement>
        <!--部署项目产生的构件到远程仓库需要的信息 -->
        <repository>
            <!--是分配给快照一个唯一的版本号（由时间戳和构建流水号）？还是每次都使用相同的版本号？参见repositories/repository元素 -->
            <uniqueVersion />
            <id>banseon-maven2</id>
            <name>banseon maven2</name>
            <url>file://${basedir}/target/deploy</url>
            <layout />
        </repository>
        <!--构件的快照部署到哪里？如果没有配置该元素，默认部署到repository元素配置的仓库，参见distributionManagement/repository元素 -->
        <snapshotRepository>
            <uniqueVersion />
            <id>banseon-maven2</id>
            <name>Banseon-maven2 Snapshot Repository</name>
            <url>scp://svn.baidu.com/banseon:/usr/local/maven-snapshot</url>
            <layout />
        </snapshotRepository>
        <!--部署项目的网站需要的信息 -->
        <site>
            <!--部署位置的唯一标识符，用来匹配站点和settings.xml文件里的配置 -->
            <id>banseon-site</id>
            <!--部署位置的名称 -->
            <name>business api website</name>
            <!--部署位置的URL，按protocol://hostname/path形式 -->
            <url>
                scp://svn.baidu.com/banseon:/var/www/localhost/banseon-web
            </url>
        </site>
        <!--项目下载页面的URL。如果没有该元素，用户应该参考主页。使用该元素的原因是：帮助定位那些不在仓库里的构件（由于license限制）。 -->
        <downloadUrl />
        <!--如果构件有了新的group ID和artifact ID（构件移到了新的位置），这里列出构件的重定位信息。 -->
        <relocation>
            <!--构件新的group ID -->
            <groupId />
            <!--构件新的artifact ID -->
            <artifactId />
            <!--构件新的版本号 -->
            <version />
            <!--显示给用户的，关于移动的额外信息，例如原因。 -->
            <message />
        </relocation>
        <!-- 给出该构件在远程仓库的状态。不得在本地项目中设置该元素，因为这是工具自动更新的。有效的值有：none（默认），converted（仓库管理员从
            Maven 1 POM转换过来），partner（直接从伙伴Maven 2仓库同步过来），deployed（从Maven 2实例部 署），verified（被核实时正确的和最终的）。 -->
        <status />
    </distributionManagement>
    <!--以值替代名称，Properties可以在整个POM中使用，也可以作为触发条件（见settings.xml配置文件里activation元素的说明）。格式是<name>value</name>。 -->
    <properties />
</project>
```', 4, 'POM( Project Object Model，项目对象模型 ) 是 Maven 工程的基本工作单元，是一个XML文件，包含了项目的基本信息，用于描述项目如何构建，声明项目依赖，等等。
执行任务或目标时，Maven 会在当前目录中查找 POM。它读取 POM，获取所需的配置信息，然后执行目标。
POM 中可以指定以下配置：
项目依赖
插件
执行目标
项目构建 profile
项目版本
项目开发者列表
相关邮件列表信息
在创建 POM 之前，我们首先需要描述项目组 (groupId), 项目的唯一ID。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (69, null, 4, 'Maven教程', 4, 'Maven 构建生命周期', '# Maven 构建生命周期

Maven 构建生命周期定义了一个项目构建跟发布的过程。

一个典型的 Maven 构建（build）生命周期是由以下几个阶段的序列组成的：

<img width="835" height="283" src="/images/74bc55491a48465ea9e497973858831a.png"/>

| 阶段  | 处理  | 描述  |
| --- | --- | --- |
| 验证 validate | 验证项目 | 验证项目是否正确且所有必须信息是可用的 |
| 编译 compile | 执行编译 | 源代码编译在此阶段完成 |
| 测试 Test | 测试  | 使用适当的单元测试框架（例如JUnit）运行测试。 |
| 包装 package | 打包  | 创建JAR/WAR包如在 pom.xml 中定义提及的包 |
| 检查 verify | 检查  | 对集成测试的结果进行检查，以保证质量达标 |
| 安装 install | 安装  | 安装打包的项目到本地仓库，以供其他项目使用 |
| 部署 deploy | 部署  | 拷贝最终的工程包到远程仓库中，以共享给其他开发人员和工程 |

为了完成 default 生命周期，这些阶段（包括其他未在上面罗列的生命周期阶段）将被按顺序地执行。

Maven 有以下三个标准的生命周期：

- **clean**：项目清理的处理
- **default(或 build)**：项目部署的处理
- **site**：项目站点文档创建的处理

### 构建阶段由插件目标构成

一个插件目标代表一个特定的任务（比构建阶段更为精细），这有助于项目的构建和管理。这些目标可能被绑定到多个阶段或者无绑定。不绑定到任何构建阶段的目标可以在构建生命周期之外通过直接调用执行。这些目标的执行顺序取决于调用目标和构建阶段的顺序。

例如，考虑下面的命令：

clean 和 pakage 是构建阶段，dependency:copy-dependencies 是目标

mvn clean dependency:copy-dependencies package

这里的 clean 阶段将会被首先执行，然后 dependency:copy-dependencies 目标会被执行，最终 package 阶段被执行。

* * *

## Clean 生命周期

当我们执行 mvn post-clean 命令时，Maven 调用 clean 生命周期，它包含以下阶段：

- pre-clean：执行一些需要在clean之前完成的工作
- clean：移除所有上一次构建生成的文件
- post-clean：执行一些需要在clean之后立刻完成的工作

mvn clean 中的 clean 就是上面的 clean，在一个生命周期中，运行某个阶段的时候，它之前的所有阶段都会被运行，也就是说，如果执行 mvn clean 将运行以下两个生命周期阶段：

pre-clean, clean

如果我们运行 mvn post-clean ，则运行以下三个生命周期阶段：

pre-clean, clean, post-clean

我们可以通过在上面的 clean 生命周期的任何阶段定义目标来修改这部分的操作行为。

在下面的例子中，我们将 maven-antrun-plugin:run 目标添加到 pre-clean、clean 和 post-clean 阶段中。这样我们可以在 clean 生命周期的各个阶段显示文本信息。

我们已经在 C:\\\\MVN\\\\project 目录下创建了一个 pom.xml 文件。

<project  xmlns="http://maven.apache.org/POM/4.0.0"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">  <modelVersion>4.0.0</modelVersion>  <groupId>com.companyname.projectgroup</groupId>  <artifactId>project</artifactId>  <version>1.0</version>  <build>  <plugins>  <plugin>  <groupId>org.apache.maven.plugins</groupId>  <artifactId>maven-antrun-plugin</artifactId>  <version>1.1</version>  <executions>  <execution>  <id>id.pre-clean</id>  <phase>pre-clean</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>pre-clean phase</echo>  </tasks>  </configuration>  </execution>  <execution>  <id>id.clean</id>  <phase>clean</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>clean phase</echo>  </tasks>  </configuration>  </execution>  <execution>  <id>id.post-clean</id>  <phase>post-clean</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>post-clean phase</echo>  </tasks>  </configuration>  </execution>  </executions>  </plugin>  </plugins>  </build>  </project>

现在打开命令控制台，跳转到 pom.xml 所在目录，并执行下面的 mvn 命令。

C:\\\\MVN\\\\project>mvn post-clean

Maven 将会开始处理并显示 clean 生命周期的所有阶段。

\\[INFO\\]  Scanning  for projects...  \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\]  Building  Unnamed  - com.companyname.projectgroup:project:jar:1.0  \\[INFO\\] task-segment:  \\[post-clean\\]  \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\]  \\[antrun:run {execution: id.pre-clean}\\]  \\[INFO\\]  Executing tasks \\[echo\\] pre-clean phase \\[INFO\\]  Executed tasks \\[INFO\\]  \\[clean:clean {execution:  default-clean}\\]  \\[INFO\\]  \\[antrun:run {execution: id.clean}\\]  \\[INFO\\]  Executing tasks \\[echo\\] clean phase \\[INFO\\]  Executed tasks \\[INFO\\]  \\[antrun:run {execution: id.post-clean}\\]  \\[INFO\\]  Executing tasks \\[echo\\] post-clean phase \\[INFO\\]  Executed tasks \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\] BUILD SUCCESSFUL \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\]  Total time:  <  1 second \\[INFO\\]  Finished at:  Sat  Jul  07  13:38:59 IST 2012  \\[INFO\\]  Final  Memory:  4M/44M  \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-

你可以尝试修改 mvn clean 命令，来显示 pre-clean 和 clean，而在 post-clean 阶段不执行任何操作。

* * *

## Default (Build) 生命周期

这是 Maven 的主要生命周期，被用于构建应用，包括下面的 23 个阶段：

| 生命周期阶段 | 描述  |
| --- | --- |
| validate（校验） | 校验项目是否正确并且所有必要的信息可以完成项目的构建过程。 |
| initialize（初始化） | 初始化构建状态，比如设置属性值。 |
| generate-sources（生成源代码） | 生成包含在编译阶段中的任何源代码。 |
| process-sources（处理源代码） | 处理源代码，比如说，过滤任意值。 |
| generate-resources（生成资源文件） | 生成将会包含在项目包中的资源文件。 |
| process-resources （处理资源文件） | 复制和处理资源到目标目录，为打包阶段最好准备。 |
| compile（编译） | 编译项目的源代码。 |
| process-classes（处理类文件） | 处理编译生成的文件，比如说对Java class文件做字节码改善优化。 |
| generate-test-sources（生成测试源代码） | 生成包含在编译阶段中的任何测试源代码。 |
| process-test-sources（处理测试源代码） | 处理测试源代码，比如说，过滤任意值。 |
| generate-test-resources（生成测试资源文件） | 为测试创建资源文件。 |
| process-test-resources（处理测试资源文件） | 复制和处理测试资源到目标目录。 |
| test-compile（编译测试源码） | 编译测试源代码到测试目标目录. |
| process-test-classes（处理测试类文件） | 处理测试源码编译生成的文件。 |
| test（测试） | 使用合适的单元测试框架运行测试（Juint是其中之一）。 |
| prepare-package（准备打包） | 在实际打包之前，执行任何的必要的操作为打包做准备。 |
| package（打包） | 将编译后的代码打包成可分发格式的文件，比如JAR、WAR或者EAR文件。 |
| pre-integration-test（集成测试前） | 在执行集成测试前进行必要的动作。比如说，搭建需要的环境。 |
| integration-test（集成测试） | 处理和部署项目到可以运行集成测试环境中。 |
| post-integration-test（集成测试后） | 在执行集成测试完成后进行必要的动作。比如说，清理集成测试环境。 |
| verify （验证） | 运行任意的检查来验证项目包有效且达到质量标准。 |
| install（安装） | 安装项目包到本地仓库，这样项目包可以用作其他本地项目的依赖。 |
| deploy（部署） | 将最终的项目包复制到远程仓库中与其他开发者和项目共享。 |

有一些与 Maven 生命周期相关的重要概念需要说明：

当一个阶段通过 Maven 命令调用时，例如 mvn compile，只有该阶段之前以及包括该阶段在内的所有阶段会被执行。

不同的 maven 目标将根据打包的类型（JAR / WAR / EAR），被绑定到不同的 Maven 生命周期阶段。

在下面的例子中，我们将 maven-antrun-plugin:run 目标添加到 Build 生命周期的一部分阶段中。这样我们可以显示生命周期的文本信息。

我们已经更新了 C:\\\\MVN\\\\project 目录下的 pom.xml 文件。

<project  xmlns="http://maven.apache.org/POM/4.0.0"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">  <modelVersion>4.0.0</modelVersion>  <groupId>com.companyname.projectgroup</groupId>  <artifactId>project</artifactId>  <version>1.0</version>  <build>  <plugins>  <plugin>  <groupId>org.apache.maven.plugins</groupId>  <artifactId>maven-antrun-plugin</artifactId>  <version>1.1</version>  <executions>  <execution>  <id>id.validate</id>  <phase>validate</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>validate phase</echo>  </tasks>  </configuration>  </execution>  <execution>  <id>id.compile</id>  <phase>compile</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>compile phase</echo>  </tasks>  </configuration>  </execution>  <execution>  <id>id.test</id>  <phase>test</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>test phase</echo>  </tasks>  </configuration>  </execution>  <execution>  <id>id.package</id>  <phase>package</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>package phase</echo>  </tasks>  </configuration>  </execution>  <execution>  <id>id.deploy</id>  <phase>deploy</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>deploy phase</echo>  </tasks>  </configuration>  </execution>  </executions>  </plugin>  </plugins>  </build>  </project>

现在打开命令控制台，跳转到 pom.xml 所在目录，并执行以下 mvn 命令。

C:\\\\MVN\\\\project>mvn compile

Maven 将会开始处理并显示直到编译阶段的构建生命周期的各个阶段。

\\[INFO\\]  Scanning  for projects...  \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\]  Building  Unnamed  - com.companyname.projectgroup:project:jar:1.0  \\[INFO\\] task-segment:  \\[compile\\]  \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\]  \\[antrun:run {execution: id.validate}\\]  \\[INFO\\]  Executing tasks \\[echo\\] validate phase \\[INFO\\]  Executed tasks \\[INFO\\]  \\[resources:resources {execution:  default-resources}\\]  \\[WARNING\\]  Using platform encoding (Cp1252 actually) to copy filtered resources, i.e. build is platform dependent!  \\[INFO\\] skip non existing resourceDirectory C:\\\\MVN\\\\project\\\\src\\\\main\\\\resources \\[INFO\\]  \\[compiler:compile {execution:  default-compile}\\]  \\[INFO\\]  Nothing to compile - all classes are up to date \\[INFO\\]  \\[antrun:run {execution: id.compile}\\]  \\[INFO\\]  Executing tasks \\[echo\\] compile phase \\[INFO\\]  Executed tasks \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\] BUILD SUCCESSFUL \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\]  Total time:  2 seconds \\[INFO\\]  Finished at:  Sat  Jul  07  20:18:25 IST 2012  \\[INFO\\]  Final  Memory:  7M/64M  \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-

### 命令行调用

在开发环境中，使用下面的命令去构建、安装工程到本地仓库

mvn install

这个命令在执行 install 阶段前，按顺序执行了 default 生命周期的阶段 （validate，compile，package，等等），我们只需要调用最后一个阶段，如这里是 install。

在构建环境中，使用下面的调用来纯净地构建和部署项目到共享仓库中

mvn clean deploy

这行命令也可以用于多模块的情况下，即包含多个子项目的项目，Maven 会在每一个子项目执行 clean 命令，然后再执行 deploy 命令。

* * *

## Site 生命周期

Maven Site 插件一般用来创建新的报告文档、部署站点等。

- pre-site：执行一些需要在生成站点文档之前完成的工作
- site：生成项目的站点文档
- post-site： 执行一些需要在生成站点文档之后完成的工作，并且为部署做准备
- site-deploy：将生成的站点文档部署到特定的服务器上

这里经常用到的是site阶段和site-deploy阶段，用以生成和发布Maven站点，这可是Maven相当强大的功能，Manager比较喜欢，文档及统计数据自动生成，很好看。 在下面的例子中，我们将 maven-antrun-plugin:run 目标添加到 Site 生命周期的所有阶段中。这样我们可以显示生命周期的所有文本信息。

我们已经更新了 C:\\\\MVN\\\\project 目录下的 pom.xml 文件。

<project  xmlns="http://maven.apache.org/POM/4.0.0"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">  <modelVersion>4.0.0</modelVersion>  <groupId>com.companyname.projectgroup</groupId>  <artifactId>project</artifactId>  <version>1.0</version>  <build>  <plugins>  <plugin>  <groupId>org.apache.maven.plugins</groupId>  <artifactId>maven-antrun-plugin</artifactId>  <version>1.1</version>  <executions>  <execution>  <id>id.pre-site</id>  <phase>pre-site</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>pre-site phase</echo>  </tasks>  </configuration>  </execution>  <execution>  <id>id.site</id>  <phase>site</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>site phase</echo>  </tasks>  </configuration>  </execution>  <execution>  <id>id.post-site</id>  <phase>post-site</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>post-site phase</echo>  </tasks>  </configuration>  </execution>  <execution>  <id>id.site-deploy</id>  <phase>site-deploy</phase>  <goals>  <goal>run</goal>  </goals>  <configuration>  <tasks>  <echo>site-deploy phase</echo>  </tasks>  </configuration>  </execution>  </executions>  </plugin>  </plugins>  </build>  </project>

现在打开命令控制台，跳转到 pom.xml 所在目录，并执行以下 mvn 命令。

C:\\\\MVN\\\\project>mvn site

Maven 将会开始处理并显示直到 site 阶段的 site 生命周期的各个阶段。

\\[INFO\\]  Scanning  for projects...  \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\]  Building  Unnamed  - com.companyname.projectgroup:project:jar:1.0  \\[INFO\\] task-segment:  \\[site\\]  \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\]  \\[antrun:run {execution: id.pre-site}\\]  \\[INFO\\]  Executing tasks \\[echo\\] pre-site phase \\[INFO\\]  Executed tasks \\[INFO\\]  \\[site:site {execution:  default-site}\\]  \\[INFO\\]  Generating  "About" report.  \\[INFO\\]  Generating  "Issue Tracking" report.  \\[INFO\\]  Generating  "Project Team" report.  \\[INFO\\]  Generating  "Dependencies" report.  \\[INFO\\]  Generating  "Project Plugins" report.  \\[INFO\\]  Generating  "Continuous Integration" report.  \\[INFO\\]  Generating  "Source Repository" report.  \\[INFO\\]  Generating  "Project License" report.  \\[INFO\\]  Generating  "Mailing Lists" report.  \\[INFO\\]  Generating  "Plugin Management" report.  \\[INFO\\]  Generating  "Project Summary" report.  \\[INFO\\]  \\[antrun:run {execution: id.site}\\]  \\[INFO\\]  Executing tasks \\[echo\\] site phase \\[INFO\\]  Executed tasks \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\] BUILD SUCCESSFUL \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-  \\[INFO\\]  Total time:  3 seconds \\[INFO\\]  Finished at:  Sat  Jul  07  15:25:10 IST 2012  \\[INFO\\]  Final  Memory:  24M/149M  \\[INFO\\]  \\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-\\-```', 8, '为了完成 default 生命周期，这些阶段（包括其他未在上面罗列的生命周期阶段）将被按顺序地执行。
Maven 有以下三个标准的生命周期：
clean：项目清理的处理
default(或 build)：项目部署的处理
site：项目站点文档创建的处理
构建阶段由插件目标构成
一个插件目标代表一个特定的任务（比构建阶段更为精细），这有助于项目的构建和管理。这些目标可能被绑定到多个阶段或者无绑定。不绑定到任何构建阶段的目标可以在构建生命周期之外通过直接调用执行。这些目标的执行顺序取决于调用目标和构建阶段的顺序。
例如，考虑下面的命令：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (70, null, 4, 'Maven教程', 5, 'Maven 构建配置文件', '# Maven 构建配置文件

构建配置文件是一系列的配置项的值，可以用来设置或者覆盖 Maven 构建默认值。

使用构建配置文件，你可以为不同的环境，比如说生产环境（Production）和开发（Development）环境，定制构建方式。

配置文件在 pom.xml 文件中使用 activeProfiles 或者 profiles 元素指定，并且可以通过各种方式触发。配置文件在构建时修改 POM，并且用来给参数设定不同的目标环境（比如说，开发（Development）、测试（Testing）和生产环境（Production）中数据库服务器的地址）。

* * *

## 构建配置文件的类型

构建配置文件大体上有三种类型:

| 类型  | 在哪定义 |
| --- | --- |
| 项目级（Per Project） | 定义在项目的POM文件pom.xml中 |
| 用户级 （Per User） | 定义在Maven的设置xml文件中 (%USER_HOME%/.m2/settings.xml) |
| 全局（Global） | 定义在 Maven 全局的设置 xml 文件中 (%M2_HOME%/conf/settings.xml) |

* * *

## 配置文件激活

Maven的构建配置文件可以通过多种方式激活。

- 使用命令控制台输入显式激活。
- 通过 maven 设置。
- 基于环境变量（用户或者系统变量）。
- 操作系统设置（比如说，Windows系列）。
- 文件的存在或者缺失。

### 配置文件激活实例

假定项目结构如下：

![](/images/832c44b89dcf49f6a49487883492f076.jpg)

其中在src/main/resources文件夹下有三个用于测试文件：

| 文件名 | 描述  |
| --- | --- |
| env.properties | 如果未指定配置文件时默认使用的配置。 |
| env.test.properties | 当测试配置文件使用时的测试配置。 |
| env.prod.properties | 当生产配置文件使用时的生产配置。 |

**注意**：这三个配置文件并不是代表构建配置文件的功能，而是用于本次测试的目的；比如，我指定了构建配置文件为 prod 时，项目就使用 env.prod.properties文件。

**注意**：下面的例子仍然是使用 AntRun 插件，因为此插件能绑定 Maven 生命周期阶段，并通过 Ant 的标签不用编写一点代码即可输出信息、复制文件等，经此而已。其余的与本次构建配置文件无关。

### 1、配置文件激活

profile 可以让我们定义一系列的配置信息，然后指定其激活条件。这样我们就可以定义多个 profile，然后每个 profile 对应不同的激活条件和配置信息，从而达到不同环境使用不同配置信息的效果。

以下实例，我们将 maven-antrun-plugin:run 目标添加到测试阶段中。这样我们可以在不同的 profile 中输出文本信息。我们将使用 pom.xml 来定义不同的 profile，并在命令控制台中使用 maven 命令激活 profile。

pom.xml 文件如下：

```
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.jsoft.test</groupId>
  <artifactId>testproject</artifactId>
  <packaging>jar</packaging>
  <version>0.1-SNAPSHOT</version>
  <name>testproject</name>
  <url>http://maven.apache.org</url>
  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
  </dependencies>
  <profiles>
      <profile>
          <id>test</id>
          <build>
              <plugins>
                 <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-antrun-plugin</artifactId>
                    <version>1.8</version>
                    <executions>
                       <execution>
                          <phase>test</phase>
                          <goals>
                             <goal>run</goal>
                          </goals>
                          <configuration>
                          <tasks>
                             <echo>Using env.test.properties</echo>
                             <copy file="src/main//images/env.test.properties" tofile="${project.build.outputDirectory}/env.properties" overwrite="true"/>
                          </tasks>
                          </configuration>
                       </execution>
                    </executions>
                 </plugin>
              </plugins>
          </build>
      </profile>
      <profile>
          <id>normal</id>
          <build>
              <plugins>
                 <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-antrun-plugin</artifactId>
                    <version>1.8</version>
                    <executions>
                       <execution>
                          <phase>test</phase>
                          <goals>
                             <goal>run</goal>
                          </goals>
                          <configuration>
                          <tasks>
                             <echo>Using env.properties</echo>
                             <copy file="src/main//images/env.properties" tofile="${project.build.outputDirectory}/env.properties" overwrite="true"/>
                          </tasks>
                          </configuration>
                       </execution>
                    </executions>
                 </plugin>
              </plugins>
          </build>
      </profile>
      <profile>
          <id>prod</id>
          <build>
              <plugins>
                 <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-antrun-plugin</artifactId>
                    <version>1.8</version>
                    <executions>
                       <execution>
                          <phase>test</phase>
                          <goals>
                             <goal>run</goal>
                          </goals>
                          <configuration>
                          <tasks>
                             <echo>Using env.prod.properties</echo>
                             <copy file="src/main//images/env.prod.properties" tofile="${project.build.outputDirectory}/env.properties" overwrite="true"/>
                          </tasks>
                          </configuration>
                       </execution>
                    </executions>
                 </plugin>
              </plugins>
          </build>
      </profile>
   </profiles>
</project>
```

**注意：构建配置文件**采用的是 **&lt;profiles&gt;** 节点。

**说明**：上面新建了三个 **&lt;profiles&gt;**，其中 **&lt;id&gt;** 区分了不同的 **&lt;profiles&gt;** 执行不同的 AntRun 任务；而 AntRun 的任务可以这么理解，AntRun 监听 test 的 Maven 生命周期阶段，当 Maven 执行 test 时，就除了发 AntRun 的任务，任务里面为输出文本并复制文件到指定的位置；而至于要执行哪个 AntRun 任务，此时**构建配置文件**起到了传输指定的作用，比如，通过命令行参数输入指定的 **&lt;id&gt;**。

执行命令：

`mvn test -Ptest`

提示：第一个 test 为 Maven 生命周期阶段，第 2 个 test 为**构建配置文件**指定的 &lt;id&gt; 参数，这个参数通过 -P 来传输，当然，它可以是 prod 或者 normal 这些由你定义的 **&lt;id&gt;**。

运行的结果如下：

<img width="835" height="613" src="/images/15eab4b86dd941339a58ce81ebffe00f.png"/>

可以看出成功的触发了AntRun的任务。并且是对应**构建配置文件**下的 &lt;id&gt; 为 test 的任务。

再测试其余两个命令，结果如下：

<img width="835" height="638" src="/images/b8c1b03e0ba7467d8db4043112216cd9.png"/>

<img width="835" height="655" src="/images/8dc4986c632346a8abd52196a36e3d6d.png"/>

### 2、通过Maven设置激活配置文件

打开 **%USER_HOME%/.m2** 目录下的 **settings.xml** 文件，其中 **%USER_HOME%** 代表用户主目录。如果 setting.xml 文件不存在就直接拷贝 **%M2_HOME%/conf/settings.xml** 到 .m2 目录，其中 **%M2_HOME%** 代表 Maven 的安装目录。

配置 setting.xml 文件，增加 `<activeProfiles>属性：`

```
<settings xmlns="http://maven.apache.org/POM/4.0.0"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/settings-1.0.0.xsd">
   ...
   <activeProfiles>
      <activeProfile>test</activeProfile>
   </activeProfiles>
</settings>
```

执行命令：

`mvn test`

**提示 1**：此时不需要使用 -Ptest 来输入参数了，上面的 setting.xml 文件的 &lt;activeprofile&gt; 已经指定了 test 参数代替了。

**提示 2**：同样可以使用在 **%M2_HOME%/conf/settings.xml** 的文件进行配置，效果一致。

执行结果：

<img width="835" height="655" src="/images/6e89aaccc6cf46d8a223671e1f375551.png"/>

### 3、通过环境变量激活配置文件

先把上一步测试的 setting.xml 值全部去掉。

然后在 pom.xml 里面的 &lt;id&gt; 为 test 的 &lt;profile&gt; 节点，加入 &lt;activation&gt; 节点：

```
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.jsoft.test</groupId>
  <artifactId>testproject</artifactId>
  <packaging>jar</packaging>
  <version>0.1-SNAPSHOT</version>
  <name>testproject</name>
  <url>http://maven.apache.org</url>
  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
  </dependencies>
  <profiles>
      <profile>
          <id>test</id>
          <activation>
            <property>
               <name>env</name>
               <value>test</value>
            </property>
          </activation>
          <build>
              <plugins>
                 <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-antrun-plugin</artifactId>
                    <version>1.8</version>
                    <executions>
                       <execution>
                          <phase>test</phase>
                          <goals>
                             <goal>run</goal>
                          </goals>
                          <configuration>
                          <tasks>
                             <echo>Using env.test.properties</echo>
                             <copy file="src/main//images/env.test.properties" tofile="${project.build.outputDirectory}/env.properties" overwrite="true"/>
                          </tasks>
                          </configuration>
                       </execution>
                    </executions>
                 </plugin>
              </plugins>
          </build>
      </profile>
      <profile>
          <id>normal</id>
          <build>
              <plugins>
                 <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-antrun-plugin</artifactId>
                    <version>1.8</version>
                    <executions>
                       <execution>
                          <phase>test</phase>
                          <goals>
                             <goal>run</goal>
                          </goals>
                          <configuration>
                          <tasks>
                             <echo>Using env.properties</echo>
                             <copy file="src/main//images/env.properties" tofile="${project.build.outputDirectory}/env.properties" overwrite="true"/>
                          </tasks>
                          </configuration>
                       </execution>
                    </executions>
                 </plugin>
              </plugins>
          </build>
      </profile>
      <profile>
          <id>prod</id>
          <build>
              <plugins>
                 <plugin>
                    <groupId>org.apache.maven.plugins</groupId>
                    <artifactId>maven-antrun-plugin</artifactId>
                    <version>1.8</version>
                    <executions>
                       <execution>
                          <phase>test</phase>
                          <goals>
                             <goal>run</goal>
                          </goals>
                          <configuration>
                          <tasks>
                             <echo>Using env.prod.properties</echo>
                             <copy file="src/main//images/env.prod.properties" tofile="${project.build.outputDirectory}/env.properties" overwrite="true"/>
                          </tasks>
                          </configuration>
                       </execution>
                    </executions>
                 </plugin>
              </plugins>
          </build>
      </profile>
   </profiles>
</project>
```

执行命令：

`mvn test -Denv=test`

**提示 1**：上面使用 -D 传递环境变量，其中 evn 对应刚才设置的 &lt;name&gt; 值，test 对应&lt;value&gt;。

**提示 2**：在 Windows 10 上测试了系统的环境变量，但是不生效，所以，只能通过 -D 传递。

执行结果：

<img width="835" height="647" src="/images/0717acd5704e495c9ff0712f97fb151a.png"/>

### 4、通过操作系统激活配置文件

activation 元素包含下面的操作系统信息。当系统为 windows XP 时，test Profile 将会被触发。

```
<profile>
   <id>test</id>
   <activation>
      <os>
         <name>Windows XP</name>
         <family>Windows</family>
         <arch>x86</arch>
         <version>5.1.2600</version>
      </os>
   </activation>
</profile>
```

现在打开命令控制台，跳转到 pom.xml 所在目录，并执行下面的 mvn 命令。不要使用 -P 选项指定 Profile 的名称。Maven 将显示被激活的 test Profile 的结果。

`mvn test`

### 5、通过文件的存在或者缺失激活配置文件

现在使用 activation 元素包含下面的操作系统信息。当 target/generated-sources/axistools/wsdl2java/com/companyname/group 缺失时，test Profile 将会被触发。

```
<profile>
   <id>test</id>
   <activation>
      <file>
         <missing>target/generated-sources/axistools/wsdl2java/
         com/companyname/group</missing>
      </file>
   </activation>
</profile>
```

现在打开命令控制台，跳转到 pom.xml 所在目录，并执行下面的 mvn 命令。不要使用 -P 选项指定 Profile 的名称。Maven 将显示被激活的 test Profile 的结果。

`mvn test`

* * *

> 参考：https://www.cnblogs.com/EasonJim/p/6828743.html', 8, '构建配置文件是一系列的配置项的值，可以用来设置或者覆盖 Maven 构建默认值。
使用构建配置文件，你可以为不同的环境，比如说生产环境（Production）和开发（Development）环境，定制构建方式。
配置文件在 pom.xml 文件中使用 activeProfiles 或者 profiles 元素指定，并且可以通过各种方式触发。配置文件在构建时修改 POM，并且用来给参数设定不同的目标环境（比如说，开发（Development）、测试（Testing）和生产环境（Production）中数据库服务器的地址）。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (71, null, 4, 'Maven教程', 6, 'Maven 仓库', '# Maven 仓库

在 Maven 的术语中，仓库是一个位置（place）。

Maven 仓库是项目中依赖的第三方库，这个库所在的位置叫做仓库。

在 Maven 中，任何一个依赖、插件或者项目构建的输出，都可以称之为构件。

Maven 仓库能帮助我们管理构件（主要是JAR），它就是放置所有JAR文件（WAR，ZIP，POM等等）的地方。

Maven 仓库有三种类型：

- 本地（local）
- 中央（central）
- 远程（remote）

* * *

## 本地仓库

Maven 的本地仓库，在安装 Maven 后并不会创建，它是在第一次执行 maven 命令的时候才被创建。

运行 Maven 的时候，Maven 所需要的任何构件都是直接从本地仓库获取的。如果本地仓库没有，它会首先尝试从远程仓库下载构件至本地仓库，然后再使用本地仓库的构件。

默认情况下，不管Linux还是 Windows，每个用户在自己的用户目录下都有一个路径名为 .m2/respository/ 的仓库目录。

Maven 本地仓库默认被创建在 %USER\\_HOME% 目录下。要修改默认位置，在 %M2\\_HOME%\\\\conf 目录中的 Maven 的 settings.xml 文件中定义另一个路径。

```
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
   http://maven.apache.org/xsd/settings-1.0.0.xsd">
      <localRepository>C:/MyLocalRepository</localRepository>
</settings>
```

当你运行 Maven 命令，Maven 将下载依赖的文件到你指定的路径中。

* * *

## 中央仓库

Maven 中央仓库是由 Maven 社区提供的仓库，其中包含了大量常用的库。

中央仓库包含了绝大多数流行的开源Java构件，以及源码、作者信息、SCM、信息、许可证信息等。一般来说，简单的Java项目依赖的构件都可以在这里下载到。

中央仓库的关键概念：

- 这个仓库由 Maven 社区管理。
- 不需要配置。
- 需要通过网络才能访问。

要浏览中央仓库的内容，maven 社区提供了一个 URL：http://search.maven.org/#browse。使用这个仓库，开发人员可以搜索所有可以获取的代码库。

* * *

## 远程仓库

如果 Maven 在中央仓库中也找不到依赖的文件，它会停止构建过程并输出错误信息到控制台。为避免这种情况，Maven 提供了远程仓库的概念，它是开发人员自己定制仓库，包含了所需要的代码库或者其他工程中用到的 jar 文件。

举例说明，使用下面的 pom.xml，Maven 将从远程仓库中下载该 pom.xml 中声明的所依赖的（在中央仓库中获取不到的）文件。

```
<project xmlns="http://maven.apache.org/POM/4.0.0"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.companyname.projectgroup</groupId>
   <artifactId>project</artifactId>
   <version>1.0</version>
   <dependencies>
      <dependency>
         <groupId>com.companyname.common-lib</groupId>
         <artifactId>common-lib</artifactId>
         <version>1.0.0</version>
      </dependency>
   <dependencies>
   <repositories>
      <repository>
         <id>companyname.lib1</id>
         <url>http://download.companyname.org/maven2/lib1</url>
      </repository>
      <repository>
         <id>companyname.lib2</id>
         <url>http://download.companyname.org/maven2/lib2</url>
      </repository>
   </repositories>
</project>
```

* * *

## Maven 依赖搜索顺序

当我们执行 Maven 构建命令时，Maven 开始按照以下顺序查找依赖的库：

- **步骤 1** － 在本地仓库中搜索，如果找不到，执行步骤 2，如果找到了则执行其他操作。
- **步骤 2** － 在中央仓库中搜索，如果找不到，并且有一个或多个远程仓库已经设置，则执行步骤 4，如果找到了则下载到本地仓库中以备将来引用。
- **步骤 3** － 如果远程仓库没有被设置，Maven 将简单的停滞处理并抛出错误（无法找到依赖的文件）。
- **步骤 4** － 在一个或多个远程仓库中搜索依赖的文件，如果找到则下载到本地仓库以备将来引用，否则 Maven 将停止处理并抛出错误（无法找到依赖的文件）。

## Maven 阿里云(Aliyun)仓库

Maven 仓库默认在国外， 国内使用难免很慢，我们可以更换为阿里云的仓库。

修改 maven 根目录下的 conf 文件夹中的 settings.xml 文件，在 mirrors 节点上，添加内容如下：

```
<mirrors>
    <mirror>
      <id>alimaven</id>
      <name>aliyun maven</name>
      <url>http://maven.aliyun.com/nexus/content/groups/public/</url>
      <mirrorOf>central</mirrorOf>        
    </mirror>
</mirrors>
```

![](/images/97d89f4b3fb640339cadaa329e6bcc73.png)

第二步: pom.xml文件里添加：

```
<repositories>  
        <repository>  
            <id>alimaven</id>  
            <name>aliyun maven</name>  
            <url>http://maven.aliyun.com/nexus/content/groups/public/</url>  
            <releases>  
                <enabled>true</enabled>  
            </releases>  
            <snapshots>  
                <enabled>false</enabled>  
            </snapshots>  
        </repository>  
</repositories>
```', 130, '在 Maven 的术语中，仓库是一个位置（place）。
Maven 仓库是项目中依赖的第三方库，这个库所在的位置叫做仓库。
在 Maven 中，任何一个依赖、插件或者项目构建的输出，都可以称之为构件。
Maven 仓库能帮助我们管理构件（主要是JAR），它就是放置所有JAR文件（WAR，ZIP，POM等等）的地方。
Maven 仓库有三种类型：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (72, null, 4, 'Maven教程', 7, 'Maven 插件', '# Maven 插件

Maven 有以下三个标准的生命周期：

- **clean**：项目清理的处理
- **default(或 build)**：项目部署的处理
- **site**：项目站点文档创建的处理

每个生命周期中都包含着一系列的阶段(phase)。这些 phase 就相当于 Maven 提供的统一的接口，然后这些 phase 的实现由 Maven 的插件来完成。

我们在输入 mvn 命令的时候 比如 mvn clean，clean 对应的就是 Clean 生命周期中的 clean 阶段。但是 clean 的具体操作是由 **maven-clean-plugin** 来实现的。

所以说 Maven 生命周期的每一个阶段的具体实现都是由 Maven 插件实现的。

Maven 实际上是一个依赖插件执行的框架，每个任务实际上是由插件完成。Maven 插件通常被用来：

- 创建 jar 文件
- 创建 war 文件
- 编译代码文件
- 代码单元测试
- 创建工程文档
- 创建工程报告

插件通常提供了一个目标的集合，并且可以使用下面的语法执行：

`<code>mvn [plugin-name]:[goal-name]</code>`

例如，一个 Java 工程可以使用 maven-compiler-plugin 的 compile-goal 编译，使用以下命令：

`<code>mvn compiler:compile</code>`

## 插件类型

Maven 提供了下面两种类型的插件：

| 类型  | 描述  |
| --- | --- |
| Build plugins | 在构建时执行，并在 pom.xml 的 元素中配置。 |
| Reporting plugins | 在网站生成过程中执行，并在 pom.xml 的 元素中配置。 |

下面是一些常用插件的列表：

| 插件  | 描述  |
| --- | --- |
| clean | 构建之后清理目标文件。删除目标目录。 |
| compiler | 编译 Java 源文件。 |
| surefile | 运行 JUnit 单元测试。创建测试报告。 |
| jar | 从当前工程中构建 JAR 文件。 |
| war | 从当前工程中构建 WAR 文件。 |
| javadoc | 为工程生成 Javadoc。 |
| antrun | 从构建过程的任意一个阶段中运行一个 ant 任务的集合。 |

### 实例

我们已经在我们的例子中大量使用了 **maven-antrun-plugin** 来输出数据到控制台上。请查看 [**Maven - 构建配置文件**](https://www.runoob.com/maven/maven-build-profiles.html) 章节。让我们用一种更好的方式理解这部分内容，在 C:\\\\MVN\\\\project 目录下创建一个 pom.xml 文件。

```
<project xmlns="http://maven.apache.org/POM/4.0.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
    http://maven.apache.org/xsd/maven-4.0.0.xsd">
<modelVersion>4.0.0</modelVersion>
<groupId>com.companyname.projectgroup</groupId>
<artifactId>project</artifactId>
<version>1.0</version>
<build>
<plugins>
   <plugin>
   <groupId>org.apache.maven.plugins</groupId>
   <artifactId>maven-antrun-plugin</artifactId>
   <version>1.1</version>
   <executions>
      <execution>
         <id>id.clean</id>
         <phase>clean</phase>
         <goals>
            <goal>run</goal>
         </goals>
         <configuration>
            <tasks>
               <echo>clean phase</echo>
            </tasks>
         </configuration>
      </execution>     
   </executions>
   </plugin>
</plugins>
</build>
</project>
```

接下来，打开命令终端跳转到 pom.xml 所在的目录，并执行下面的 mvn 命令。

`mvn clean`

Maven 将开始处理并显示 clean 生命周期的 clean 阶段。

```
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------
[INFO] Building Unnamed - com.companyname.projectgroup:project:jar:1.0
[INFO]    task-segment: [post-clean]
[INFO] ------------------------------------------------------------------
[INFO] [clean:clean {execution: default-clean}]
[INFO] [antrun:run {execution: id.clean}]
[INFO] Executing tasks
     [echo] clean phase
[INFO] Executed tasks
[INFO] ------------------------------------------------------------------
[INFO] BUILD SUCCESSFUL
[INFO] ------------------------------------------------------------------
[INFO] Total time: < 1 second
[INFO] Finished at: Sat Jul 07 13:38:59 IST 2012
[INFO] Final Memory: 4M/44M
[INFO] ------------------------------------------------------------------
```

上面的例子展示了以下关键概念：

- 插件是在 pom.xml 中使用 plugins 元素定义的。
- 每个插件可以有多个目标。
- 你可以定义阶段，插件会使用它的 phase 元素开始处理。我们已经使用了 **clean** 阶段。
- 你可以通过绑定到插件的目标的方式来配置要执行的任务。我们已经绑定了 **echo** 任务到 maven-antrun-plugin 的 **run** 目标。
- 就是这样，Maven 将处理剩下的事情。它将下载本地仓库中获取不到的插件，并开始处理。', 8, '每个生命周期中都包含着一系列的阶段(phase)。这些 phase 就相当于 Maven 提供的统一的接口，然后这些 phase 的实现由 Maven 的插件来完成。
我们在输入 mvn 命令的时候 比如 mvn clean，clean 对应的就是 Clean 生命周期中的 clean 阶段。但是 clean 的具体操作是由 maven-clean-plugin 来实现的。
所以说 Maven 生命周期的每一个阶段的具体实现都是由 Maven 插件实现的。
Maven 实际上是一个依赖插件执行的框架，每个任务实际上是由插件完成。Maven 插件通常被用来：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (73, null, 4, 'Maven教程', 8, 'Maven 构建 Java 项目', '# Maven 构建 Java 项目

Maven 使用原型 **archetype** 插件创建项目。要创建一个简单的 Java 应用，我们将使用 **maven-archetype-quickstart** 插件。

在下面的例子中，我们将在 C:\\\\MVN 文件夹下创建一个基于 maven 的 java 应用项目。

命令格式如下：

```
mvn archetype:generate "-DgroupId=com.companyname.bank" "-DartifactId=consumerBanking" "-DarchetypeArtifactId=maven-archetype-quickstart" "-DinteractiveMode=false"
```

参数说明：

- **-DgroupId**: 组织名，公司网址的反写 \\+ 项目名称
- **-DartifactId**: 项目名-模块名
- **-DarchetypeArtifactId**: 指定 ArchetypeId，maven-archetype-quickstart，创建一个简单的 Java 应用
- **-DinteractiveMode**: 是否使用交互模式

生成的文件夹结构如下：

![](/images/113c7d62c3f441608c4e95571ded9c59.jpg)

各个文件夹说明：

| 文件夹结构 | 描述  |
| --- | --- |
| consumerBanking | 包含 src 文件夹和 pom.xml |
| src/main/java contains | java 代码文件在包结构下（com/companyName/bank）。 |
| src/main/test contains | 测试代码文件在包结构下（com/companyName/bank）。 |
| src/main/resources | 包含了 图片 / 属性 文件（在上面的例子中，我们需要手动创建这个结构）。 |

在 **C:\\\\MVN\\\\consumerBanking\\\\src\\\\main\\\\java\\\\com\\\\companyname\\\\bank** 文件夹中，可以看到一个 App.java，代码如下：

## App.java

```
package com.companyname.bank;

/**
 * Hello world!
 *
 */
public class App
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
    }
}
```

打开 **C:\\\\MVN\\\\consumerBanking\\\\src\\\\test\\\\java\\\\com\\\\companyname\\\\bank** 文件夹，可以看到 Java 测试文件 AppTest.java。

## AppTest.java

```
package com.companyname.bank;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

/**
 * Unit test for simple App.
 */
public class AppTest extends TestCase
{
    /**
     * Create the test case
     *
     * @param testName name of the test case
     */
    public AppTest( String testName )
    {
        super( testName );
    }

    /**
     * @return the suite of tests being tested
     */
    public static Test suite()
    {
        return new TestSuite( AppTest.class );
    }

    /**
     * Rigourous Test :-)
     */
    public void testApp()
    {
        assertTrue( true );
    }
}
```

接下来的开发过程中我们只需要按照上面表格中提到的结构放置好，其他的事情 Maven 帮我们将会搞定。', 192, 'Maven 使用原型 archetype 插件创建项目。要创建一个简单的 Java 应用，我们将使用 maven-archetype-quickstart 插件。
在下面的例子中，我们将在 C:\\MVN 文件夹下创建一个基于 maven 的 java 应用项目。
命令格式如下：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (74, null, 4, 'Maven教程', 9, 'Maven 构建 & 项目测试', '# Maven 构建 & 项目测试

在上一章节中我们学会了如何使用 Maven 创建 Java 应用。接下来我们要学习如何构建和测试这个项目。

进入 C:/MVN 文件夹下，打开 consumerBanking 文件夹。你将看到有一个 pom.xml 文件，代码如下：

```
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.companyname.bank</groupId>
  <artifactId>consumerBanking</artifactId>
  <packaging>jar</packaging>
  <version>1.0-SNAPSHOT</version>
  <name>consumerBanking</name>
  <url>http://maven.apache.org</url>
  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>3.8.1</version>
      <scope>test</scope>
    </dependency>
  </dependencies>
</project>
```

从以上 xml代码中，可知 Maven 已经添加了 JUnit 作为测试框架。

默认情况下 Maven 添加了一个源码文件 **C:\\\\MVN\\\\consumerBanking\\\\src\\\\main\\\\java\\\\com\\\\companyname\\\\bank\\\\App.java** 和一个测试文件 **C:\\\\MVN\\\\consumerBanking\\\\src\\\\test\\\\java\\\\com\\\\companyname\\\\bank\\\\AppTest.java**。

打开命令控制台，跳转到 C:\\\\MVN\\\\consumerBanking 目录下，并执行以下 mvn 命令开始构建项目：

```
C:\\MVN\\consumerBanking>mvn clean package
[INFO] Scanning for projects...
[INFO] -------------------------------------------------------------------
[INFO] Building consumerBanking
[INFO]    task-segment: [clean, package]
[INFO] -------------------------------------------------------------------
[INFO] [clean:clean {execution: default-clean}]
[INFO] Deleting directory C:\\MVN\\consumerBanking\\target
...
...
...
[INFO] [jar:jar {execution: default-jar}]
[INFO] Building jar: C:\\MVN\\consumerBanking\\target\\
consumerBanking-1.0-SNAPSHOT.jar
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESSFUL
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 2 seconds
[INFO] Finished at: Tue Jul 10 16:52:18 IST 2012
[INFO] Final Memory: 16M/89M
[INFO] ------------------------------------------------------------------------
```

执行完后，我们已经构建了自己的项目并创建了最终的 jar 文件，下面是要学习的关键概念：

- 我们给了 maven 两个目标，首先清理目标目录（clean），然后打包项目构建的输出为 jar（package）文件。
- 打包好的 jar 文件可以在 consumerBanking\\\\target 中获得，名称为 consumerBanking-1.0-SNAPSHOT.jar。
- 测试报告存放在 consumerBanking\\\\target\\\\surefire-reports 文件夹中。
- Maven 编译源码文件，以及测试源码文件。
- 接着 Maven 运行测试用例。
- 最后 Maven 创建项目包。

`C:\\\\MVN\\\\consumerBanking\\\\target\\\\classes>java com.companyname.bank.App`

你可以看到结果：

`Hello  World!`

添加 Java 源文件

接下来我们看看如何添加其他的 Java 文件到项目中。打开 C:\\\\MVN\\\\consumerBanking\\\\src\\\\main\\\\java\\\\com\\\\companyname\\\\bank 文件夹，在其中创建 Util 类 Util.java。

## Util.java

```
package com.companyname.bank;
 
public class Util 
{
   public static void printMessage(String message){
       System.out.println(message);
   }
}
```

更新 App 类来使用 Util 类:

## App.java

```
package com.companyname.bank;
 
/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        Util.printMessage("Hello World!");
    }
}
```

现在打开命令控制台，跳转到 C:\\\\MVN\\\\consumerBanking 目录下，并执行下面的 mvn 命令。

`C:\\\\MVN\\\\consumerBanking>mvn clean compile`

在 Maven 构建成功之后，跳转到 C:\\\\MVN\\\\consumerBanking\\\\target\\\\classes 目录下，并执行下面的 java 命令。

`C:\\\\MVN\\\\consumerBanking\\\\target\\\\classes>java -cp . com.companyname.bank.App`

你可以看到结果：

`Hello  World!`', 198, '在上一章节中我们学会了如何使用 Maven 创建 Java 应用。接下来我们要学习如何构建和测试这个项目。
进入 C:/MVN 文件夹下，打开 consumerBanking 文件夹。你将看到有一个 pom.xml 文件，代码如下：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (75, null, 4, 'Maven教程', 10, 'Maven 引入外部依赖', '# Maven 引入外部依赖

**如果我们需要引入第三库文件到项目，该怎么操作呢？**

pom.xml 的 dependencies 列表列出了我们的项目需要构建的所有外部依赖项。

要添加依赖项，我们一般是先在 src 文件夹下添加 lib 文件夹，然后将你工程需要的 jar 文件复制到 lib 文件夹下。我们使用的是 ldapjdk.jar ，它是为 LDAP 操作的一个帮助库：

![](/images/c5d3b355324647af8d4db9faca950f44.jpg)

然后添加以下依赖到 pom.xml 文件中：

```
<dependencies>
    <!-- 在这里添加你的依赖 -->
    <dependency>
        <groupId>ldapjdk</groupId>  <!-- 库名称，也可以自定义 -->
        <artifactId>ldapjdk</artifactId>    <!--库名称，也可以自定义-->
        <version>1.0</version> <!--版本号-->
        <scope>system</scope> <!--作用域-->
        <systemPath>${basedir}\\src\\lib\\ldapjdk.jar</systemPath> <!--项目根目录下的lib文件夹下-->
    </dependency>
</dependencies>
```

pom.xml 文件完整代码如下：

```
<project xmlns="http://maven.apache.org/POM/4.0.0"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/maven-v4_0_0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>com.companyname.bank</groupId>
   <artifactId>consumerBanking</artifactId>
   <packaging>jar</packaging>
   <version>1.0-SNAPSHOT</version>
   <name>consumerBanking</name>
   <url>http://maven.apache.org</url>

   <dependencies>
      <dependency>
         <groupId>junit</groupId>
         <artifactId>junit</artifactId>
         <version>3.8.1</version>
         <scope>test</scope>
      </dependency>

      <dependency>
         <groupId>ldapjdk</groupId>
         <artifactId>ldapjdk</artifactId>
         <scope>system</scope>
         <version>1.0</version>
         <systemPath>${basedir}\\src\\lib\\ldapjdk.jar</systemPath>
      </dependency>
   </dependencies>

</project>
```', 8, '如果我们需要引入第三库文件到项目，该怎么操作呢？
pom.xml 的 dependencies 列表列出了我们的项目需要构建的所有外部依赖项。
要添加依赖项，我们一般是先在 src 文件夹下添加 lib 文件夹，然后将你工程需要的 jar 文件复制到 lib 文件夹下。我们使用的是 ldapjdk.jar ，它是为 LDAP 操作的一个帮助库：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (76, null, 4, 'Maven教程', 11, 'Maven 项目模板', '# Maven 项目模板

Maven 使用 archetype(原型) 来创建自定义的项目结构，形成 Maven 项目模板。

在前面章节我们学到 Maven 使用下面的命令来快速创建 java 项目：

`mvn archetype:generate`

* * *

## 什么是 archetype？

archetype 也就是原型，是一个 Maven 插件，准确说是一个项目模板，它的任务是根据模板创建一个项目结构。我们将使用 quickstart 原型插件创建一个简单的 java 应用程序。

* * *

## 使用项目模板

让我们打开命令控制台，跳转到 C:\\\\> MVN 目录并执行以下 mvn 命令:

`C:\\\\MVN> mvn archetype:generate `

Maven 将开始处理，并要求选择所需的原型:

```
[INFO] Scanning for projects...
[INFO] Searching repository for plugin with prefix: ''archetype''.
[INFO] -------------------------------------------------------------------
[INFO] Building Maven Default Project
[INFO]task-segment: [archetype:generate] (aggregator-style)
[INFO] -------------------------------------------------------------------
[INFO] Preparing archetype:generate
...
600: remote -> org.trailsframework:trails-archetype (-)
601: remote -> org.trailsframework:trails-secure-archetype (-)
602: remote -> org.tynamo:tynamo-archetype (-)
603: remote -> org.wicketstuff.scala:wicket-scala-archetype (-)
604: remote -> org.wicketstuff.scala:wicketstuff-scala-archetype
Basic setup for a project that combines Scala and Wicket,
depending on the Wicket-Scala project.
Includes an example Specs test.)
605: remote -> org.wikbook:wikbook.archetype (-)
606: remote -> org.xaloon.archetype:xaloon-archetype-wicket-jpa-glassfish (-)
607: remote -> org.xaloon.archetype:xaloon-archetype-wicket-jpa-spring (-)
608: remote -> org.xwiki.commons:xwiki-commons-component-archetype
(Make it easy to create a maven project for creating XWiki Components.)
609: remote -> org.xwiki.rendering:xwiki-rendering-archetype-macro
(Make it easy to create a maven project for creating XWiki Rendering Macros.)
610: remote -> org.zkoss:zk-archetype-component (The ZK Component archetype)
611: remote -> org.zkoss:zk-archetype-webapp (The ZK wepapp archetype)
612: remote -> ru.circumflex:circumflex-archetype (-)
613: remote -> se.vgregion.javg.maven.archetypes:javg-minimal-archetype (-)
614: remote -> sk.seges.sesam:sesam-annotation-archetype (-)
Choose a number or apply filter
(format: [groupId:]artifactId, case sensitive contains): 203:
```

按下 **Enter** 选择默认选项 (203:maven-archetype-quickstart)。

* * *

## Maven 将询问原型的版本

```
Choose org.apache.maven.archetypes:maven-archetype-quickstart version:
1: 1.0-alpha-1
2: 1.0-alpha-2
3: 1.0-alpha-3
4: 1.0-alpha-4
5: 1.0
6: 1.1
Choose a number: 6:
```

按下 **Enter** 选择默认选项 (6:maven-archetype-quickstart:1.1)

Maven 将询问项目细节。按要求输入项目细节。如果要使用默认值则直接按 Enter 键。你也可以输入自己的值。

```
Define value for property ''groupId'': : com.companyname.insurance
Define value for property ''artifactId'': : health
Define value for property ''version'': 1.0-SNAPSHOT
Define value for property ''package'': com.companyname.insurance
```

Maven 将要求确认项目细节，按 **Enter** 或按 Y

```
Confirm properties configuration:
groupId: com.companyname.insurance
artifactId: health
version: 1.0-SNAPSHOT
package: com.companyname.insurance
Y:
```

现在 Maven 将开始创建项目结构，显示如下:

```
[INFO] -----------------------------------------------------------------------
[INFO] Using following parameters for creating project
from Old (1.x) Archetype: maven-archetype-quickstart:1.1
[INFO] -----------------------------------------------------------------------
[INFO] Parameter: groupId, Value: com.companyname.insurance
[INFO] Parameter: packageName, Value: com.companyname.insurance
[INFO] Parameter: package, Value: com.companyname.insurance
[INFO] Parameter: artifactId, Value: health
[INFO] Parameter: basedir, Value: C:\\MVN
[INFO] Parameter: version, Value: 1.0-SNAPSHOT
[INFO] project created from Old (1.x) Archetype in dir: C:\\MVN\\health
[INFO] -----------------------------------------------------------------------
[INFO] BUILD SUCCESSFUL
[INFO] -----------------------------------------------------------------------
[INFO] Total time: 4 minutes 12 seconds
[INFO] Finished at: Fri Jul 13 11:10:12 IST 2012
[INFO] Final Memory: 20M/90M
[INFO] -----------------------------------------------------------------------
```

* * *

## 创建的项目

现在转到 C:\\ > MVN 目录。你会看到一个名为 health 的 java 应用程序项目，就像在项目创建的时候建立的 artifactId 名称一样。 Maven 将创建一个有标准目录布局的项目，如下所示:

![](/images/0e7adce2891249bdb3277507ff839f2c.jpg)

* * *

## 创建 pom.xml

Maven 为项目自动生成一个 pom.xml文件，如下所示:

```
<project xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
  http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>com.companyname.insurance</groupId>
  <artifactId>health</artifactId>
  <version>1.0-SNAPSHOT</version>
  <packaging>jar</packaging>
  <name>health</name>
  <url>http://maven.apache.org</url>
  <properties>
     <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
  </properties>
  <dependencies>
     <dependency>
     <groupId>junit</groupId>
        <artifactId>junit</artifactId>
        <version>3.8.1</version>
        <scope>test</scope>
     </dependency>
  </dependencies>
</project>
```

* * *

## App.java

Maven 会自动生成一个测试的 java 文件 App.java。

路径：**C:\\\\MVN\\\\consumerBanking\\\\src\\\\main\\\\java\\\\com\\\\companyname\\\\bank**

```
package com.companyname.insurance;

/**
* Hello world!
*
*/
public class App
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
    }
}
```

* * *

## AppTest.java

Maven 会自动生成一个 java 文件 AppTest.java。

路径为： **C:\\\\MVN\\\\consumerBanking\\\\src\\\\test\\\\java\\\\com\\\\companyname\\\\bank**

```
package com.companyname.insurance;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

/**
* Unit test for simple App.
*/
public class AppTest
   extends TestCase
{
   /**
   * Create the test case
   *
   * @param testName name of the test case
   */
  public AppTest( String testName )
  {
      super( testName );
  }

  /**
  * @return the suite of tests being tested
  */
  public static Test suite()
  {
      return new TestSuite( AppTest.class );
  }

  /**
  * Rigourous Test :-)
  */
  public void testApp()
  {
      assertTrue( true );
  }
}
```

就这样。现在你可以看到 Maven 的强大之处。你可以用 maven 简单的命令创建任何类型的项目，并且可以启动您的开发。', 8, 'Maven 使用 archetype(原型) 来创建自定义的项目结构，形成 Maven 项目模板。
在前面章节我们学到 Maven 使用下面的命令来快速创建 java 项目：什么是 archetype？
archetype 也就是原型，是一个 Maven 插件，准确说是一个项目模板，它的任务是根据模板创建一个项目结构。我们将使用 quickstart 原型插件创建一个简单的 java 应用程序。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (77, null, 4, 'Maven教程', 12, 'Maven 项目文档', '# Maven 项目文档

本章节我们主要学习如何创建 Maven 项目文档。

比如我们在 C:/MVN 目录下，创建了 consumerBanking 项目，Maven 使用下面的命令来快速创建 java 项目：

`mvn archetype:generate -DgroupId=com.companyname.bank -DartifactId=consumerBanking -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false`

修改 pom.xml，添加以下配置（如果没有的话）：

```
<project>
  ...
<build>
<pluginManagement>
    <plugins>
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-site-plugin</artifactId>
          <version>3.3</version>
        </plugin>
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-project-info-reports-plugin</artifactId>
          <version>2.7</version>
        </plugin>
    </plugins>
    </pluginManagement>
</build>
 ...
</project>
```

> 不然运行 mvn site 命令时出现 **java.lang.NoClassDefFoundError: org/apache/maven/doxia/siterenderer/DocumentContent** 的问题， 这是由于 maven-site-plugin 版本过低，升级到 3.3+ 即可。

打开 consumerBanking 文件夹并执行以下 mvn 命令。

`C:\\\\MVN\\\\consumerBanking> mvn site`

Maven 开始生成文档：

```
[INFO] Scanning for projects...
[INFO] -------------------------------------------------------------------
[INFO] Building consumerBanking
[INFO]task-segment: [site]
[INFO] -------------------------------------------------------------------
[INFO] [site:site {execution: default-site}]
[INFO] artifact org.apache.maven.skins:maven-default-skin:
checking for updates from central
[INFO] Generating "About" report.
[INFO] Generating "Issue Tracking" report.
[INFO] Generating "Project Team" report.
[INFO] Generating "Dependencies" report.
[INFO] Generating "Continuous Integration" report.
[INFO] Generating "Source Repository" report.
[INFO] Generating "Project License" report.
[INFO] Generating "Mailing Lists" report.
[INFO] Generating "Plugin Management" report.
[INFO] Generating "Project Summary" report.
[INFO] -------------------------------------------------------------------
[INFO] BUILD SUCCESSFUL
[INFO] -------------------------------------------------------------------
[INFO] Total time: 16 seconds
[INFO] Finished at: Wed Jul 11 18:11:18 IST 2012
[INFO] Final Memory: 23M/148M
[INFO] -------------------------------------------------------------------
```

![](/images/1cde5029c7db4b169dd35df4986f3178.jpg)

打开 **C:\\\\MVN\\\\consumerBanking\\\\target\\\\site** 文件夹。点击 **index.html** 就可以看到文档了。

![](/images/d2febaa1e59e4a68851b2c6c9500f4f7.jpg)

Maven 使用一个名为 [Doxia](http://maven.apache.org/doxia/index.html)的文档处理引擎来创建文档，它能将多种格式的源码读取成一种通用的文档模型。要为你的项目撰写文档，你可以将内容写成下面几种常用的，可被 Doxia 转化的格式。

| 格式名 | 描述  | 参考  |
| --- | --- | --- |
| Apt | 纯文本文档格式 | http://maven.apache.org/doxia/references/apt-format.html |
| Xdoc | Maven 1.x 的一种文档格式 | http://jakarta.apache.org/site/jakarta-site2.html |
| FML | FAQ 文档适用 | http://maven.apache.org/doxia/references/fml-format.html |
| XHTML | 可扩展的 HTML 文档 | http://en.wikipedia.org/wiki/XHTML |', 8, '本章节我们主要学习如何创建 Maven 项目文档。
比如我们在 C:/MVN 目录下，创建了 consumerBanking 项目，Maven 使用下面的命令来快速创建 java 项目：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (78, null, 4, 'Maven教程', 13, 'Maven 快照(SNAPSHOT)', '# Maven 快照(SNAPSHOT)

一个大型的软件应用通常包含多个模块，并且通常的场景是多个团队开发同一应用的不同模块。举个例子，设想一个团队开发应用的前端，项目为 app-ui(app-ui.jar:1.0)，而另一个团队开发应用的后台，使用的项目是 data-service(data-service.jar:1.0)。

现在可能出现的情况是开发 data-service 的团队正在进行快节奏的 bug 修复或者项目改进，并且他们几乎每隔一天就要发布库到远程仓库。 现在如果 data-service 团队每隔一天上传一个新版本，那么将会出现下面的问题：

- data-service 团队每次发布更新的代码时都要告知 app-ui 团队。
- app-ui 团队需要经常地更新他们 pom.xml 文件到最新版本。

为了解决这种情况，**快照**的概念派上了用场。

* * *

## 什么是快照?

快照是一种特殊的版本，指定了某个当前的开发进度的副本。不同于常规的版本，Maven 每次构建都会在远程仓库中检查新的快照。 现在 data-service 团队会每次发布更新代码的快照到仓库中，比如说 data-service:1.0-SNAPSHOT 来替代旧的快照 jar 包。

* * *

## 项目快照 vs 版本

对于版本，如果 Maven 以前下载过指定的版本文件，比如说 data-service:1.0，Maven 将不会再从仓库下载新的可用的 1.0 文件。若要下载更新的代码，data-service 的版本需要升到1.1。

快照的情况下，每次 app-ui 团队构建他们的项目时，Maven 将自动获取最新的快照(data-service:1.0-SNAPSHOT)。

### app-ui 项目的 pom.xml 文件

app-ui 项目使用的是 data-service 项目的 1.0 快照。

```
<project xmlns="http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>app-ui</groupId>
   <artifactId>app-ui</artifactId>
   <version>1.0</version>
   <packaging>jar</packaging>
   <name>health</name>
   <url>http://maven.apache.org</url>
   <properties>
      <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
   </properties>
   <dependencies>
      <dependency>
      <groupId>data-service</groupId>
         <artifactId>data-service</artifactId>
         <version>1.0-SNAPSHOT</version>
         <scope>test</scope>
      </dependency>
   </dependencies>
</project>
```

### data-service 项目的 pom.xml 文件

data-service 项目为每次小的改动发布 1.0 快照。

```
<project xmlns="http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>data-service</groupId>
   <artifactId>data-service</artifactId>
   <version>1.0-SNAPSHOT</version>
   <packaging>jar</packaging>
   <name>health</name>
   <url>http://maven.apache.org</url>
   <properties>
      <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
   </properties>
</project>
```

虽然，快照的情况下，Maven 在日常工作中会自动获取最新的快照， 你也可以在任何 maven 命令中使用 -U 参数强制 maven 现在最新的快照构建。

`mvn clean package  -U`

让我们打开命令控制台，去到 C:\\ > MVN > app-ui 目录，然后执行下面的 mvn 命令。

`C:\\MVN\\app-ui>mvn clean package  -U`

Maven 将在下载 data-service 最新的快照之后，开始构建项目。

```
[INFO] Scanning for projects...
[INFO] -------------------------------------------------------------------
[INFO] Building consumerBanking
[INFO]    task-segment: [clean, package]
[INFO] -------------------------------------------------------------------
[INFO] Downloading data-service:1.0-SNAPSHOT
[INFO] 290K downloaded.
[INFO] [clean:clean {execution: default-clean}]
[INFO] Deleting directory C:\\MVN\\app-ui\\target
[INFO] [resources:resources {execution: default-resources}]
[WARNING] Using platform encoding (Cp1252 actually) to copy filtered resources,
i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory C:\\MVN\\app-ui\\src\\main\\
resources
[INFO] [compiler:compile {execution: default-compile}]
[INFO] Compiling 1 source file to C:\\MVN\\app-ui\\target\\classes
[INFO] [resources:testResources {execution: default-testResources}]
[WARNING] Using platform encoding (Cp1252 actually) to copy filtered resources,
i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory C:\\MVN\\app-ui\\src\\test\\
resources
[INFO] [compiler:testCompile {execution: default-testCompile}]
[INFO] Compiling 1 source file to C:\\MVN\\app-ui\\target\\test-classes
[INFO] [surefire:test {execution: default-test}]
[INFO] Surefire report directory: C:\\MVN\\app-ui\\target\\
surefire-reports
-------------------------------------------------------
 T E S T S
-------------------------------------------------------
Running com.companyname.bank.AppTest
Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.027 sec

Results :

Tests run: 1, Failures: 0, Errors: 0, Skipped: 0

[INFO] [jar:jar {execution: default-jar}]
[INFO] Building jar: C:\\MVN\\app-ui\\target\\
app-ui-1.0-SNAPSHOT.jar
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESSFUL
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 2 seconds
[INFO] Finished at: Tue Jul 10 16:52:18 IST 2012
[INFO] Final Memory: 16M/89M
[INFO] ------------------------------------------------------------------------
```', 310, '一个大型的软件应用通常包含多个模块，并且通常的场景是多个团队开发同一应用的不同模块。举个例子，设想一个团队开发应用的前端，项目为 app-ui(app-ui.jar:1.0)，而另一个团队开发应用的后台，使用的项目是 data-service(data-service.jar:1.0)。
现在可能出现的情况是开发 data-service 的团队正在进行快节奏的 bug 修复或者项目改进，并且他们几乎每隔一天就要发布库到远程仓库。 现在如果 data-service 团队每隔一天上传一个新版本，那么将会出现下面的问题：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (79, null, 4, 'Maven教程', 14, 'Maven 依赖管理', '# Maven 依赖管理

Maven 一个核心的特性就是依赖管理。当我们处理多模块的项目（包含成百上千个模块或者子项目），模块间的依赖关系就变得非常复杂，管理也变得很困难。针对此种情形，Maven 提供了一种高度控制的方法。

* * *

## 可传递性依赖发现

一种相当常见的情况，比如说 A 依赖于其他库 B。如果，另外一个项目 C 想要使用 A ，那么 C 项目也需要使用库 B。

Maven 可以避免去搜索所有所需库的需求。Maven 通过读取项目文件（pom.xml），找出它们项目之间的依赖关系。

我们需要做的只是在每个项目的 pom 中定义好直接的依赖关系。其他的事情 Maven 会帮我们搞定。

通过可传递性的依赖，所有被包含的库的图形会快速的增长。当有重复库时，可能出现的情形将会持续上升。Maven 提供一些功能来控制可传递的依赖的程度。

| 功能  | 功能描述 |
| --- | --- |
| 依赖调节 | 决定当多个手动创建的版本同时出现时，哪个依赖版本将会被使用。 如果两个依赖版本在依赖树里的深度是一样的时候，第一个被声明的依赖将会被使用。 |
| 依赖管理 | 直接的指定手动创建的某个版本被使用。例如当一个工程 C 在自己的依赖管理模块包含工程 B，即 B 依赖于 A， 那么 A 即可指定在 B 被引用时所使用的版本。 |
| 依赖范围 | 包含在构建过程每个阶段的依赖。 |
| 依赖排除 | 任何可传递的依赖都可以通过 "exclusion" 元素被排除在外。举例说明，A 依赖 B， B 依赖 C，因此 A 可以标记 C 为 "被排除的"。 |
| 依赖可选 | 任何可传递的依赖可以被标记为可选的，通过使用 "optional" 元素。例如：A 依赖 B， B 依赖 C。因此，B 可以标记 C 为可选的， 这样 A 就可以不再使用 C。 |

* * *

## 依赖范围

传递依赖发现可以通过使用如下的依赖范围来得到限制：

| 范围  | 描述  |
| --- | --- |
| 编译阶段 | 该范围表明相关依赖是只在项目的类路径下有效。默认取值。 |
| 供应阶段 | 该范围表明相关依赖是由运行时的 JDK 或者 网络服务器提供的。 |
| 运行阶段 | 该范围表明相关依赖在编译阶段不是必须的，但是在执行阶段是必须的。 |
| 测试阶段 | 该范围表明相关依赖只在测试编译阶段和执行阶段。 |
| 系统阶段 | 该范围表明你需要提供一个系统路径。 |
| 导入阶段 | 该范围只在依赖是一个 pom 里定义的依赖时使用。同时，当前项目的POM 文件的 部分定义的依赖关系可以取代某特定的 POM。 |

* * *

## 依赖管理

通常情况下，在一个共通的项目下，有一系列的项目。在这种情况下，我们可以创建一个公共依赖的 pom 文件，该 pom 包含所有的公共的依赖关系，我们称其为其他子项目 pom 的 pom 父。 接下来的一个例子可以帮助你更好的理解这个概念。

![](/images/b737359976304aafb4e896b95cd6c0a1.jpg)

接下来是上面依赖图的详情说明：

App-UI-WAR 的 pom.xml 文件代码如下：

```
<project xmlns="http://maven.apache.org/POM/4.0.0"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
      <modelVersion>4.0.0</modelVersion>
      <groupId>com.companyname.groupname</groupId>
      <artifactId>App-UI-WAR</artifactId>
      <version>1.0</version>
      <packaging>war</packaging>
      <dependencies>
         <dependency>
            <groupId>com.companyname.groupname</groupId>
            <artifactId>App-Core-lib</artifactId>
            <version>1.0</version>
         </dependency>
      </dependencies>  
      <dependencies>
         <dependency>
            <groupId>com.companyname.groupname</groupId>
            <artifactId>App-Data-lib</artifactId>
            <version>1.0</version>
         </dependency>
      </dependencies>  
</project>
```

App-Core-lib 的 pom.xml 文件代码如下：

```
<project xmlns="http://maven.apache.org/POM/4.0.0"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
      <parent>
         <artifactId>Root</artifactId>
         <groupId>com.companyname.groupname</groupId>
         <version>1.0</version>
      </parent>
      <modelVersion>4.0.0</modelVersion>
      <groupId>com.companyname.groupname</groupId>
      <artifactId>App-Core-lib</artifactId>
      <version>1.0</version>
      <packaging>jar</packaging>
</project>
```

App-Data-lib 的 pom.xml 文件代码如下：

```
<project xmlns="http://maven.apache.org/POM/4.0.0"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
      <parent>
         <artifactId>Root</artifactId>
         <groupId>com.companyname.groupname</groupId>
         <version>1.0</version>
      </parent>
      <modelVersion>4.0.0</modelVersion>
      <groupId>com.companyname.groupname</groupId>
      <artifactId>App-Data-lib</artifactId>
      <version>1.0</version>   
      <packaging>jar</packaging>
</project>
```

Root 的 pom.xml 文件代码如下：

```
<project xmlns="http://maven.apache.org/POM/4.0.0"
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
      <modelVersion>4.0.0</modelVersion>
      <groupId>com.companyname.groupname</groupId>
      <artifactId>Root</artifactId>
      <version>1.0</version>
      <packaging>pom</packaging>
      <dependencies>
         <dependency>
            <groupId>com.companyname.groupname1</groupId>
            <artifactId>Lib1</artifactId>
            <version>1.0</version>
         </dependency>
      </dependencies>  
      <dependencies>
         <dependency>
            <groupId>com.companyname.groupname2</groupId>
            <artifactId>Lib2</artifactId>
            <version>2.1</version>
         </dependency>
      </dependencies>  
      <dependencies>
         <dependency>
            <groupId>com.companyname.groupname3</groupId>
            <artifactId>Lib3</artifactId>
            <version>1.1</version>
         </dependency>
      </dependencies>  
</project>
```

现在当我们构建 App-UI-WAR 项目时， Maven 将通过遍历依赖关系图找到所有的依赖关系，并且构建该应用程序。

通过上面的例子，我们可以学习到以下关键概念：

- 公共的依赖可以使用 pom 父的概念被统一放在一起。App-Data-lib 和 App-Core-lib 项目的依赖在 Root 项目里列举了出来（参考 Root 的包类型，它是一个 POM）.
- 没有必要在 App-UI-W 里声明 Lib1, lib2, Lib3 是它的依赖。 Maven 通过使用可传递的依赖机制来实现该细节。', 201, '一种相当常见的情况，比如说 A 依赖于其他库 B。如果，另外一个项目 C 想要使用 A ，那么 C 项目也需要使用库 B。
Maven 可以避免去搜索所有所需库的需求。Maven 通过读取项目文件（pom.xml），找出它们项目之间的依赖关系。
我们需要做的只是在每个项目的 pom 中定义好直接的依赖关系。其他的事情 Maven 会帮我们搞定。
通过可传递性的依赖，所有被包含的库的图形会快速的增长。当有重复库时，可能出现的情形将会持续上升。Maven 提供一些功能来控制可传递的依赖的程度。');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (80, null, 4, 'Maven教程', 15, 'Maven 自动化部署', '# Maven 自动化部署

项目开发过程中，部署的过程包含需如下步骤：

- 将所的项目代码提交到 SVN 或者代码库中并打上标签。
- 从 SVN 上下载完整的源代码。
- 构建应用。
- 存储构建输出的 WAR 或者 EAR 文件到一个常用的网络位置下。
- 从网络上获取文件并且部署文件到生产站点上。
- 更新文档并且更新应用的版本号。

### 问题描述

通常情况下上面的提到开发过程中会涉及到多个团队。一个团队可能负责提交代码，另一个团队负责构建等等。很有可能由于涉及的人为操作和多团队环境的原因，任何一个步骤都可能出错。比如，较旧的版本没有在网络机器上更新，然后部署团队又重新部署了较早的构建版本。

### 解决方案

通过结合以下方案来实现自动化部署：

- 使用 Maven 构建和发布项目
- 使用 SubVersion， 源码仓库来管理源代码
- 使用远程仓库管理软件（Jfrog或者Nexus） 来管理项目二进制文件。

* * *

## 修改项目的 pom.xml

我们将会使用 Maven 发布的插件来创建一个自动化发布过程。

例如，bus-core-api 项目的 pom.xml 文件代码如下：

```
<project xmlns="http://maven.apache.org/POM/4.0.0" 
   xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
   http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>
   <groupId>bus-core-api</groupId>
   <artifactId>bus-core-api</artifactId>
   <version>1.0-SNAPSHOT</version>
   <packaging>jar</packaging> 
   <scm>
      <url>http://www.svn.com</url>
      <connection>scm:svn:http://localhost:8080/svn/jrepo/trunk/
      Framework</connection>
      <developerConnection>scm:svn:${username}/${password}@localhost:8080:
      common_core_api:1101:code</developerConnection>
   </scm>
   <distributionManagement>
      <repository>
         <id>Core-API-Java-Release</id>
         <name>Release repository</name>
         <url>http://localhost:8081/nexus/content/repositories/
         Core-Api-Release</url>
      </repository>
   </distributionManagement>
   <build>
      <plugins>
         <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-release-plugin</artifactId>
            <version>2.0-beta-9</version>
            <configuration>
               <useReleaseProfile>false</useReleaseProfile>
               <goals>deploy</goals>
               <scmCommentPrefix>[bus-core-api-release-checkin]-<
               /scmCommentPrefix>
            </configuration>
         </plugin>
      </plugins>
   </build>
</project>
```

在 pom.xml 文件中，我们常用到的一些重要元素节点如下表所示：

| 元素节点 | 描述  |
| --- | --- |
| SCM | 配置 SVN 的路径，Maven 将从该路径下将代码取下来。 |
| repository | 构建的 WAR 或 EAR 或JAR 文件的位置，或者其他源码构建成功后生成的构件的存储位置。 |
| Plugin | 配置 maven-release-plugin 插件来实现自动部署过程。 |

* * *

## Maven Release 插件

Maven 使用 maven-release-plugin 插件来完成以下任务。

`mvn release:clean`

清理工作空间，保证最新的发布进程成功进行。

`mvn release:rollback`

在上次发布过程不成功的情况下，回滚修改的工作空间代码和配置保证发布过程成功进行。

`mvn release:prepare`

执行多种操作：

- 检查本地是否存在还未提交的修改
- 确保没有快照的依赖
- 改变应用程序的版本信息用以发布
- 更新 POM 文件到 SVN
- 运行测试用例
- 提交修改后的 POM 文件
- 为代码在 SVN 上做标记
- 增加版本号和附加快照以备将来发布
- 提交修改后的 POM 文件到 SVN

`mvn release:perform`

将代码切换到之前做标记的地方，运行 Maven 部署目标来部署 WAR 文件或者构建相应的结构到仓库里。

打开命令终端，进入到 C:\\ > MVN >bus-core-api 目录下，然后执行如下的 mvn 命令。

`C:\\MVN\\bus-core-api>mvn release:prepare`

Maven 开始构建整个工程。构建成功后即可运行如下 mvn 命令。

`C:\\MVN\\bus-core-api>mvn release:perform`

构建成功后，你就可以可以验证在你仓库下上传的 JAR 文件是否生效。', 8, '自动化构建定义了这样一种场景: 在一个项目成功构建完成后，其相关的依赖工程即开始构建，这样可以保证其依赖项目的稳定。
比如一个团队正在开发一个项目 bus-core-api， 并且有其他两个项目 app-web-ui 和 app-desktop-ui 依赖于这个项目。
app-web-ui 项目使用的是 bus-core-api 项目的 1.0 快照：');
INSERT INTO onlearning.article (t_id, t_video, t_fid, t_fname, t_cid, t_cname, t_data, t_view, t_abstract) VALUES (81, null, 4, 'Maven教程', 16, 'Maven IntelliJ', '# IntelliJ

IntelliJ IDEA 已经内建了对 Maven 的支持。我们在此例中使用的是 IntelliJ IDEA 社区版 11.1。

IntelliJ IDEA 的一些特性列出如下：

- 可以通过 IntelliJ IDEA 来运行 Maven 目标。
- 可以在 IntelliJ IDEA 自己的终端里查看 Maven 命令的输出结果。
- 可以在 IDE 里更新 Maven 的依赖关系。
- 可以在 IntelliJ IDEA 中启动 Maven 的构建。
- IntelliJ IDEA 基于 Maven 的 pom.xml 来实现自动化管理依赖关系。
- IntelliJ IDEA 可以通过自己的工作区解决 Maven 的依赖问题，而无需安装到本地的 Maven 仓库，虽然需要依赖的项目在同一个工作区。
- IntelliJ IDEA 可以自动从远程 Maven 仓库上下载需要的依赖和源码。
- IntelliJ IDEA 提供了创建 Maven 项目，pom.xml 文件的向导。

## 在 IntelliJ IDEA 里创建一个新的项目

使用新建项目向导来导入一个 Maven 项目。

- 打开 IntelliJ IDEA。
- 选择 **File Menu > New Project** 选项。
- 选择 **import project from existing model** 选项。
    
    ![](/images/4bd8651052f749aba4c9aa1c59b60922.jpg)
    
- 选择 **Maven** 选项。
    
    ![](/images/e6710cc8388a46af927d33f171115ab8.jpg)
    
- 选择项目路径，即使用 Maven 创建一个项目时的存储路径。 假设我们创建了一个项目 **consumerBanking**。 通过 [**Maven 构建 Java 项目**](https://www.runoob.com/maven/maven-creating-project.html) 查看如何使用 Maven 创建一个项目。
    
    ![](/images/4e99cf6641ad449fb2988375ecd3b876.jpg)
    
- 选择要导入的 Maven 项目。
    
    ![](/images/e1af9f02c6cc45ec9b642aa049ea54f3.jpg)
    
- 输入项目名称，点击 "finish"。
    
    ![](/images/ae711e0190494d32b1501dc85982fe20.jpg)
    

现在，我们可以在 IntelliJ IDEA 里看到 Maven 项目了。看一下 consumerBanking 项目的 Libraries 和 Test Libraries，你可以发现 IntelliJ IDEA 已经将 Maven 所依赖的都添加到了它的构建路径里了。

![](/images/6d10abeb9f504807b54accd89e10080f.jpg)

## 在 IntelliJ IDEA 里构建一个 Maven 项目

好了，接下来我们来使用 IntelliJ IDEA 的编译功能来构建这个 Maven 项目 。

- 选中 consumerBanking 项目。
- 选择 **Buid menu > Rebuild Project** 选项。

你可以在 IntelliJ IDEA 的终端里看到构建过程输出的log：

`4:01:56 PM Compilation completed successfully`

## 在 IntelliJ IDEA 里运行应用程序

- 选中 consumerBanking 项目。
- 右键点击 App.java 弹出上下文菜单。
- 选择 **Run App.main()** 。

![](/images/60e72c8aa58f41d1ba529290de75b295.jpg)

你将会在 IntelliJ IDEA 的终端下看到如下运行结果：

```
"C:\\Program Files\\Java\\jdk1.6.0_21\\bin\\java"
-Didea.launcher.port=7533 
"-Didea.launcher.bin.path=
C:\\Program Files\\JetBrains\\IntelliJ IDEA Community Edition 11.1.2\\bin"
-Dfile.encoding=UTF-8 
-classpath "C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\charsets.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\deploy.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\javaws.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\jce.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\jsse.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\management-agent.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\plugin.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\resources.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\rt.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\ext\\dnsns.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\ext\\localedata.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\ext\\sunjce_provider.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\ext\\sunmscapi.jar;
C:\\Program Files\\Java\\jdk1.6.0_21\\jre\\lib\\ext\\sunpkcs11.jar
C:\\MVN\\consumerBanking\\target\\classes;
C:\\Program Files\\JetBrains\\
IntelliJ IDEA Community Edition 11.1.2\\lib\\idea_rt.jar" 
com.intellij.rt.execution.application.AppMain com.companyname.bank.App
Hello World!
Process finished with exit code 0
```', 231, 'IntelliJ IDEA 已经内建了对 Maven 的支持。我们在此例中使用的是 IntelliJ IDEA 社区版 11.1。
IntelliJ IDEA 的一些特性列出如下：
可以通过 IntelliJ IDEA 来运行 Maven 目标。
可以在 IntelliJ IDEA 自己的终端里查看 Maven 命令的输出结果。
可以在 IDE 里更新 Maven 的依赖关系。
可以在 IntelliJ IDEA 中启动 Maven 的构建。
IntelliJ IDEA 基于 Maven 的 pom.xml 来实现自动化管理依赖关系。
IntelliJ IDEA 可以通过自己的工作区解决 Maven 的依赖问题，而无需安装到本地的 Maven 仓库，虽然需要依赖的项目在同一个工作区。
IntelliJ IDEA 可以自动从远程 Maven 仓库上下载需要的依赖和源码。
IntelliJ IDEA 提供了创建 Maven 项目，pom.xml 文件的向导。');