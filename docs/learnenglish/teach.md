# 英语教学理论

对于孩子如何教，如何学，理论上都是根据孩子幼儿学习语言的发展特点给与相应的配套资源。但这里存在在家里习得和在学校学得的问题，在家里的习得，主要是靠家长根据孩子的兴趣和当前认知提供相应的资源，并利用生活中的场景复现，这一步对于家长实际能力和实践要求相对较高。在学校的学得主要是知识体系的梳理，比如语法结构的系统性学习，让孩子能在学习中慢慢总结出语法规律，并在课上与外教交流或者与家长在生活中进行复现，才能慢慢的掌握语言技巧，达到融会贯通。而当孩子是入学后才开始英语启蒙，父母更应该是像"教师助理"，收集符合自己孩子的资料，积极配合教师的进度，喂给孩子合适的阅读资料，只有这样父母才能摆脱时间和英语能力的限制，扬长避短。

## 学校教学

### 教学目标

学校的教学这部分以51talk为例，主要服务51talk付费学员，针对正在上青少英语的儿童提供到单元-课程维度的立体化配套资源推荐，包含动画片、绘本和儿歌等。

### 数据结构设计

根据学校的教学目标，主要根据付费学员的当前年龄以及正在上的相关课程进行推荐相应的辅助资源，这部分主要分以下几个底层表：

- **用户基础信息维表(user_base)**

字段                | 说明
----------------- | -----------------------------------
uid               | 用户id                                |
birthday          | 用户生日                                |
gender            | 用户性别                                |
now_level         | 用户当前level水平                         |
grade             | 学生当前年级                              |
purpose           | 学习目的                                |
city              | 用户所在城市                              |
available_time    | 用户每天可用学习时长(min)                     |
current_course_id | 当前课程id                              |
current_unit      | 当前单元                                |
parent_level      | 家长英语水平                              |
parent_time       | 家长每天陪伴孩子学习时间                        |
Kite              | 家庭配套：1 智能电视 2 天猫精灵等 3 随身听等 维表       |
tutorship         | 课外辅导经历：无，几年                         |
interest          | 独特兴趣：喜欢动物，喜欢公主，喜欢Minecraft等，列表多选 维表 |
enlightenment     | 启蒙过英语：无，有少量儿歌，看过动画片，少量单词指认等 维表      |
got_topic         | 已经掌握的主题：字母，自我介绍，动物 维表               |

- **教材相关基础表(course_base)**

字段         | 说明
---------- | ----------
course_id  | 教材id       |
level_id   | 水平id       |
unit_id    | 单元id       |
lession_id | 课程id       |
topic      | 课程所属的主题，字符 |
grammer    | 课程包含的语法    |

- **CMS立体化资源表(resource_base)**

