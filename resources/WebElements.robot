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