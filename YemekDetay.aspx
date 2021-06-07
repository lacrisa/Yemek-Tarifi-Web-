<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifleri.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: xx-large;
        }

        .auto-style10 {
            width: 100%;
        }

        .auto-style11 {
            font-size: x-small;
        }

        .auto-style12 {
            background-color: #FFFFCC;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
            text-align: right;
        }
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style9" ForeColor="#FFFF99" Text="Label"></asp:Label>

    <asp:DataList ID="DataList2" runat="server" Width="450px">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thick">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <div class="auto-style12">Yorum Paneli</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Ad Soyad : </strong></td>
                <td>
                    <asp:TextBox ID="tb_adsoyad" runat="server" Height="20px" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Mail : </strong></td>
                <td>
                    <asp:TextBox ID="tb_mail" runat="server" Height="20px" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Yorumunuz :</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="tb_yorum" runat="server" Height="60px" TextMode="MultiLine" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style16" Height="26px" OnClick="Button1_Click" Text="Gönder" Width="106px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
