module Resume (resume) where

import Data.List
import TeX

basicInfo :: Resume
basicInfo =
  paragraph
    [ pure "\\basicInfo{",
      pure $ "\\email{709327148@qq.com}" ++ period,
      cn $ "\\phone{(+86) 150-0019-3830}" ++ period,
      en $ "\\phone{(+86) 150-0019-3830}" ++ period,
      pure $ "\\github[GreyPlane]{https://github.com/GreyPlane}" ++ period,
      pure "}"
    ]
  where
    period = "\\textperiodcentered\\"

about :: Resume
about =
  section
    "简介"
    "About"
    [ paragraph
        [ cn "全栈开发，工作的范围覆盖现代Web应用开发的整个流程（前端、后端、大数据、运维开发），特别专注于函数式编程和流处理系统，同时对一些偏学术的领域也有涉猎（编程语言理论、分布式系统），平时也会读一些Paper、做一些研究作为兴趣。",
          en "I'm a self-learned programmer who has a bachelor's degree in Communications, working across almost the whole lifecycle of modern Web application development(frontend, backend, bigdata, devops), but especially focusing on Functional Programming and Stream Processing. And with some academic interest in Programming Language Theory and Distributed Systems, read some papers, and do a little bit of research as a hobby."
        ]
    ]

education :: Resume
education =
  section
    "教育经历"
    "Education"
    [ datedSection (date "2015" "08" ~~ date "2018" "06") $
        paragraph
          [ en "College of Publication, \\textbf{Shanghai Publishing and Printing College}",
            cn "\\textbf{上海出版印刷高等专科学校}，出版学。"
          ],
      datedSection (date "2018" "08" ~~ date "2020" "06") $
        paragraph
          [ en "Bachelor of Communications, \\textbf{University of Shanghai for Science and Technology}",
            cn "\\textbf{上海理工大学}，传播学，学士学位。"
          ]
    ]

convertlabFE :: Resume
convertlabFE =
  paragraph
    [ datedSection (date "2020" "06" ~~ date "2021" "03") $
        paragraph
          [ cn "\\textbf{上海欣兆阳信息科技有限公司}",
            en "\\textbf{Convertlab Inc.}"
          ],
      paragraph
        [ cn "\\role{软件开发工程师}{Application Team}",
          en "\\role{Software Engineer}{Application Team}"
        ],
      itemize
        [ cn $ "\\item 开发了一个低代码表单设计应用，让用户可以通过拖拉拽设计复杂的表单，并且可以为题目定义复杂的跳转规则，然后作为物料发送给终端用户在手机上浏览、提交。",
          en $ "\\item develop a low-code form design application which allows user to use simple drag and drop method creating complex form with relation between questions that can be later rendered on mobile devices.",
          cn $ "\\item 使用React、Redux、Ant Design、Javascript/Typescript进行常规的业务开发。",
          en $ "\\item application development based on React and Redux, with UI component library Ant Design, using Typescript.",
          cn $ "\\item 将Typescript的构建工具链整合进已有的webpack build pipeline中，使团队可以逐渐迁移到Typescript。",
          en $ "\\item integrate Typescript toolchain into the existing webpack build pipeline, enable our team to migrate to Typescript gradually.",
          cn $ "\\item 开发基于Ant Design的组件库。",
          en $ "\\item develop UI components library based on ant-design."
        ]
    ]

clBD :: Resume
clBD =
  paragraph
    [ datedSection (date "2021" "04" ~~ date "2023" "08") $
        paragraph
          [ cn "\\textbf{上海欣兆阳信息科技有限公司}",
            en "\\textbf{Convertlab Inc.}"
          ],
      paragraph
        [ cn "\\role{数据开发工程师}{Data Team}",
          en "\\role{Data Engineer}{Data Team}"
        ],
      itemize
        [ cn "\\item 维护和开发公司旗舰产品——数字化营销云DMHUB的核心功能模块自动流程，独立地负责和产品经理、开发经理讨论需求，设计技术方案并且实现。",
          cn "\\item 从COO或者CTO处接受一些实验、研究性质的任务（公司知识库搭建、URL处理规范等），独立的研究对应技术解决方案并落地实现。",
          cn "\\item 设计并实现了一个用于聚合和基于条件过滤消息发送的中间件，保证了聚合的exactly-once的delivery semantic并且提供了实时的速率查看和启动停发送，使用Akka Stream和Kafka Stream。",
          cn "\\item 在于腾讯合作的项目TMC（腾讯营销云）中，独立地的负责设计、实现了自动流程对接有数智能群组、标签的能力，其中包括业务开发、方案设计、大数据能力（Spark，HBase）的使用和表设计。",
          cn "\\item 认证的Cloudera系统管理员，也负责一部分Spark Job的实现和各种存储（Kudu、HBase、MongoDB）的表设计等。",
          cn "\\item 使用Grails和Groovy或Java和Spring进行其他功能模块的维护和开发，"
        ]
    ]

