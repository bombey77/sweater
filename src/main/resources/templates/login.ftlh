<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div class="mb-2">${message?ifExists}</div>
    <@l.login "/login" false/>
</@c.page>