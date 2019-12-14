<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminStuff.aspx.cs" Inherits="Project.AdminStuff" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-4">
            Enter The Rounds
            <br />
            <asp:TextBox ID="RoundStats" runat="server" placeholder="Enter Rounds" />
            <asp:RequiredFieldValidator ID="RoundValidator" runat="server" ErrorMessage="Please Enter Round Number" ControlToValidate="RoundStats" Style="color:red"/>
        </div>
        <div class="col-4">
            Enter The Kills
            <br />
            <asp:TextBox ID="Kills" runat="server" placeholder="Enter Kills" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Kills" ControlToValidate="Kills" Style="color:red"/>
        </div>
        <div class="col-4">
            Enter the Score
            <br />
            <asp:TextBox ID="Score" runat="server" placeholder="Enter Score"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Score" ControlToValidate="Score" Style="color:red"/>
        </div>
    </div>
    <div class="row">
        <div class="col-4">

        </div>
        <div class="col-4">

        </div>
        <div class="col-4">
            <asp:Button runat="server" OnClick="GameSub_Click" Text="Submit" />
        </div>
    </div>

</asp:Content>
