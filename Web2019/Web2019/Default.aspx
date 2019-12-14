<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web2019.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="main.css" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script>
        function changeInfo()
        {
            document.getElementById("evenMoreInfo").innerHTML = "I have been changed.";
        }
    </script>
</head>
<body onload="changeInfo();">
    <form id="form1" runat="server">
        <div>
            <h1 id="headerStuff">Really big text</h1>
            <span id="information" style="background-color:aqua">This is really interesting</span>
            <p></p>
            <span id="moreInfo" class="spanClass">This is more interesting</span>
             <p></p>
            <span id="evenMoreInfo" class="spanClass" onclick="changeInfo();">This is even more interesting</span>

             <p class="spanClass">Really fun stuff</p>
            <span id="lastInfo">last bit of interesting</span>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="159px" Width="414px" />
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFN" runat="server" BackColor="#99CCFF" BorderColor="Blue" CssClass="spanClass"></asp:TextBox>
        &nbsp;
            
        </p>
         
        <p>
            <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </p>



        <BotDetect:WebFormsCaptcha ID="ExampleCaptcha" runat="server" />
        
        
        
        
        
        <p>
             <BotDetect:CaptchaValidator ID="ExampleCaptchaValidator" runat="server"
          ControlToValidate="TextBox2" CaptchaControl="ExampleCaptcha"
          ErrorMessage="Retype the characters exactly as they appear in the picture"
          EnableClientScript="true" SetFocusOnError="true">
            Incorrect CAPTCHA code
        </BotDetect:CaptchaValidator>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="Login" />
        </p>
        <p>
    Choice 1: &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" GroupName="choices" />
    <p>
        &nbsp;</p>
       Choice 2: &nbsp;
    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="choices" />
    <p>
        &nbsp;</p>
       Choice 3: &nbsp;
    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="choices" />


            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
    
    
</body>
</html>
