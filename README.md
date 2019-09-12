# Ruby学习回忆

> 参考教材：《Ruby基础教程》 第5版 —— [日]高桥征义 后藤裕藏著

## 第一部分
### 第一章：Ruby初探

1. Ruby官网：[http://www.ruby-lang.org/zh_cn/](http://www.ruby-lang.org/zh_cn/)
2. Ruby命令的执行方法：
    1. 命令行工具中：`ruby <filename>.rb`
    2. irb：交互式Ruby运行环境（使用时需要注意中文的问题）
3. 字符串
    1. `''` 和 `""` 的区别：在表示一般字符串时，两者没有区别，不过当字符串内容含有`\n \s`等转义字符时，`''` 中的字符不会经过转义。
    2. `puts` 函数和 `print` 函数还有 `p` 函数的区别：
        * `puts` 函数会原封不动并将转义字符进行转义后输出，而且末尾在每次输出完一个参数后自动加个换行
        * `print` 函数： `puts` 函数的不加换行版
        * `p` 函数： 对内容不进行转义直接输出，该函数一般只给编程者使用
4. 方法的调用
    1. `function_name(arg1, arg2...)`：带括号的参数调用，适合参数较多的情况
    2. `function_name arg1, arg2...`：不带括号的调用，调用格式简洁明了，没有固定的要求，合适的地方用合适的方法才是最好的
5. 注释
    1. 单行注释法： `# 这里是注释`
    2. 多行注释法： 
        ```ruby
       =begin
       这里是注释
       =end
        ```
6. 控制语句：基本四类顺序，条件，循环和异常，具体下面再写。
### 第二章：便利的对象
1. 数组：`[]`
2. 散列：在Java和C++中称为Map，在Python和JavaScript中称为字典，大差不差，key-value形式的键值对。
3. 正则表达式：基本格式为 `/模式/ =~ 希望匹配的字符串序列` （ `=~` 符号的使用）
### 第三章：创建命令
1. `ARGV` 系统变量的使用，例如： `ruby print_argv.rb 1st, 2nd` 那么 `ARGV[0] == "1st"; ARGV[1] == "2nd"` 以此类推
2. 文件的读取：开-读（写）-关三个基本处理流程，例如：
    ```ruby
   filename = ARGV[0]
   text = File.open(filename).read
   puts text
   text.close
    ```
    哈哈，就是这么简单，不像有的语言那么复杂。说你呢C和Java。
3. 引用其他文件： `require 希望使用的库名/require_relative 希望使用的库名`，前者用来引用已存在的库，后者用来引用相对路径下的库。
## 第二部分
### 第四章：对象，变量和常量
1. 对象：数值对象，字符串对象，数组散列对象，正则表达式对象，事件对象，文件对象，符号对象，范围对象和异常对象等等等等等等...
2. 类：对象的抽象层面（一般的面向对象思想哈哈哈）
3. 变量（在Ruby中变量有点特殊，小心作用域。此外，变量的命名方法和上下文共同决定了变量种类）
    1. 局部变量（local variable）：英文小写字母或_开头 `name = "哈哈哈"`
    2. 全局变量（global variable）：使用美元符 `＄` 开头 `$name = "哈哈哈"`
    3. 实例变量（instance variable）：以 `@` 开头 `@name = "哈哈哈"`
    4. 类变量（class variable）：以 `@@` 开头 `@@name = "哈哈哈"`
    5. 实际上还有预定义变量和伪变量
4. 常量：使用大写英文字母开头，例如 `NAME = "哈哈哈大写版"`
5. 保留字（一个大大的表）

    | `__LINE__` | `__ENCODING__` | `__FILE__` | `BEGIN` | `END` |
    |---|---|---|---|---|
    | `alias` | `and` | `begin` | `break` | `case` |
    | `class` | `def` | `defined?` | `do` | `else` |
    | `elsif` | `end` | `ensure` | `false` | `for` |
    | `if` | `in` | `module` | `next` | `nil` |
    | `not` | `or` | `redo` | `rescue` | `retry` |
    | `return` | `self` | `super` | `then` | `true` |
    | `undef` | `unless` | `until` | `when` | `while` |
    | `yield` | `` | `` | `` | `` |

6. 多重赋值：就是 `a, b = 1, 2` ，可以有灵活的编程方法，例如 `a, b = b, a`
7. 命名方法：驼峰表示法或者下划线表示法，都可以。不过约定俗成的是：
    > **Ruby中的变量名和方法名要用下划线表示法，类名和模块名要用后者**。
### 第五章：条件判断