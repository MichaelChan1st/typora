## git使用总结

* 首先要知道git和github是不同的，我们最不熟悉的就是git的使用而非github的使用

1. 使用SSH让本地仓库与远程仓库github建立连接，MAC和Linux自带SSH，Window在安装git的时候勾选openSSH就自动安装上了SSH
2. 在本地某个文件夹的目录下使用命令 git init初始化为本地git仓库，对于新进文件夹的文件使用git add去追踪他们，实际上就是放入本地git仓库的缓存区中，然后使用git commit 提交它们，这一步就讲这些文件正式上传到本地git仓库里面了（不然只是在文件夹中）
3. 将本地git仓库与远程具体的库建立联系 git remote add 远程库的别名 [git@github.com](mailto:git@github.com):git_username/repository_name.git，如果不小心添加错了可以通过代码git remote remove 远程库名称 来取消关联

4. 连接之后就可以使用git push 远程库别名 分支名称 命令上传文件到远程的github中了

* 另外一种方式就是直接对远程库迭代更新

1. 在指定的文件夹下使用git clone 远程库地址
2. git pull name master 
3. 对拉取的文件进行更改，然后git add 和git commit
4. 最后git push name master