reactflow :: Resume
reactflow =
  paragraph
    [ title,
      cn
        "一个低延迟、高吞吐的流处理系统，使用户可以通过画布预先定义好整个营销旅程的逻辑（例如当客户产生某个行为时，如果满足什么条件，就对他以某个渠道通过某个物料进行触达）从而实现自动化营销目的。",
      en "a low-latency, high-throughput streaming processing system, represent the whole journey of a customer in a campaign which is the implementation of our clients' marketing strategy(when customer did what and then we should do what if he meets some criteria), aslo coordinate other functionalities of application to meet the goal.",
      itemize
        [ en "\\item the selling point of our main product - digital marketing cloud DMHub.",
          cn "\\item 营销云产品的最核心功能，是前场同事销售、交付项目时的核心卖点，也是客户复购产品License时的核心竞争力。",
          en "\\item able to support thousands of instances and thousand million of customers running simultaneously and stably.",
          cn "\\item 可以稳定支持上千个流程实例以及上亿客户同时运行。",
          en "\\item enhencing existing product with the ability to choose multiple criteria for customer to enter the flow and set arbitrary number for the maxium reentrance times for one customer at a flow.",
          cn "\\item 增强了现有产品使其单个流程可以设定多个开始条件，并且允许设定每个客户进入单个流程实例的最大次数。",
          en "\\item implement an algorithm to validate topology definition of a flow such like if it has cycle or other our own bussiness logic requirements with slighty modified topo sort.",
          cn "\\item 通过修改拓扑排序算法实现了一个通用的函数来校验用户定义的流程是否合法，例如是否存在环、是否存在无法到达的节点以及其他业务上的规则。" 
       ]
    ]
  where
    title = datedSection (cn "") (bold "Reactflow")

knwoledgeGraph :: Resume
knwoledgeGraph =
  paragraph
    [ title,
      cn "根据COO对公司战略的规划，通过提供一个平台让交付同事可以方便的录入并通过一定的逻辑/模式对知识进行检索，从而搭建公司知识库体系，优化交付效率、减少项目交付中知识传递带来的成本。",
      en "accroding COO's schedule, create a platform for saving and editing our knowledge into datebases, which can be retrieved by certain pattern, in such we can build company's knowledge system that reducing the efficiency lost between knowledge transfering therefore increase productivity.",
      itemize
        [ cn "\\item 研究了知识图谱的相关概念，以及如何使用其来表示具体的知识体系。",
          en "\\item research the whole concept of so called knowledge graph and how to use it to represent our goal practically.",
          cn "\\item 将具体的知识点作为知识图谱中的实体，知识点所属的分类作为本体，同时每个实体都属于一个本体，并且本体定义了实体之间是否可能产生联系并且规定了联系的种类，将这样的关系使用两个不同的lablled property graph来建模并且存储在Neo4J中。",
          en "\\item represent every concepts as ontology(works like category of things) and entity that belongs to and constraints by certain ontology, and modelling it by two separate lablled property graph which store in Neo4J.",
          cn "\\item 使用React、Typescript和AntV实现了前端的图可视化应用，可以显示、搜索、修改、链接实体图。",
          en "\\item implement a graph visualization front-end application that support showing, seaching, modifying, connecting entity graph by React, Typescript and AntV.",
          cn "\\item 基本上完全通过Cypher查询语言实现了一个后端服务，实现了对于实体图的CRUD，并且通过比较复杂的图的joining实现了链接实体时校验其所属的本体之间的关系、约束是否满足，并且通过利用Neo4J的插件， 实现了从Protégé中导入本体定义的功能。",
          en "\\item implement the backend service based on Neo4J which utilize Neo4J's ablitiy to import ontology definition from Protégé, and use mostly only Cypher query language to implement CURD functionality of entity graph, featuring complex graph joining because every modification on entity graph must be validated by checking ontology graph, also implement basic search logic such like shortest path between two entities accroding to a certain type connection.",
          cn "\\item 使用Neo4J和Cypher查询语言，实现了一些图算法、图计算的逻辑。"
        ]
    ]
  where
    title = datedSection (cn "") (bold "Knowledge Graph")

