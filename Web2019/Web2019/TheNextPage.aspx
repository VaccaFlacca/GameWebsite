<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TheNextPage.aspx.cs" Inherits="Web2019.TheNextPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        

            Number 1:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Number 2:&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Result:"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add it up" />
        

        </div>
    </form>
</body>
</html>
