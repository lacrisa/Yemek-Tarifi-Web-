<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifleri.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            font-size: large;
            width: 319px;
            text-align: right;
        }
        .auto-style15 {
            font-size: large;
            width: 324px;
            text-align: right;
        }
        .auto-style17 {
            font-size: large;
            width: 324px;
            height: 30px;
            text-align: right;
        }
        .auto-style18 {
            width: 243px;
            height: 30px;
        }
        .auto-style19 {
            font-size: x-large;
            width: 444px;
        }
        .auto-style20 {
            width: 243px;
        }
        .auto-style21 {
            height: 31px;
            text-align: right;
            font-size: large;
        }
        .auto-style22 {
            width: 243px;
            height: 31px;
        }
        .auto-style25 {
            text-align: right;
            font-size: large;
        }
        .auto-style24 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style19">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17"><strong>Tarif Ad : </strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="tb_ad" runat="server" Height="20px" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Tarif Malzeme : </strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="tb_malzeme" runat="server" Height="20px" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Yapılış :</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="tb_yapilis" runat="server" Height="60px" TextMode="MultiLine" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>&nbsp;Tarif Resim:</strong></td>
                <td class="auto-style22">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="177px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Tarif Öneren :</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="tb_oneren" runat="server" Height="20px" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Öneren Mail :</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="tb_mail" runat="server" Height="20px" Width="172px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Kategori :</strong></td>
                <td class="auto-style20">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="137px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style24" Height="34px" OnClick="Button1_Click" Text="Onayla" Width="110px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
