<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div>
        <@l.logout />
    </div>

    <span style="color: lightblue"><a href="/user">User List</a></span>

    <div>
        <form method="post" enctype="multipart/form-data">
            <input type="text" name="text" placeholder="Введите сообщение"/>
            <input type="text" name="tag" placeholder="Тэг"/>
            <input type="file" name="file">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Добавить</button>
        </form>
    </div>

    <div>Список сообщений</div>

    <div>
        <form method="get" action="main">
            <input type="text" name="filter" value="${filter?ifExists}"/>
            <button type="submit">Найти</button>
        </form>
    </div>

    <div>
        <#list messages as message>
            <div>
                <b>${message.id}</b>
                <span>${message.text}</span>
                <i>${message.tag}</i>
                <strong>${message.authorName}</strong>
                <div>
                    <#if message.fileName??>
                        <img src="/img/${message.fileName}">
                    </#if>
                </div>
            </div>

            <#else>
            No message
        </#list>
    </div>
</@c.page>