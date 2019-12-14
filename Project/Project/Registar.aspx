<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registar.aspx.cs" Inherits="Project.Registar" MasterPageFile="~/Site1.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
        <div class="container">
            <h5 class="test-muted">Register: * required</h5>

            <div class="row">
                <div class="col-4">
                     Enter UserName* <br/>
                    <asp:TextBox runat="server" ID="UserName" />
                    <asp:RequiredFieldValidator ID="UserNameValidator" runat="server" ErrorMessage="Please Enter User Name" ControlToValidate="UserName" Style="color:red"/>
                </div>
                <div class="col-4">
                    Email <br />
                    <asp:TextBox runat="server" ID="EmailBox" />
                    
                    
                </div>
                <div class="col-4">

                </div>
                </div>
                <div class="row">
                    <div class="col-4">
                        Enter Password* <br />
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                        <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="Password" Style="color:red" />
                    </div>
                    <div class="col-4">
                        
                        
                        <asp:Label Style="color:red" ID="Password_error" runat="server" />
                    </div>
                    <div class="col-4">
                        <br />
                        <asp:Button runat="server" ID="submit" Text="submit" OnClick="submit_Click" />
                    </div>
                </div>
         </div>

</asp:Content>