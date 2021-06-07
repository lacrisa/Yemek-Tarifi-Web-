<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifleri.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style13 {
            text-align: right;
        }
        .auto-style14 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            font-weight: bold;
        }
        .auto-style15 {
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
            <td class="auto-style13"><strong>Yemek Ad : </strong></td>
            <td>
                <asp:TextBox ID="tb_yemekad" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Yemek Malzeme : </strong></td>
            <td>
                <asp:TextBox ID="tb_yemekmalzeme" runat="server" CssClass="auto-style15" Height="68px" TextMode="MultiLine" Width="231px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Yemek Tarif : </strong></td>
            <td>
                <asp:TextBox ID="tb_yemektarif" runat="server" CssClass="auto-style15" Height="106px" TextMode="MultiLine" Width="229px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Resim : </strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Kategori : </strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="138px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="38px" Text="Güncelle" Width="92px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="28px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="166px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
