---
link: 'http://more2.starfall.com/n/level-k/index/load.htm'
media_type: 动画
tags: 字母
platform: starfall
ability: 听
description: 以动画的方式，教小孩子认识26个英文字母
is_pay: false
age_min: 3
age_max: 5
---

# 英语学习理论

- [[英语习得理论|learnenglish/acquisition]]

- [[英语教学法|learnenglish/teach]]

- [[英语测评法|learnenglish/test]]

## 资源整合

[果壳的Mooc学院](https://mooc.guokr.com/course/)搜集了各个网络学习平台的课程集中展示， 可供用户收藏和评价，另外计算课程的相关度做推荐。

类似的，我们也可以整合英语学习资源，供用户选取。 同时搜集反馈(评价，收藏)，同时根据学员水平, 做个性化推荐。

- link: 链接
- media_type: 资源类型，[音频, 视频(儿歌，动画，电影，等等),阅读材料]
- tags: 标签，任意标签如 "亲子阅读" "自然拼读" "分级阅读"
- platform: 平台, 如(starfall,)
- ability: 用于锻炼哪方面的能力(听 说 读 写)
- description: 描述该资源的内容简介
- grmmer：描述该资源的语法点（内容到最细颗粒度需要，比如动画片的某一集，儿歌资源的的某一首，分级读物的某个分级的某一本）
- topic：描述该资源的主题（内容到最细颗粒度需要，比如动画片的某一集，儿歌资源的的某一首，分级读物的某个分级的某一本）
- is_pay: 是否需要付费
- age_min: 适合最小几岁的孩子
- age_max: 适合最大几岁的孩子

可以统一使用yaml格式，例:

```yaml
link: http://more2.starfall.com/n/holiday/hundredthday/load.htm
media_type: Flash交互动画
tags:
platform: starfall
ability:  听
description: 教小孩子用英文数数
is_pay: False
age_min: 3
age_max: 5
---
link: http://more2.starfall.com/m/math/calendar/load.htm
media_type: Flash交互动画
tags:
platform: starfall
ability:  听
description: 教小孩子用读日期，月份
is_pay: False
age_min: 3
age_max: 5
```