messageEngine :: Resume
messageEngine =
  paragraph
    [ title,
      cn "通过将各个渠道（短信、邮件等）应用所需的常见功能（批量、背压、防骚扰等）提取出来在中间件中实现，使得现有的渠道应用的逻辑更统一、清晰、稳定，并且使新渠道的对接更高效。",
      en "a middleware that unifies the approach of sending through sms or other channel that can reach out end users, made the message sending process to be robust and reliable, and the integration of thrid-party service provider much easier, also automatically get the commmon features like batching request or delay the sending if it was triggered at a time that will disturb customers.",
      itemize
        [ 
          cn "\\item 设计了总体架构，将系统分为作为服务独立存在的引擎部分以及渠道应用需要使用的SDK部分，并且选择了Kafka Streams用来实现引擎部分的需要中间状态的功能（批量、速率监控等）。",
          en "\\item design the high-level archtecture, divide whole project into server side and sdk library for client usage, and utlize Kafka Streams to implement stateful functionality and guarantee the effective exactly once delivery semantic.",
          cn "\\item 通过Kafka Streams实现了对消息进行批量聚合的逻辑，同时通过设计了我们自己的直接基于Byte的数据结构，避免了每次读写State Store时的JSON序列化/序列化，将性能提高了数倍。",
          en "\\item implement the batching logic using Kafka Streams, optimize the performence by designing our own data schema that working directly on bytes instead of ser/der JSON everytimes when saving or retrieving message from kafka state store.",
          cn "\\item 实现了防骚扰功能，即检查当前时段是否适合发送并且根据用户配置将时间段内的消息推迟进行发送，使用HBase作为存储。",
          en "\\item implement the disturbing time check and delay functionality, using HBase as storage.",
          cn "\\item 研究了如何最低成本的减少因为Kafka rebalance产生的消息重复，并将成果实现进了SDK中。",
          en "\\item research how to reduce the duplication caused by Kafka rebalance with low cost, implement it into our own kafka consumer wrapper that used by sdk."
        ]
    ]
  where
    title = datedSection (cn "") (bold "Message Engine")

dataPermission :: Resume
dataPermission =
  paragraph
    [ title,
      cn "直接受命于CTO，重新实现将配置的数据权限应用到产品的各种查询中的方式，使其更接近于标准的ABAC系统。",
      en "working directly with CTO, reimplement our way to apply permission control to data accessing, make it more like a standard ABAC system.",
      itemize
        [ cn "\\item 实现了一个SQL AST处理的pass，将原本的查询SQL编译到应用了数据权限的SQL，增加更多的子句和子查询来实现例如筛选出当前部门、用户可见的数据，或者手动授权给当前用户的数据等功能。",
          en "\\item implement a SQL AST tranformation pass which compile original SQL into permission applied SQL, which include more clauses for checking if data was accessible for current user or department, or if data was sharing to the current user manually.",
          cn "\\item 实现了几个Spark job用于计算基于用户配置的规则的手动授权。",
          en "\\item implement several Spark jobs for computing shared permission based on user customized rule."
        ]
    ]
  where
    title = datedSection (cn "") (bold "Data Permission")

clbdru :: Resume
clbdru =
  paragraph
    [ datedSection (date "2021" "04" ~~ date "2023" "08") $
        paragraph
          [ cn "\\textbf{上海欣兆阳信息科技有限公司}",
            en "\\textbf{Convertlab Inc.}"
          ],
      paragraph
        [ cn "\\role{数据开发工程师}{Data Team}",
          en "\\role{Software Engineer}{Data Team}"
        ],
      itemize
        [ en "\\item often in charge of design, implementation whole project or module no matter which part of technology it uses or area it belongs, and report to high level managers directly.",
          en "\\item maintaining our flagship product's most prominent module Reactflow, a Flink-like streaming processing middleware which built on Actix and Kafka, and using MongoDB as persistence layer.",
          en "\\item regular API development for other microservices based on Tokio, Serde and using MySQL as persistence layer.",
          en "\\item integrate Reactflow with third-party partner like Tencent's data intelligence department YouShu.",
          en "\\item some data processing / ETL work related with Spark(Scala), Impala, Kudu."
        ]
    ]