字段               | 说明
---------------- | ----------------------------------------
id               | 自增id                                     |
isbn             | 书籍唯一编码，视频为null                           |
title            | 资源标题（原标题，大部分英文，也有中文）                     |
title_cn         | 资源中文标题                                   |
publisher        | 资源来源：柯林斯大猫、作者，leap frog等                 |
source           | 资源平台：爱奇艺、优酷、腾讯视频、百度云等                    |
type             | 资源类型：硬皮书, 软皮书,纸板书,机关书、音频，视频              |
binding          | 资源大类：绘本，分级阅读，桥梁书、动画片、儿歌                  |
series           | 系列：I can read, Biscuit, 海尔曼，Reading a-z等 |
category         | fiction和non-fiction: 虚构和写实类              |
usage_type       | 资源作用类型：书籍: 精/泛读, 动画：教学类、教育类和娱乐类，儿歌：韵律，精听 |
highlights       | 资源优势：儿歌+动画，绘本+动画，动画+亲子游戏                 |
language         | 资源语言类型: 中英，英，中文                          |
accent           | 语言音色：美音、英音、印度口音、中式口音等                    |
action           | 亲子阅读、跟读、点读、自主阅读、观看、父母陪同观看等？              |
is_pay           | 是否是付费资源（非可获取电子版必须购买绘本或者动画片的）             |
if_inner         | 是否是内部资源                                  |
award            | 获奖资源：比如brown bear是获奖作品                   |
if_support       | 是否有配套资源(动画片有配套绘本，如maisy mouse）           |
ability          | 能力：听、说、读、写、韵律、情商、运动、数学逻辑、乐感、视听触觉等        |
topic            | 资源所属的主题，列表比如[动物、颜色]                      |
grammer          | 资源包含的语法，如（时态活用，介词，过去式等）                  |
key_word         | 资源包含的(核心)单词，逗号分隔                         |
key_sentence     | 资源包含的(核心)句型，逗号分隔                         |
sum_words        | 资源包含总词汇量（可计算）                            |
sum_sentences    | 资源包含总句子量（可计算）                            |
sight_words      | 资源包含的sight_words（可计算）                    |
min_age          | 资源适合的最小年龄                                |
max_age          | 资源适合的最大年龄                                |
source_level     | 资源本身的等级，如海尔曼GK                           |
pages            | 资源包含页数（书籍）                               |
voice_speed      | 音视频类：语速, 其他类没有（可计算）                      |
duration         | 课程预计阅读或者观看时长，动画片到每集观看时长，单位分              |
description      | 资源描述，主要的故事摘要                             |
recommend_reason | 推荐理由                                     |
suggest_time     | 建议家长讲解时长                                 |
link             | 资源超链，付费资源可以提供相应购买链接                      |
video_link       | 亲子阅读绘本视频，或者动画片链接                         |
media_link       | 音频链接（适合绘本同时有音频讲解的）                       |
picture_link     | 绘本链接（适合绘本讲解的）                            |
parent_guide     | 亲子活动设计或者指导提示                             |
parent_aids_link | 亲子相关教具的链接                                |
other_link       | 一些其他综合相关资源链接                             |
sex              | 资源偏好性：1 男，2 女 0 中性                       |
role             | 主角类型：兔子、狗狗、真人等（比主题词更细）                   |
edit_status      | 资源状态：测试/上线/下线                            |
add_time         | 添加资源时间                                   |
update_time      | 最后更新资源时间（更新其中一个字段即更新）                    |
add_by           | 按照用户登录的admin_id补全                        |
update_by        | 按照用户登录的admin_id补全                        |

目前这部分已有工作：

- 齐琛完成的[[Big cat & Highlights 200多本绘本与CEJlevel的匹配|/share/education-share/edu-txt-analysis-1-22.html]]： 主要问题绘本并不齐全，看是否有完整版的大猫和highlights绘本,已完善的200多本绘本主题可以用
- 16133本[[安妮鲜花图书馆的相关书籍|/share/education-share/dw_annie_flower_book]]: 内容比较结构化，可利用度较高。未去重，包含同本书的不同资类型；相关书籍的[[借阅排名|/share/education-share/dw_annie_flower_listlendlist]]和[[收藏排名|/share/education-share/dw_annie_flower_listwish]]已完成标注，
- 4911个[[common_sense的国外多维度资源|/share/education-share/dw_common_sense_media_book]]：包含音乐、书籍、电影等，信息相对杂乱一些，并且每个内容有家长指导性介绍
- [CMS内容管理系统](http://10.0.2.70:8123/admin/cms/)：整个体系设计和内容录入系统，登录采用LDAP认证体系

### 触发方式

配套内容的推荐，目的是建立孩子对本单元内容的兴趣度，同时提前预习或复习了本单元的相关内容用户，让孩子在快乐中重复，快乐中提升。主要的触发方式有如下几种：

- 51talk-App和PC主站：发版复杂，跨部门合作需要时间长，但是用户主要上课或者预约就能接触到，课程相关性高
- 51talk微信服务号：轻便无需发版，跟用户上课的时间性可能会延时，使用服务号的模板可以个性化的html模板，且可以自己打点，使用服务号文章体系只有微信可以记录数据
- CC或者SS进行一对一服务

#### 使用场景

这部分目前区分体验课和付费课，主要的使用场景和内容：

- 单元前兴趣引导推荐：用户完成上一单位后，进行推荐下一单元的兴趣引导动画
- 课后主题相关推荐: 用户上完某一节课后，推荐相关的绘本、儿歌或者动画片
- 家长实操相关推荐：

  1. 内容推荐：告诉家长如何给孩子读绘本，如何跟孩子完成指认、如何设计亲子活动等。这部分对上课时间没有那么强的敏感性，考虑按照月份或者季度推荐，
  2. 活动推荐：通过明星外教、家长学院相关活动资源进行推荐，根据孩子处于什么时期，以及上课相关表现，推荐相关活动。这部分可以与3Q老师那边合作

#### 当前挑战

触发部分的挑战由于资源本身不在我们这，无法控制，需要通过超链或者直接知识性的列表告诉家长，使得家长的可操作性变弱，这一块可能的解决方案：

- 免费资源：绘本资源直接给出超链，音视频资源给出能播放的链接或者电视聚合，这部分如有需要也可以考虑跟一些视频网站合作，
- 付费资源：比如与京东合作，比如可能的一些绘本、分级阅读资源给京东商家导流（当然得足够大才有谈的必要）

### 评估方式

我们希望知道通过横向拓展，立体化的资源的配合使用中，评估家长是否会实操，孩子是否对资源感兴趣，以及后续1-3月中孩子的输出速度是否能有显著的提升。根据不同场景下推荐的资源列表，我们需要评估资源用户是否看(听)完，是否感兴趣，是否有其他类似资源

- 不同类型的资源列表中，完成/看了一部分不感兴趣/未完成 的比例
- 全部的资源列表中，完成/看了一部分不感兴趣/未完成 的比例
- 不同类型的资源中，家长操作是准确完成、不知道如何辅助未完成、还是没时间辅导
- 同一单元的AB测试中，有配套资源的孩子相比没有配套资源的孩子在上课上的输出是否有显著差异

## 家长教学

家长的任务主要是：学龄前根据孩子兴趣提供合适的材料，其次是在场景中进行交互帮助孩子理解，进阶是跟孩子一起学英语，进行亲子阅读。

幼儿启蒙期：

- [如何帮助幼儿理解语言：TPR](http://www.lxwc.com.cn/home.php?mod=space&uid=4047&do=blog&quickforward=1&id=972)
- [激发儿童阅读兴趣的秘诀：做游戏、编故事、做游戏、编故事](http://www.lxwc.com.cn/blog-4047-4775.html)
- [动词启蒙相关亲子活动](http://www.lxwc.com.cn/post-2323-5-1.html)
- [指认和疑问句相关亲子活动](http://www.lxwc.com.cn/post-2323-4-1.html)
- [名词单复数的亲子活动](http://www.lxwc.com.cn/post-2323-3-1.html)

启蒙中期：

- [如何帮助儿童快乐高效记单词练句型学语法](http://www.lxwc.com.cn/home.php?mod=space&uid=4047&do=blog&quickforward=1&id=5519)
- [如何将亲子英语互动融入日常生活](http://www.lxwc.com.cn/post-13555-1-1.html)
- [玩绘本学英语](http://www.lxwc.com.cn/blog-4047-7948.html)
- [发掘绘本的中的"快乐元素"，让孩子爱上绘本](http://www.lxwc.com.cn/home.php?mod=space&uid=4047&do=blog&quickforward=1&id=4770)
- [如何给孩子念故事书](http://www.lxwc.com.cn/post-752-1-1.html)
- [牛津阅读树简介及双语阅读示范](http://www.lxwc.com.cn/blog-4047-1194.html)

启蒙后期：

- [把绘本读薄：如何集中训练比较级&最高级](http://www.lxwc.com.cn/home.php?mod=space&uid=4047&do=blog&quickforward=1&id=5412)
- [把绘本读薄：如何在绘本阅读中拓展词汇](http://www.lxwc.com.cn/home.php?mod=space&uid=4047&do=blog&quickforward=1&id=2122)
- [如何创造环境帮助儿童掌握高级语法](http://www.lxwc.com.cn/home.php?mod=space&uid=4047&do=blog&quickforward=1&id=4635)
- [时态综合阅读的极品：An Elephant and Piggie系列](http://www.lxwc.com.cn/home.php?mod=space&uid=4047&do=blog&quickforward=1&id=1195)
