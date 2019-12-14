<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Project.MainPage" MasterPageFile="~/Site1.Master" %>




<asp:Content  runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="row">
        <div class="col-4">

        </div>
        <div class="col-8">
            <script type="text/javascript" src="phaser.min.js"></script>
	        <script type="text/javascript" src="TitleScreen.js"></script>
	        <script type="text/javascript" src="StartScreen.js"></script>
	        <script type="text/javascript" src="Scene1.js">var score = 0;var speed = 0.5;var round = 1;</script>
            <script type="text/javascript" src="EndScreen.js"></script>        
	        <script type="text/javascript" src="game.js"></script>
        </div>
        <div class="col-4">

        </div>
    </div>
    

</asp:Content>
