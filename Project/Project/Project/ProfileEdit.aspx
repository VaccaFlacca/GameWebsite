<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileEdit.aspx.cs" Inherits="Project.ProfileEdit" MasterPageFile="~/Site1.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container-fluid">
        <div class="row">
            <div class="col-6">
                <asp:Label ID="UserNametext" runat="server" Text="User Name:"/>
            </div>
            <div class="col-6">
                <asp:TextBox ID="UserName" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <asp:Label ID="EmailText" runat="server" Text="Email:"/>
            </div>
            <div class="col-6">
                <asp:TextBox ID="Email" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <asp:Label ID="FirstNameText" runat="server" Text="First Name:"/>
            </div>
            <div class="col-6">
                <asp:TextBox ID="FirstName" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <asp:Label ID="LastNameText" runat="server" Text="Last Name:"/>
            </div>
            <div class="col-6">
                <asp:TextBox ID="LastName" runat="server" />
            </div>
        </div>
        <div class="row">
            <div class="col-8">

            </div>
            <div class="col-4">
                <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
            </div>
        </div>
    </div>
</asp:Content>
