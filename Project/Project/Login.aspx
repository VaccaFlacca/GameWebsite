<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.Login" %>

<!DOCTYPE html>

<link rel="stylesheet" type="text/css" href="./StyleSheets/Sidebar-middle.css" />
<link rel="stylesheet" type="text/css" href="./Content/bootstrap-grid.css"/>
<link rel="stylesheet" type="text/css" href="./Content/bootstrap-grid.min.css" />
<link rel="stylesheet" type="text/css" href="./Content/bootstrap-reboot.css"/>
<link rel="stylesheet" type="text/css" href="./Content/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="./Content/bootstrap.min.css" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:dimgray">
    <form id="form1" runat="server">
        <div class="container">
            <h5 class="test-muted">Login</h5>

            <div class="row">
                <div class="col-4">
                    Enter UserName  
                </div>
                <div class="col-4">
                    <asp:TextBox runat="server" ID="UserName" />
                    <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ErrorMessage="Please Enter User Name" ControlToValidate="UserName" Style="color:red"/>
                </div>
                <div class="col-4">

                </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Enter Password
                    </div>
                    <div class="col-4">
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="Password" Style="color:red" />
                        
                        <asp:Label Style="color:red" ID="Password_error" runat="server" />
                    </div>
                    <div class="col-4">
                        <asp:Button runat="server" ID="submit" Text="submit" OnClick="submit_Click" />
                        <asp:Button runat="server" ID="Registar" Text="Registar" CausesValidation="false" OnClick="Registar_Click" />
                    </div>
                </div>
         </div>
    </form>
</body>
</html>
