<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="Lab2.Page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page 2</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body class="Background">
    <form id="form1" runat="server">
        <hgroup>
			<h1 id="Header">HOW DID YOU GET HERE</h1>
        </hgroup>
        <div>
            
            <asp:Button ID="Start" runat="server" CssClass="Buttons" Text="Start!!" OnClick="GameStart" />
		</div>
		
    </form>

</body>

</html>
