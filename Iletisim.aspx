<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifleri.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 100%;
    }
    .auto-style10 {
        font-weight: bold;
    }
    .auto-style11 {
        text-align: right;
    }
    .auto-style12 {
        font-size: x-large;
        color: #FFFF99;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
    <tr>
        <td class="auto-style12" colspan="2"><strong>Mesaj Paneli</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">Ad Soyad : </td>
        <td>
            <asp:TextBox ID="tb_adsoyad" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Konu : </td>
        <td>
            <asp:TextBox ID="tb_konu" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Mail Adresi : </td>
        <td>
            <asp:TextBox ID="tb_mail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Mesaj : </td>
        <td>
            <asp:TextBox ID="tb_mesaj" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="fb8" Text="Gönder" Width="150px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>
