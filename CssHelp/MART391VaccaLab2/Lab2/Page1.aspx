<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="Lab2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
		Page 1
    </title>
	<link rel="stylesheet" type="text/css" href="main.css" /> 

</head>
<body>
    <form id="Thing1" runat="server">
        <hgroup>
			<h1 id="Header">Testing things make this huge</h1>
			<h2 >What size is this</h2>
		</hgroup>
		

			<span id="information" runat="server" style="background-color:red;font-size:2rem"> This is interesting</span><br />
			<span id="NewInfo" runat="server" onclick="changeInfo();" class="spanClass"> This is interesting</span><br />
			<span id="NewInfo2" runat="server" onclick="changeInfo();"> This is interesting</span><br />
			<span id="NewInfo3" runat="server" onclick="changeInfo();">This is interesting</span><br />

			<b>Please </b><br />

		</div>
		<div id="page">
			
			<asp:TextBox ID="TxtName" runat="server" Placeholder="Enter Name" style="display: inline; text-align: center;" Width="244px"></asp:TextBox><br />
            <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*required" ControlToValidate="TxtName"></asp:RequiredFieldValidator> --%>
		</div>
	
	<script>
		function changeInfo() {
			document.getElementById("information").innerHTML = "Found the secret";
			
        }
    </script>
     <script>
        function changeInfo1() {
            document.getElementById("NewInfo").innerHTML = "Found the secret";

        }
    </script>
    <script>
        function changeInfo2() {
            document.getElementById("NewInfo3").innerHTML = "Found the secret";

        }
	</script>
        <%-- <script>
        window.alert("HEllo");
    </script>
     --%>
		<div>
			<p class="spanClass"> Las Last thing</p>

			<asp:Button ID="btnSomething" runat="server"  Text="Slap Me!!" OnClick="btnSomething_Click" /><br />

			<asp:Label ID="lblMessage" runat="server"></asp:Label><br />

			<asp:Button ID="donttouch" runat="server" Text="Dont touch?" OnClick="NewPage_Click" BackColor="#CC0000" BorderColor="#0000CC" BorderWidth="4px" ForeColor="Black" />
        </div>
    </form>
	
	</body>
</html>