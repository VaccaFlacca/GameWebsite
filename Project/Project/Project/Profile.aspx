<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Project.Profile" MasterPageFile="~/Site1.Master" %>


<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="container-fluid">
        <div class="row">
            <div class="col-6">
                <asp:Label ID="UserNametext" runat="server" Text="User Name:"/>
            </div>
            <div class="col-6">
                <asp:Label ID="UserName" runat="server"/>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <asp:Label ID="EmailText" runat="server" Text="Email:"/>
            </div>
            <div class="col-6">
                <asp:Label ID="Email" runat="server"/>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <asp:Label ID="FirstNameText" runat="server" Text="First Name:"/>
            </div>
            <div class="col-6">
                <asp:Label ID="FirstName" runat="server"/>
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <asp:Label ID="LastNameText" runat="server" Text="Last Name:"/>
            </div>
            <div class="col-6">
                <asp:Label ID="LastName" runat="server"/>
            </div>
        </div>
        <div class="row">
            <div class="8">

            </div>
            <div class="4">
                <asp:Button ID="ProfileEdit" runat="server" OnClick="ProfileEdit_Click" Text="Edit Profile" />
            </div>
        </div>
    </div>
</asp:Content>
