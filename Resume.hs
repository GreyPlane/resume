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
        [ en "I'm a self-learned programmer who has a bachelor's degree in Communications, working across almost the whole lifecycle of modern application development, but especially focusing on Functional Programming and Stream Processing. And with some academic interest in Programming Language Theory and Distributed Systems, read some papers, and do a little bit of research as a hobby. Currently work at Convertlab, a leading digital marketing company in China."
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
        [ cn "\\role{React前端开发工程师}{Application Team}",
          en "\\role{React Front-end Engineer}{Application Team}"
        ],
      itemize
        [ cn $ "\\item 基于React、Redux、Typescript的业务开发。",
          en $ "\\item Application development based on React and Redux, using Typescript.",
          cn $ "\\item 将Typescript的构建工具链整合进项目已有的webpack build pipeline中。",
          en $ "\\item Integrate Typescript toolchain into the existing webpack build pipeline, enable our team to migrate to Typescript gradually.",
          cn $ "\\item 开发基于Ant Design的组件库，例如Ant Design的Tree组件。",
          en $ "\\item Develop UI components library based on ant-design."
          -- cn $ "\\item 开发低代码表单搭建工具，以及对应的H5 runtime。",
          -- en $ "\\item low-code form building tools and correspond runtime."
        ]
    ]

