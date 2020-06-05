<#import "parts/common.ftlh" as c>

<@c.page>
    <h5>${username}</h5>
    <div class="mb-2">${message?ifExists}</div>

    <form method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Password:</label>
            <div class="col-sm-6">
                <input type="password" class="form-control" name="password" placeholder="Password">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Email:</label>
            <div class="col-sm-6">
                <input type="email" class="form-control" name="email" placeholder="e-mail" value="${email!''}">
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div class="form-group row">
            <div class="col-sm-6">
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </div>
    </form>
</@c.page>