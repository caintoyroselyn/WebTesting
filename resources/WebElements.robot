*** Variables ***
${loginbtn}=  (//span[@class='navigation-top-menu-label navigation-top-menu-label-arrow'])[6]
${login}=   //a[@href='/en/login?returnUrl=%2Fen']
${username}=    //input[@id='Username']
${password}=    //input[@id='Password']
${pmanual}=  //input[@value='Manual Tester']
${csspmanual}=  css:table>tbody>tr:nth-of-type(6)>td:nth-of-type(2)>span:nth-of-type(1)>input[value='Manual Tester']
${fullpmanual}=     xpath:/html/body/main/div/div/div[2]/div[4]/div/form/table/tbody/tr[6]/td[2]/span[1]/input
${continents}=    //select[@name="continents"]
${selcommandlist}=    //select[@name="selenium_commands"]
${alertbtn}=    //button[@onclick="myFunction()"]
${frame1}=      //iframe[@name="packageListFrame"]
${frame1link}=  //a[@href="org/openqa/selenium/package-frame.html"]
${frame2}=      //iframe[@name="packageFrame"]
${frame2link}=  //a[@href="Alert.html"]
${frame3}=      //iframe[@name="classFrame"]
${frame3link}=  //a[@href="#accept()"]
${nextwindowbtn}=     (//button[@class="btn btn-info"])[1]
${newwindow}=       (//meta[@content="Selenium automates browsers. That's it!"])[1]
${downloads}=       (//a[@class="nav-link"])[1]