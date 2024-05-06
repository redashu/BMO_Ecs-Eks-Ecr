### Task 1 


### Solution 1

```
 humanfirmware@darwin  ~  docker  run -d --name ashuc11 alpine  ping fb.com 
ab23fe3da3715b795e161cc740c64e9060abf4b3cf47eff176c9577dff36a23b
 humanfirmware@darwin  ~  
 humanfirmware@darwin  ~  docker  run -d --name ashuc22 alpine  ping fb.com 
9b69e31b5dceefa01f2858ad36b7e70c818b7856702d500bc02f46e0f13fbdd5
 humanfirmware@darwin  ~  docker  exec -it  ashuc11  sh 
/ # 
/ # 
/ # ls
bin    dev    etc    home   lib    media  mnt    opt    proc   root   run    sbin   srv    sys    tmp    usr    var
/ # cd  /mnt/
/mnt # echo hello world  >helloc1.txt
/mnt # ls
helloc1.txt
/mnt # exit
 humanfirmware@darwin  ~  docker  cp  ashuc11:/mnt/helloc1.txt  . 
                                               Successfully copied 2.05kB to /Users/humanfirmware/.
 humanfirmware@darwin  ~  ls
Applications             Documents                Movies                   Public                   tutorials_poc
Applications (Parallels) Downloads                Music                    devops_mastering
BMO_Ecs-Eks-Ecr          Google Drive             Parallels                helloc1.txt
Desktop                  Library                  Pictures                 poc
 humanfirmware@darwin  ~  docker  cp  helloc1.txt ashuc22:/mnt/
                                             Successfully copied 2.05kB to ashuc22:/mnt/
 humanfirmware@darwin  ~  
 humanfirmware@darwin  ~  docker  exec -it ashuc22 sh 
/ # cd /mnt/
/mnt # ls
helloc1.txt
/mnt # exit

```

### Task 2 -- Image build to minimize size 

<details>
<summary>show</summary>
 <p>

  ```bash
      1. Create a dockerfile named alpine.dockerfile 
      2. use alpine as base image 
      3. install python3 
      4. create a directory called /pycodes
      5. copy sample python code into above created directory 
      6. maintainer parent process by CMD 
      7. build image by the name  <yourname>alp:pycodev1 
      8. create a container from the build image and check the output of your python program
       
  ```
 </p> 

 ### Note: python code is on URL 

 [click_here](https://raw.githubusercontent.com/redashu/pythonLang/main/while.py)

### Task 3 

### Docker container  with No internet connection 

<details>
<summary>show</summary>
 <p>

  ```bash
      1.  create a container of <yourname>cc11 
      2. choose oraclelinux:8.4  as docker image 
      3. any process of container
      4. container must not be able to communitcate to other containers as well as not to internet
  ```
 </p>  