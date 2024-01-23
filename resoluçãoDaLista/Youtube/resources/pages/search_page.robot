***Settings***
Resource        ../main.robot

***Variables***
&{search_Page}
...     A_First_Result=(//a[@class="yt-simple-endpoint style-scope ytd-video-renderer"])[1]
...     Div_Filter=//div[@id="filter-button"]

***Keywords***
E clique no primeiro resultado
    Wait Until Element Is Visible       ${search_Page.Div_Filter}       10s
    Element Should Be Visible           ${search_Page.Div_Filter}
    Wait Until Element Is Visible       ${search_Page.A_First_Result}       10s
    Click Element                       ${search_Page.A_First_Result}