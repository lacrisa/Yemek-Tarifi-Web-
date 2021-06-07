<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifleri.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            height: 23px;
        }
        .auto-style14 {
            height: 23px;
            text-align: right;
        }
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
        .auto-style17 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style9">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Ad Soyad : </strong></td>
            <td>
                <asp:TextBox ID="tb_adsoyad" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>Mail Adresi : </strong></td>
            <td>
                <asp:TextBox ID="tb_mail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"><strong>İçerik : </strong></td>
            <td>
                <asp:TextBox ID="tb_icerik" runat="server" CssClass="auto-style16" Height="68px" TextMode="MultiLine" Width="229px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yemek : </strong></td>
            <td class="auto-style13">
                <asp:TextBox ID="tb_yemek" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style13"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="35px" OnClick="Button1_Click" Text="Onayla" Width="113px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
