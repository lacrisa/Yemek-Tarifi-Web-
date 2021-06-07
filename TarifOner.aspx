<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifleri.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            font-style: italic;
            font-weight: bold;
            margin-left: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Ad : </strong></td>
            <td>
                <asp:TextBox ID="tb_tarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Malzemeler : </strong></td>
            <td>
                <asp:TextBox ID="tb_malzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Hazırlanış : </strong></td>
            <td>
                <asp:TextBox ID="tb_hazirlanis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Resim : </strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Öneren : </strong></td>
            <td>
                <asp:TextBox ID="tb_tarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Mail Adresi : </strong></td>
            <td>
                <asp:TextBox ID="tb_mailAdres" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong><em>
                <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" CssClass="fb8" Height="40px" Text="Gönder" Width="150px" OnClick="Button1_Click" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
