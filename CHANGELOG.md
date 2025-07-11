# 更新日志

本项目的所有重要变更都将会记录在此文件中。

## [3.7.0.0.07062025_alpha] - 2025-07-06

### 新增

- 新增开发调试版左下角新增当前提交哈希
- 增加哈希文本点击后可复制哈希值功能
- 类 GameRunFighterGroup 增加 getter currentFighterId，用于获取当前场上角色的 ID
- 类 GameRunFighterGroup 增加 getter  currentAssisterId，用于获取当前场上辅助的 ID
- 类 MCUtils 增加方法 changeSpColor，用于更改游戏 Sprite 颜色，默认绿色偏移 -85
- 类 GameRunDataVO 增加属性 isSameFighter，用于判断当前场景下是否是相同人物
- 类 GameRunDataVO 增加属性 isSameAssister，用于判断当前场景下是否是相同人物
- 增加 P2 相同辅助变色逻辑
- 增加 P2 相同角色下释放独立道具的变色逻辑
- 增加 P2 相同角色下释放飞行道具的变色逻辑
- 增加 P2 相同角色下释放跟随效果的变色逻辑

### 更改

- 忽略调用 stop 方法时产生的 2029 错误
- 将 FighterMain 的 colorTransform 属性提出到所有 IGameSprite 实例
- 重构 P2 变色逻辑，增加小队模式下的变色支持
- 重构变色逻辑，将分散在各处的变色逻辑统一整合到类 MCUtils.autoChangeSpColor 方法中

### 修复

- 修复游戏中处于连续震动状态时，强制返回主界面再次开局后，屏幕震动未结束的 BUG
- 修复死神方角色在释放灵压爆发被动技能的时候，在聚能动画出来后，灵压爆发动画出现前返回主界面，此时再次开局发现灵压爆发动画继续播放的 BUG
- 修复小队模式闯关胜利后，如果己方第一个人物未被击败，奖励分失效的 BUG

## [3.7.0.0.07032025_alpha] - 2025-07-03

### 新增

- 类 FighterVO 增加属性 hasWarning，用于控制选人时是否显示警告图标提示需要注意
- 增加使用必杀时，游戏地图会变暗的效果

### 更改

- HarmanSDK 由 50.2.4.1 升级到 51.0.1.1
- 更新默认 UI 界面画质和游戏界面画质为 StageQuality.LOW

### 修复

- 修复手机模式下，在语言选择页面缺少触屏操作逻辑的 BUG
- 修复手机模式下设置页面滑动到最底端时坐标计算错误的 BUG
- 修复调用 addGameSprite/addGameSpriteAt 后，游戏元件出现慢放的 BUG

## [3.7.0.0.06302025_alpha] - 2025-06-30

### 新增

- 类 HitVO增加 targetApplyG 参数，用于此次伤害命中对手后，控制对手是否受到重力效果

## [3.7.0.0.06122025_alpha] - 2025-06-12

### 新增

- 类 HitVO 增加 customEffect 参数，值：{customMcCls: mc_cls, customSndCls: snd_cls, ...}

## [3.7.0.0.05072025_alpha] - 2025-05-07

### 修复

- 修复 小队模式，选择完辅助后卡住的 BUG

## [3.7.0.0.04162025_alpha] - 2025-04-16

### 新增

- 制作组界面加入对于 GreenHD 的 Grimm 感谢
- 制作组页面增加当前提交哈希
- 增加 显示判定面 功能

### 修复

- 修复 是否显示血量开关设置 未在手机版生效的 BUG
- 修复 是否显示血量开关设置 未在 PC 版生效的 BUG

## [3.7.0.0.04092025_alpha] - 2025-04-09

### 新增

- 设置新增 是否显示血量开关

### 更改

- 更改设置画质对于实际 PC 端的表现
- 更新 LIB_Kyo 库的 greensock 版本

### 移除

- 移除默认菜单的更多游戏

## [3.7.0.0.04072025_alpha] - 2025-04-07

### 更改

- 当处于无双模式下时，对话框样式始终为无双样式

### 修复

- 修复手机版菜单页面滑动手感

### 移除

- 移除手机版菜单的更多游戏

## [3.7.0.0.03082025_alpha] - 2025-03-08

### 修复

- 修复手机版制作组页面文字排版问题
- 修复携带有 ...args 参数的全局函数在互相引用时产生的引用错误

## [3.7.0.0.03032025_alpha] - 2025-03-03

### 新增

- 手机版观战模式

## [3.7.0.0.02122025_alpha] - 2025-02-12

### 新增

- 初始化 CORE_Components 模块

## [3.7.0.0.12212024_alpha] - 2024-12-21

### 更改

- 重构功能：当防御时受到破防伤害后，削减耐力从固定 90 点改为 90%

### 修复

- 修复当处于刚身状态防御时，仍会被攻击破防的问题

## [3.7.0.0.12052024_alpha] - 2024-12-05

### 新增

- 初始化 SHELL_Mob 模块

## [3.7.0.0.11252024_alpha] - 2024-11-25

### 新增

- 新增 SHELL_Pc 的 FlashBuilder 工程支持

