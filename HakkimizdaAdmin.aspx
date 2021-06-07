<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifleri.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
        text-align: left;
    }
    .auto-style15 {
        margin-left: 40px;
    }
    .auto-style16 {
        border: 2px solid #777;
        border-radius: 10px;
        outline: none;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <table class="auto-style9">
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="34px" Text="+" Width="30px" style="font-weight: bold" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style14"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="36px" Text="-" Width="30px" style="font-weight: bold" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style14"><strong>Hakkımızda</strong> <strong>Güncelleme</strong></td>
            </tr>
        </table>
        <strong></strong>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style9">
            <tr>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" Height="201px" TextMode="MultiLine" Width="433px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Height="40px" Text="Güncelle" Width="94px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