convertlabBD :: Resume
convertlabBD =
  paragraph
    [ datedSection (date "2021" "04" ~~ date "2023" "08") $
        paragraph
          [ cn "\\textbf{上海欣兆阳信息科技有限公司}",
            en "\\textbf{Convertlab Inc.}"
          ],
      paragraph
        [ cn "\\role{软件开发工程师}{Data Team}",
          en "\\role{Software Engineer}{Data Team}"
        ],
      itemize
        [ cn "\\item 公司旗舰产品DMHub的核心功能，一个类似于Flink的流处理中间件唯二的开发人员，使用Scala和Akka，依赖Kafka并使用MongoDB作为存储。",
          en "\\item the only two developers who create and maintain our own Flink-like streaming processing platform which is based on Akka and Scala, and uses MongoDB as persistence layer.",
          cn "\\item 常常负责一整个项目/模块的技术方案设计及其实现，无论涉及的是前端、后端或者大数据，有时也处理一些运维问题，并且经常直接向高层管理汇报。",
          en "\\item often in charge of design, implementation whole project or module no matter which part of technology it uses or area it belongs, and report to high level managers directly.",
          cn "\\item 同产品经理和开发经理沟通、安排任务，进行产品各种功能模块的新功能开发和维护（包括前端、后端和数据，使用各种语言）。",
          en "\\item regular application development and maintaining(in both frontend and backend with multiple programming languages) for various modules across whole product.",
          -- cn "\\item 在跟腾讯合作的产品TMC中设计、实现了通过拓展现有自动流程执行逻辑以对接有数智能圈群，智能标签能力的解决方案。",
          -- en "\\item Regular data processing using Spark, for example, based predefined tag partition customers into different stages.",
          -- cn "\\item 在TMC中使用了Spark和开发了一个Job用于计算基于预置条件计算的客户阶段流转，并基于历史的分析功能实现了一个简单的基于标签和阶段的人群画像。",
          -- cn "\\item 设计并实现了一个用于聚合和基于条件过滤消息发送的中间件，保证了聚合的delivery semantic为exactly once并且提供了实时的速率查看和启动停发送，使用Akka Stream和Kafka Stream以及Scala。",
          -- en "\\item Design and implement a middleware that batches upstream messages and ensures the exactly-once delivery semantic by using Akka Stream and Kafka Stream.",
          -- cn "\\item 独立完成了一个知识图谱项目的POC，使用Neo4J，Scala系的neotypes、fs2、cats-effect等，实现了基于本体图谱进行实体图谱的CRUD并提供了基于一些比较简单模式（例如和当前实体关联最多的实体）的查询。",
          -- en "\\item Delivery a POC project for knowledge graph by using Neo4J and Scala typelevel stack, implement CRUD based on Ontology relations and a basic search.",
          cn "\\item 为功能所需的存储选择适合的存储技术并设计较优的存储结构（表结构或者单纯的schema），实现功能所需的分析SQL（Impala）或者批处理Job（Spark）。",
          en "\\item design the required schema for various storage and implement analytical SQL for Impala or batch process job(Spark)."
        ]
    ]

devTools :: Resume
devTools =
  paragraph
    [ itemTeX "开发工具" "Development Tool",
      cn "能适应任何编辑器/操作系统，平常在 MacOS下使用 Vscode, IntelliJ、Emacs",
      cn $ "有使用 " ++ intercalate "、" tools ++ " 等团队协作工具的经验。",
      en "Can adapt to any editors/OSs, usually use Vscode, IntelliJ, Emacs under",
      simple "MacOS.",
      elab "MacOS, have experience with team collaboration tools like",
      elab $ intercalate ", " tools ++ "."
    ]
  where
    tools = ["Jira", "Git"]

programmingLanguages :: Resume
programmingLanguages =
  paragraph
    [ itemTeX "编程语言" "Program Language",
      cn "\\textbf{泛语言}（编程不受特定语言限制），",
      cn $ "尤其熟悉且日常使用 " ++ very ++ "，",
      cn $ "曾经学过或者感兴趣了解过 " ++ rarely ++ "(排名均不分先后)。",
      en "multilingual (not limited to any specific language),",
      -- en $ "especially experienced in " ++ very ++ ",",
      en $ "comfortable with " ++ very ++ " (in random order)."
    ]
  where
    rarely = "Rust Erlang OCaml"
    very = "Haskell Typescript Scala Groovy Java"
    ruBlaff = "Haskell Rust Scala Typescript"

