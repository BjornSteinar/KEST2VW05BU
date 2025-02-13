![][image1]  
**Lab – Configure Windows Local Security Policy** 

**Introduction** 

In this lab, you will configure Windows Local Security Policy. Windows Local Security Policy is used to  configure a variety of security requirements for stand-alone computers that are not part of an Active Directory  domain. You will modify password requirements, enable auditing, configure some user rights, and set some  security options. You will then use Event Manager to view logged information. 

**Recommended Equipment** 

 A computer with Windows installed. 

**Instructions** 

**Part 1: Review the security requirements.** 

A customer needs to have six stand-alone Windows computers at a branch office configured according to the  security policy for the organization. These computers are not part of an Active Directory domain. The policies  must be manually configured on each computer.  

The security policy is as follows: 

 Passwords must be at least 8 characters. 

 Passwords must be changed every 90 days. 

 A user may change their password once a day. 

 A user must use a unique password for at least 8 changes of the password. 

 A password must consist of three of the following four elements: 

o At least one lower case alpha character. 

o At least one upper case alpha character. 

o At least one numerical character. 

o At least one symbol character. 

 Users are locked out of the computer after 5 attempts to enter the correct password. A user must wait 5  minutes for the lookout counter to reset. 

 Each security setting for Audit Policy should be enabled. 

 After 30 minutes of inactivity, the user will be automatically logged out. (Windows 8.1 and 8.0 only)  Users must log in before removing a laptop from a docking station. 

 At log in, users should be presented with the following title and text:  

o Title: **Caution:** 

o Text: **Your activity is monitored. This computer is for business use only.** 

 Users will receive a reminder to change the password 7 days before it expires. 

The Windows Local Security Policy tool provides many more settings that are beyond the scope of this  course.

♥ 2015 \- 2022 Cisco and/or its affiliates. All rights reserved. Cisco Public Page **1** of **4**   
**Lab – Configure Windows Local Security Policy** 

**Part 2: Configure the Password Policy security settings.** 

This lab will focus on the **Account Policies** and **Local Policies**, as highlighted in the figure below. The rest of  the **Security Settings** are beyond the scope of this course. 

The first six requirements of the company’s security policy are configured in the **Account Policies** section of  the **Local Security Policy** tool. 

a. To access Local Security Policy, click **Start** and search for **Local Security Policy**. 

b. In the Local Security Policy window, expand the **Account Policies** and click **Password Policy**. Six  policies are displayed in the right panel with their associated default security settings. 

c. The first policy, **Enforce password history**, is used to set the number of unique passwords the user  must enter before being allowed to reuse a password. According to the organization’s security policy in  the previous part, the security setting for this policy should be **8**. Double-click **Enforce password history** to open the **Enforce password history Properties** window. Set the value to **8**. 

d. Using the security policy requirements in the previous part, fill in the values you should set in **Local  Security Policy** for the remaining **Password Policy** security settings. 

| Policy  | Security Setting |
| ----- | ----- |
| Enforce password history  | 8 |
| Maximum password age |  |
| Minimum password age |  |
| Minimum password length |  |
| Password must meet complexity requirements |  |
| Store passwords using reversible encryption |  |

**Note**: The **Store passwords using reversible encryption** security setting should always be disabled.  Storing passwords using reversible encryption is essentially the same as storing plaintext versions of the  passwords. For this reason, this policy should never be enabled unless application requirements  outweigh the need to protect password information. 

e. Double-click each of the policies and set the values according to your entries in the table above. 

**Part 3: Configure the Account Lockout Policy security settings.** 

Questions:   
According to the security policy in an earlier part, how many times is a user allowed to attempt to login before  the account is locked? 

**The account will be locked after 5 failed attempts**

How long should the user have to wait before attempting to log back in? 

**After 5 minutes the user may attempt to log back in**

Use the **Account Lockout Policy** security settings in **Local Security Policy** to configure the policy  requirements. 

**Hint**: You will need to configure the **Account lockout threshold** first.

♥ 2015 \- 2022 Cisco and/or its affiliates. All rights reserved. Cisco Public Page **2** of **4**   
**Lab – Configure Windows Local Security Policy** 

**Part 4: Configure the Audit Policy security settings.** 

a. In Local Security Policy, expand the Local Policies menu, and then click **Audit Policy**. 

b. Double-click **Audit account logon events** to open the **Properties** window. Click the **Explain** tab to learn  about this security setting. 

c. Click the **Local Security Setting** tab, and then click the check boxes for **Success** and **Failure**. Click **OK** to close the **Properties** window and apply the security settings. 

d. Continue modifying the rest of the **Audit Policy** security settings. Click the **Explain** tab for each and read  what it does. Click the **Success** and **Failure** check boxes in each **Properties** window. 

**Part 5: Configure additional Local Policies security settings** 

a. In Local Security Policy, click **User Rights Assignment** under Local Policies to view the security settings. 

b. Although none of the security settings need to be modified to meet the security policy requirements,  spend some time viewing the default settings. 

Question:   
Are there any you would recommend changing? Explain. 

**Shut down the system**

* **Default: Often granted to Users or Guests.**  
  * **Change: Limit to Administrators.**  
  * **Why: Unauthorized shutdowns could interrupt critical services or evade security monitoring.**


c. In Local Security Policy, click **Security Options** under Local Policies to view the security settings. 

d. For the remaining security policy requirements in an earlier part, list the policy and security setting values  you need to change in **Security Options** in the table below. The first one is done for you.  

| Policy  | Security Setting |
| ----- | ----- |
| Interactive logon: Machine inactivity limit  | 1800 seconds |
|  |  |
|  |  |
|  |  |
|  |  |

**Part 6: Test the password policy security settings.** 

Test your password policy security settings by attempting to change the password. Try a new password that  does not meet the length or complexity requirements. 

Click **Start** \> **Settings** \> **Accounts** \> **Sign-in options**, and then click **Change** under **Password**. 

You should be presented with a message that your new password does not meet password policy  requirements. 

**Part 7: Export and import security policy settings.** 

The customer has another 5 stand-alone computers that must meet the same security policy requirements.  Instead of manually configuring the settings each computer, export the settings on this computer. 

a. From the menu bar in Local Security Policy, select **Security Settings** \> click **Action** \> **Export policy...**

♥ 2015 \- 2022 Cisco and/or its affiliates. All rights reserved. Cisco Public Page **3** of **4**   
**Lab – Configure Windows Local Security Policy** 

b. Choose a name for the **.inf** file and save it to a location of your choice.  

c. Copy the security policy **.inf** file to a flash drive. Take the flash drive to another computer. Insert the flash  drive, open **Local Security Policy**, and click **Action \> Import Policy...** Locate the **.inf** on the flash drive  and open it to apply the security policy to the new computer. 

***End of Document***

♥ 2015 \- 2022 Cisco and/or its affiliates. All rights reserved. Cisco Public Page **4** of **4** 

[image1]: <data:image/png;base64,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>