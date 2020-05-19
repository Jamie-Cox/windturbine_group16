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

* Download GitHub Desktop and run .exe
![Sign-up6](https://i.gyazo.com/6a58c3bf3ef57838dcc25b03a289c3ab.png)
* Sign in using github.com account and this should pop up
![Sign-up7](https://i.gyazo.com/38f3395b89ee47f10542ebb12e3f49e7.png)
* Open up our repo and click clone and then open in desktop
![Cloning1](https://i.gyazo.com/1d9ac0f422653ae5c5926e205355284b.png)
* A pop-up appears, click open GitHubDesktop.exe
![Cloning2](https://i.gyazo.com/f27a04fd2bf8c35e3c0e136bed5a94d2.png)
* This will pop up the on the desktop app, change the Local Path if you want to (this is where the repo will be stored on your computer). Then click clone
![Cloning3](https://i.gyazo.com/7138bc8cec3d0dbcd4faa8ce767b82b2.png)
* The **fetch origin** buttom serves to download the lattest updates of the files, **always fetch the main branch before starting to work** to get what your colleagues have been working on, on your pc. This prevents the code breaking a ton.
* After fetching the main brainch, open the files as usual and work on then
* Now open the files as you want, and make the changes you want to make
* Once done the Desktop app will look like this
![Update1](https://gyazo.com/ca97431320620fa3f12b7d6c703d6506)
* We can see the file that has been changed on the left and what was done. Now **change from the master branch to your own** and bring the changes.
![Update2](https://i.gyazo.com/43e4f8dc45cabd34e1b19d8f7e706d64.png)
* **Please** include a message on "Update PHASE1_Group16.mlx" saying what you've done to the file. This helps keep track of what each change made. Commit the file to your branch
* If there is a conflict press yes commit files (this won't affect the master branch yet).
![Update3](https://i.gyazo.com/06084e06d954539668a538b8ec17f861.png)
* After this push to origin

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