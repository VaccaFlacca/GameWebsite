<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaderBoard.aspx.cs" Inherits="Project.LeaderBoard" MasterPageFile="~/Site1.Master" %>



<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <link rel="stylesheet" type="text/css" href="./StyleSheets/Sidebar-middle.css" />
    <link rel="stylesheet" type="text/css" href="./Content/bootstrap-grid.css"/>
    <link rel="stylesheet" type="text/css" href="./Content/bootstrap-grid.min.css" />
    <link rel="stylesheet" type="text/css" href="./Content/bootstrap-reboot.css"/>
    <link rel="stylesheet" type="text/css" href="./Content/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="./Content/bootstrap.min.css" />

    
    <div class="container" id="LeaderBoardtext" runat="server">
        <div class="row">
            <div class="col-4">
                
            </div>
            <div class="col-3">
                <asp:Button ID="DecRound" runat="server" Text="Order Rounds" OnClick="DecRound_Click" />
            </div>
            <div class="col-3">
                <asp:Button ID="DecKills" runat="server" Text="Order Kills" OnClick="DecKills_Click"/>
            </div>
            <div class="col-2">
                <asp:Button ID="DecScore" runat="server" Text="Order Score" OnClick="DecScore_Click" />
            </div>

        </div>
        
        <asp:Label ID="Things" runat="server"  />
    </div>

</asp:Content>