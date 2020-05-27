<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    Add new user
    ${message?ifExists}
    <@l.login "/registration" />
    <a href="/registration">Add new user</a>
</@c.page>