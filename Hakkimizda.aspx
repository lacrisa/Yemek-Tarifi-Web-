<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifleri.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            color: #FFFF99;
        }
        .auto-style11 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <span class="auto-style10">
        <strong><span class="auto-style11">Hakkımızda<br />
        </span></strong></span><asp:DataList ID="DataList3" runat="server" Width="447px">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
    <asp:Image ID="Image1" runat="server" Height="208px" ImageUrl="~/resimler/team.jpg" Width="450px" />
</asp:Content>
