<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifleri.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            border: 2px solid #456879;
            border-radius: 10px;
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
            <td class="auto-style13"><strong>Mesaj Gönderen : </strong></td>
            <td>
                <asp:TextBox ID="tb_mesajgonderen" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Başlık : </strong></td>
            <td>
                <asp:TextBox ID="tb_baslik" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Mail Adresi : </strong></td>
            <td>
                <asp:TextBox ID="tb_mail" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Mesaj İçerik : </strong></td>
            <td>
                <asp:TextBox ID="tb_icerik" runat="server" CssClass="auto-style14" Height="95px" TextMode="MultiLine" Width="231px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
