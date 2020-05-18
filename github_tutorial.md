# Tutorial on how to set up github
 
 * Firstly sign up for an account on www.github.com
![Home Page](https://gyazo.com/e0682e545dfadab6fbfb7db8a0c19080.png)
* After inserting the details, join a free plan
![Sign-up1](https://gyazo.com/e861f2fb607058b9f5a72705ecc645c9.png)
* Then scroll down the page and click complete setup
![Sign-up2](https://gyazo.com/06ea28fb5c916e0731ffbb7b4eecc265.png)
* After that, post your username on the gc and you'll get an email inviting you to collaborate on the repo
* Click the link on the email and accept the invitation
![Invite](https://gyazo.com/99b83bf6cd51cadaa89ad4e4167006b0.png)
* Clone the **master branch** (donwloading it as zip is fine)
![Cloning](https://gyazo.com/b8daefd4a7b8e8c60d5c5a92343dc3eb.png)
* Make whatever changes you want locally
* Go back to the github repo select **your branch** (left) and click upload files
![Uploading](https://i.imgur.com/pTb0QmJ.png)
* This will show up
![Uploading1](https://i.gyazo.com/738c068aa050e2d7fc4681b818acc2a2.png)
* Drag the **files** (not folder) that you've changed and click the commit directly to branch **make sure it is not master**
* This message will appear
![Uploading2](https://gyazo.com/f4508333da759d078ab93f5b7f806295.png)
* Click compare & pull request
![Uploading3](https://gyazo.com/65a01b09d627f33600298ef9be7d049f.png)
* If everything is fine this will show up (it says able to merge), create pull request
![Uploading4](https://gyazo.com/83903bfb72e90a1729678754e7c4fe82.png)
* Then we will later merge the pull into the master

**IF** you want to try and fix it in case it cannot automatically merge (we have conflicting versions of the script)

* If it is unnable to merge directly this will show up
![Bad1](https://gyazo.com/f9f11794c155bb3976963e27115d375b.png)
* Make pull request as normal, then click **resolve conflicts**
![Bad2](https://gyazo.com/db51511ed086db40ea654e88e93d524d.png)
* The problem will show up, you'll need to fix it manually (in this case, the luis branch made the 1st line which wasn't compatible to the one in the master)
![Bad3](https://gyazo.com/db9124514dd05a87e8039ad79ab596c2.png)
* After fixing it, mark as resolved and commit merge
![Bad4](https://gyazo.com/88d187477091c53963b775a4bec161e0.png)
* Finnaly merge pull request