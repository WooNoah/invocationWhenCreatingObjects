####我是标题
> 今天写个demo来证实下iOS内创建一个应用的时候，各个方法（alloc  allocWithZone init initWithFrame）的调用顺序
####结论

这里直接写结论了。想看流程的，自己下载项目打断点看吧。

1. `allocWithZone`
2. `alloc`
3. `initialize` 在该类第一次调用的时候会执行该方法、且**只执行一次**
4. `initWithFrame`
5. `init`

*在外部调用init(不是initWithFrame)的时候，会先进到override的init方法内，然后在init的作用域内，调用`[super init]`方法，此时会调用`initWithFrame`方法*

####总结
- **`initialize`:在该类第一次调用的时候会执行该方法、且**只执行一次****
- **当外部调用`init`方法的时候，会默认调用`initWithFrame`方法**
- **当外部调用`initWithFrame`方法的时候，是不会调用`init`方法的**
- **alloc：外部调用`alloc`方法的时候，会默认先调用`allocWithZone`方法**

*所以，如果想要自定义一个事件（函数）的时候， 写在`initWithFrame`方法中会比较可靠*

####另外，还要说一点`alloc`与`new`的区别
`alloc`：分配内存。

`init`：初始化。

`new`：代替上面两个函数：分配内存，并且初始化。

注意：

两者区别：
1. `alloc`的时候调用了`allocWithZone`它给对象分配内存的时候，一般是把关联的对象分配到一个相邻的内存区域内，以便于调用时消耗很少的内存，提升了程序处理速度。

另外

- 不推荐使用new:
*使用new的话，初始化方法被固定死**只能使用init，不能调用其他的initXX方法**。*
- **采用new方法只能采用默认的init方法完成初始化，采用alloc的方式可以用其他定制的初始化方法。**