### 修复

- 修复没有调用所选语言的默认字体的问题

## [3.7.0.0.11192024_alpha] - 2024-11-19

### 新增

- 新增 取消保存当前设置 功能

### 更改

- 更改 SHELL_Pc 默认画质为低画质

### 修复

- 修复遍历字典算法错误导致的类型转换失败问题
- 修复 ui/fight 文件的变量声明问题

## [3.7.0.0.11132024_alpha] - 2024-11-13

### 更改

- 更新制作组名单
- 重构主菜单选项按钮的排列方式

### 修复

- 修复 AI 不防御辅助的问题（临时解决）
- 修复 SHELL_Pc 的 无双模式 未在主界面的问题

## [3.7.0.0.11112024_alpha] - 2024-11-11

### 修复

- [#3] 修复BUG: 创建AI时，AI等级引用不正确的问题
- [#4] 修复BUG: 小队模式下，1p选择顺序选择完之前去选2p顺序报空指针异常的问题

## [3.7.0.0.10222024_alpha] - 2024-10-22

### 新增

- 新增 FlashBuilder 工程支持
- 新增 观战电脑 模式

### 更改

- 重构部分资源格式，从 xml 文件转为 json 文件
- 更改额外选人框颜色为红色
- 重构 SHELL_Dev 的测试组件

## [3.7.0.0.10192024_alpha] - 2024-10-19

### 新增

- 新增旧版（3.3）以前的版本使用键盘事件相应对话框

### 更改

- 重构相关逻辑，梳理一般对话框和特殊（无双）对话框

## [3.7.0.0.10132024_alpha] - 2024-10-13

### 新增

- 游戏语言设置场景
- 初始化 LIB_PclLib 模块

### 更改

- 更改游戏加载方式，使其适应新增的语言设置场景

### 修复

- 修复当在非 MOB 模式下时，会有返回按钮的问题
- 修复设定字体时，字体效果不生效的问题

## [3.7.0.0.10062024_alpha] - 2024-10-06

### 更改

- 修改默认操作方式为经典模式
- 修改默认窗口样式为不全屏

### 移除

- 移除健康游戏忠告

## [3.7.0.0.10042024_alpha] - 2024-10-04

### 新增

- 初始化空工程
- 初始化 LIB_KyoLib 模块
- 初始化 CORE_Shared 模块
- 初始化 CORE_Utils 模块
- 初始化 CORE_KernelLogic 模块
- 初始化 SHELL_Pc 模块
- 初始化 SHELL_Dev 模块

### 更改

- 修改默认画质为低画质

### 修复

- [#1] 修复在执行构建前的资源清理时，5DPLAY_TOOLS 提供的 SyncAssets 工具只清理了 pc 通道的资源
- [#2] 修复BUG: 不存在无双模式时，声音被意外唤醒

[3.7.0.0.07062025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.07032025_alpha...3.7.0.0.07062025_alpha
[3.7.0.0.07032025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.06302025_alpha...3.7.0.0.07032025_alpha
[3.7.0.0.06302025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.06122025_alpha...3.7.0.0.06302025_alpha
[3.7.0.0.06122025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.05072025_alpha...3.7.0.0.06122025_alpha
[3.7.0.0.05072025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.04162025_alpha...3.7.0.0.05072025_alpha
[3.7.0.0.04162025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.04092025_alpha...3.7.0.0.04162025_alpha
[3.7.0.0.04092025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.04072025_alpha...3.7.0.0.04092025_alpha
[3.7.0.0.04072025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.03082025_alpha...3.7.0.0.04072025_alpha
[3.7.0.0.03082025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.03032025_alpha...3.7.0.0.03082025_alpha
[3.7.0.0.03032025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.02122025_alpha...3.7.0.0.03032025_alpha
[3.7.0.0.02122025_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.12212024_alpha...3.7.0.0.02122025_alpha
[3.7.0.0.12212024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.12052024_alpha...3.7.0.0.12212024_alpha
[3.7.0.0.12052024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.11252024_alpha...3.7.0.0.12052024_alpha
[3.7.0.0.11252024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.11192024_alpha...3.7.0.0.11252024_alpha
[3.7.0.0.11192024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.11132024_alpha...3.7.0.0.11192024_alpha
[3.7.0.0.11132024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.11112024_alpha...3.7.0.0.11132024_alpha
[3.7.0.0.11112024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.10222024_alpha...3.7.0.0.11112024_alpha
[3.7.0.0.10222024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.10192024_alpha...3.7.0.0.10222024_alpha
[3.7.0.0.10192024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.10132024_alpha...3.7.0.0.10192024_alpha
[3.7.0.0.10132024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.10062024_alpha...3.7.0.0.10132024_alpha
[3.7.0.0.10062024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/compare/3.7.0.0.10042024_alpha...3.7.0.0.10062024_alpha
[3.7.0.0.10042024_alpha]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/releases/tag/3.7.0.0.10042024_alpha

[#1]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/issues/1
[#2]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/issues/2
[#3]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/issues/3
[#4]: https://github.com/5DPLAY-Game-Studio/BleachVsNaruto/issues/4