convertlabBD :: Resume
convertlabBD =
  paragraph
    [ datedSection (date "2021" "04" ~~ date "至今" "") $
        paragraph
          [ cn "\\textbf{上海欣兆阳信息科技有限公司}",
            en "\\textbf{Convertlab Inc.}"
          ],
      paragraph
        [ cn "\\role{数据开发工程师}{Data Team}",
          en "\\role{Data Engineer}{Data Team}"
        ],
      itemize
        [ cn "\\item 公司产品DMHUB的核心功能自动流程唯二的开发人员，通过用户预先定义的画布执行业务逻辑，使用Scala和Akka以及Kafka实现了稳定、低延迟的流处理组件。",
          en "\\item One of the only two developers who develop our own Flink-like streaming processing platform which is based on Akka and Scala, which allows user to define a topology of marketing actions then execute it automatically.",
          cn "\\item 在跟腾讯合作的产品TMC中设计、实现了通过拓展现有自动流程执行逻辑以对接有数智能圈群，智能标签能力的解决方案。",
          en "\\item Regular data processing using Spark, for example, based predefined tag partition customers into different stages.",
          cn "\\item 在TMC中使用了Spark和开发了一个Job用于计算基于预置条件计算的客户阶段流转，并基于历史的分析功能实现了一个简单的基于标签和阶段的人群画像。",
          cn "\\item 设计并实现了一个用于聚合和基于条件过滤消息发送的中间件，保证了聚合的delivery semantic为exactly once并且提供了实时的速率查看和启动停发送，使用Akka Stream和Kafka Stream以及Scala。",
          en "\\item Design and implement a middleware that batches upstream messages and ensures the exactly-once delivery semantic by using Akka Stream and Kafka Stream.",
          cn "\\item 独立完成了一个知识图谱项目的POC，使用Neo4J，Scala系的neotypes、fs2、cats-effect等，实现了基于本体图谱进行实体图谱的CRUD并提供了基于一些比较简单模式（例如和当前实体关联最多的实体）的查询。",
          en "\\item Delivery a POC project for knowledge graph by using Neo4J and Scala typelevel stack, implement CRUD based on Ontology relations and a basic search.",
          -- cn "\\item 使用HBase、Impala+Kudu、Hive，负责功能开发时需要使用的存储结构的设计。",
          -- en "\\item using HBase, Impala, Kudu, responsible for schema design.",
          cn "\\item 基于Spring和Java或Grails和Groovy进行常规的业务开发。",
          en "\\item Regular web-backend development based on Spring and Grails, using Java or Groovy for company's flagship product DMHUB."
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
      cn $ "偶尔使用 " ++ occasionally ++ "，",
      cn $ "曾经学过或者感兴趣了解过 " ++ rarely ++ "(排名均不分先后)。",
      en "multilingual (not limited to any specific language),",
      en $ "especially experienced in " ++ very ++ ",",
      en $ "comfortable with " ++ occasionally ++ " (in random order)."
    ]
  where
    rarely = "C/C++ Rust Erlang OCaml"
    occasionally = "Java Groovy"
    very = "Haskell Typescript Scala"

react :: Resume
react =
  paragraph
    [ itemTeX "Web前端开发（React）" "Web Frontend (React)",
      cn "\\textbf{1 年}开发经验",
      en "\\textbf{1 years} of experience",
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
      cn "\\textbf{1 年}开发经验",
      itemize
        [ cn "\\item 熟悉并日常使用Akka的主要部件（actor、typed actor、streaming、http等），做过比较小的Akka cluster。",
          en "\\item Using Akka ecosystem's most commonly used components like actors, streaming, HTTP, etc. and also Akka contributor.",
          cn "\\item 熟悉并日常使用cats等typelevel出品的FP库，了解cats-effect、ZIO等effect库，使用shapeless做过基本的generic programming。",
          en "\\item Experienced in Cats ecosystem libraries, Knowing how to do generic programming by using Shapeless.",
          cn "\\item 理解k8s、docker等微服务、容器技术，能独立交付完整的项目。",
          en "\\item Understanding Microservices and containerization technology like K8S and Docker, can delivery whole project independently."
        ]
    ]

bigData :: Resume
bigData =
  paragraph
    [ itemTeX "大数据开发" "BigData",
      cn "\\textbf{1 年}开发经验",
      itemize
        [ cn "\\item 有关于分布式系统的一些基本概念，例如consensus algorithm、delivery semantic等。",
          en "\\item Understanding basic topics about the distributed system such like consensus algorithm, delivery semantic.",
          cn "\\item 熟悉Kafka和并使用Kafka Streaming开发过业务应用，熟悉一般意义上流处理系统，开发过准实时的数据处理管线。",
          en "\\item Have Deep knowledge of Kafka and general streaming processing framework, have experience of developing real-time data processing pipeline.",
          cn "\\item 熟悉并日常使用Hadoop ecosystem的主要组件，例如HBase、Impala、Kudu。",
          en "\\item Use components in Hadoop ecosystem like HBase, Impala, Kudu.",
          cn "\\item 日常使用Spark，了解Spark的一些基本概念。",
          en "\\item Have a basic understanding of Spark."
        ]
    ]

evangelist :: Resume
evangelist =
  paragraph
    [ itemTeX "技术布道师" "Evangelist",
      itemize
        [ cn "\\item 在公司内部为同事做Typescript和Scala的教学、分享，帮助同事解决日常使用中的各种由类型产生的问题。",
          en "\\item teaching Typescript and Scala for colleagues, helping them to solve problems associated with types."
        ]
    ]

algebraicGraph :: Resume
algebraicGraph =
  paragraph
    [ github "GreyPlane/algebraic-graph" `datedSection` bold "AlgebraicGraph",
      cn "algebraic graph的Scala实现",
      en "algebraic graph implemented in Scala",
      itemize
        [ cn "\\item 使用ADT来encoding图（Empty，Vertex，Connect，Overlay）这样就构成了一个半环（Overlay等于加法，Connect等于乘法）拥有良好的代数性质和组合性，在实际项目中通过这种方式实现了一个programmatically构建自动流程使用的topology的库。",
          en "\\item Using encoding describes in this paper to build a library for constructing the topology of our Flink-like component programmatically, is an elegant solution because the good algebraic properties holds by the encoding, implement both TypeFamilies-based and ADT-based encoding in Scala."
        ]
    ]

aEqB :: Resume
aEqB =
  paragraph
    [ github "GreyPlane/AeqB" `datedSection` bold "A=B",
      cn "esolang A=B的解释器",
      en "esolang A=B interpreter",
      itemize
        [ cn "\\item 使用了Free Monad并且采用了data type a la carte中的实现方式。",
          en "\\item Using Free Monad and implements via approach described in data type a la carte."
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
        csBasic,
        devTools,
        webBackend,
        fp,
        react,
        bigData,
        evangelist
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
      education,
      section
        "工作经历"
        "Work Experience"
        [ convertlabBD,
          convertlabFE
        ],
      section
        "个人项目"
        "Personal Projects"
        [ algebraicGraph
        -- aEqB
        ],
      skills,
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