react :: Resume
react =
  paragraph
    [ itemTeX "Web前端开发（React）" "Web Frontend (React)",
      itemize
        [ cn "\\item 精通React和hooks API。",
          en "\\item Experienced in React and Hooks API.",
          cn "\\item 精通Typescript在React以及相关生态中的使用。",
          en "\\item Experienced in Typescript",
          cn "\\item 熟悉React周边生态，调研、使用过包括状态管理、路由、Query Library等在内的各种库，有独立选型、搭建、开发完整项目的能力。",
          en "\\item Experienced in the ecosystem around React, includes but is not limited to routing, state management, query library, can delivery project independently."
        ]
    ]

webBackend :: Resume
webBackend =
  paragraph
    [ itemTeX "Web后端开发" "Backend",
      itemize
        [ 
          cn "\\item 使用Scala语言和Akka的主要部件（actor、typed actor、streaming、http等）进行Web Application或者中间件开发，做过比较小的Akka cluster。",
          en "\\item experienced in using Scala and Akka ecosystem's most commonly used components like actors, streaming, HTTP to develop Web application or middleware. and also Akka contributor.",
          cn "\\item 使用cats等typelevel出品的函数式编程库，了解cats-effect、ZIO等effect库，可以使用shapeless做generic programming。",
          en "\\item experienced in Cats ecosystem libraries, Knowing how to do generic programming by using Shapeless.",
          cn "\\item 使用Groovy语言和Grails、GORM进行Web后端开发。",
          en "\\item experienced in using Groovy and Grails, GORM to develope Web backend service.",
          cn "\\item 使用Java语言和Spring、Springboot、Mybatis和Mybatis plus以及Google guava作为util库进行Web后端开发。",
          en "\\item experienced in using Java and Spring, Springboot, Mybatis, Mybatis plus and JPA, also use Google guava as util library to develop Web backend service.",
          cn "\\item 使用MySQL、Redis、Elasticsearch、MongoDB作为应用存储，Kafka作为Message Queue。",
          en "\\item experienced in using MySQL, Redis, Elasticsearch, MongoDB as application storage, also Kafa as Message Queue.",
          cn "\\item 理解微服务架构，熟悉k8s、docker等微服务、容器技术，能独立交付完整的项目。",
          en "\\item understanding Microservices and containerization technology like K8S and Docker, can delivery whole project independently."
        ]
    ]

webBackendRu :: Resume
webBackendRu =
  paragraph
    [ itemTeX "Web后端开发" "Web Backend",
      itemize
        [ en "\\item experienced in morden web application development that using Actor system, HTTP server/client technologies, CRUD on RDBMS or NoSQL, document API using Swagger and other general concepts.",
          en "\\item understand Microservices architecture and containerization technology such like Kubenates and Docker, can delivery project independently."
        ]
    ]

bigData :: Resume
bigData =
  paragraph
    [ itemTeX "大数据开发" "BigData",
      itemize
        [ cn "\\item 对分布式系统的基本概念有牢靠的理解，例如consensus algorithm、delivery semantic等，阅读过一些领域知名的论文。",
          en "\\item have solid understanding of basic topics about the distributed system such as consensus algorithm, delivery semantic, read some of founding paper in this area.",
          cn "\\item 深入理解Kafka和并使用Kafka Streaming开发过业务应用，研究过一般意义上流处理系统，阅读过相关论文和书籍，开发过准实时的数据处理管线。",
          en "\\item have deep knowledge of Kafka, also have researched several topcis on streaming processing and have read related papers and books.",
          cn "\\item 理解现代分布式数据库/分析平台的基本架构，日常使用HBase，HDFS和Impala、Kudu。",
          en "\\item use components in Hadoop ecosystem like HBase, HDFS, also Impala, Kudu.",
          cn "\\item 使用RDD API和Spark SQL实现功能所需要的数据处理Job，对于Spark的运行模型有坚实的理解，能对Job进行优化。",
          en "\\item write spark job to process data, in both RDD API and Spark SQL, have solid understanding of how spark works on the high-level.",
          cn "\\item 认证的Cloudera Hadoop系统管理员。",
          en "\\item certificated Cloudera Hadoop System Administrator."
        ]
    ]

evangelist :: Resume
evangelist =
  paragraph
    [ itemTeX "技术布道师" "Evangelist",
      itemize
        [ cn "\\item 在公司内部为同事做Typescript的教学、分享，帮助同事解决日常使用中的各种由类型产生的问题。",
          en "\\item teaching Typescript for colleagues, helping them to solve problems associated with types."
        ]
    ]

algebraicGraph :: Resume
algebraicGraph =
  paragraph
    [ github "GreyPlane/algebraic-graph" `datedSection` bold "AlgebraicGraph",
      cn "algebraic graph的Scala实现",
      en "algebraic graph implementation in Scala",
      itemize
        [ cn "\\item 阅读、并在Scala中实现了论文中的两种encoding（associated type families和plain algebraic data types)。",
          en "\\item read, implement both associated type families and plain algebraic data types encoding and bunch graph opearations describe in paper using Scala.",
          cn "\\item 使用四种基本结构（Empty，Vertex，Connect，Overlay）来重新描述图，这样就构成了一个半环（Overlay作为加法，Connect作为乘法），其拥有良好的代数性质和组合性，并在实际项目中通过其实现了一个可以简单高效的programmatically构建自动流程所使用的topology的库，并投入使用。",
          en "\\item Using encoding describes in this paper to build a library for constructing the topology of our Flink-like component programmatically, is an elegant solution because the good algebraic properties holds by the encoding, implement both TypeFamilies-based and ADT-based encoding in Scala."
        ]
    ]

aEqB :: Resume
aEqB =
  paragraph
    [ github "GreyPlane/AeqB" `datedSection` bold "A=B",
      cn "esolang A=B的解释器",
      en "interpreter for esolang A=B in Haskell",
      itemize
        [ cn "\\item 使用了Free Monad并且采用了data type a la carte中描述的实现方式。",
          en "\\item Using Free Monad and implements via the approach that described in paper data type a la carte."
        ]
    ]

csBasic :: Resume
csBasic =
  paragraph
    [ itemTeX "计算机科学基础" "CS Basic",
      cn "学习过CSAPP、SICP等，有比较坚实的CS基础，了解一些PLT知识。",
      en "learned CSAPP and SICP, has solid CS foundation, also learned some PL theory."
    ]

-- catTheory :: Resume
-- catTheory =
--   paragraph
--     [ itemTeX "范畴论" "Category Theory",
--       cn "零散的了解过Proof Assistant、类型论，学习过一些基本的范畴论知识（Bartosz——《Category Theory for Programmer》）"
--     ]

fp :: Resume
fp =
  paragraph
    [ itemTeX "函数式编程" "Functional Programming",
      itemize
        [ cn "\\item 有工程化函数式编程的能力。",
          en "\\item Capable to adapt functional programming technique in the real world project.",
          cn "\\item 能解决需要更深入的类型论或者范畴论知识才能解决的问题。",
          en "\\item Able to solve the complicated problem that involves advanced topic about type theory or category theory."
        ]
    ]

skills :: Resume
skills =
  section "技能" "Skills" . pure $
    itemize
      [ programmingLanguages,
        react,
        webBackend,
        bigData,
        fp,
        evangelist,
        csBasic,
        devTools
      ]

resume :: Resume
resume =
  paragraph
    [ pure "% !TEX program = xelatex",
      pure "% This file is generated, don't manually edit!",
      -- head
      paragraph
        [ pure "\\documentclass{resume}",
          cn "\\usepackage{lastpage}",
          cn "\\usepackage{fancyhdr}",
          -- disable extra space before next section
          pure "\\usepackage{linespacing_fix}",
          cn "\\usepackage[fallback]{xeCJK}"
        ],
      -- begin document
      pure "\\begin{document}",
      cn "\\renewcommand\\headrulewidth{0pt}",
      tex "name" "刘极" "Ji Liu",
      basicInfo,
      about,
      section
        "工作经历"
        "Work Experience"
        [ convertlabFE,
          convertlabBD
        ],
      section
        "项目经验"
        "Projects"
        [ reactflow,
          knwoledgeGraph,
          messageEngine,
          dataPermission
        ],
      section
        "个人项目"
        "Personal Projects"
        [ algebraicGraph,
          aEqB
        ],
      skills,
      education,
      section
        "其他"
        "Miscellaneous"
        [ let codewars = href "https://www.codewars.com/users/GreyPlane" ++ "{CodeWars}"
              cwLevel = "\\textbf{3 kyu}"
           in itemize
                [ en "\\item Languages: English - fluent",
                  cn "\\item 语言: English - 听说读熟练 (英语六级)",
                  cn $
                    "\\item 在 " ++ codewars ++ " 上，以 Haskell、Agda 为主，达到"
                      ++ cwLevel,
                  en $ "\\item " ++ cwLevel ++ " on " ++ codewars ++ ",",
                  elab "solving and making new problems primarily in Haskell, Agda and Idris",
                  simple "primarily in Haskell, Agda and Idris"
                ]
        ],
      -- end document
      pure "\\end{document}"
    ]